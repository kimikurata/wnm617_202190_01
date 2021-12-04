<?php

function makeConn() {
   include "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
      return $conn;
   } catch(PDOException $e) {
      die('{"error":"'.$e->getMessage().'"}');
   }
}


/* $r = PDO result */
function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
   return $a;
}

/*
$c = connection
$ps = prepared statement
$p = parameters
*/
function makeQuery($c,$ps,$p,$makeResults=true) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = $makeResults ? fetchAll($stmt) : [];

      return [
         // "statement"=>$ps,
         // "params"=>$p,
         "result"=>$r
      ];
   } catch(PDOException $e) {
      return ["error"=>"Query Failed: ".$e->getMessage()];
   }
}


function makeUpload($file,$folder) {
   $filename = microtime(true) . "_" . $_FILES[$file]['name'];

   if(@move_uploaded_file(
      $_FILES[$file]['tmp_name'],
      $folder.$filename
   )) return ['result'=>$filename];
   else return [
      "error"=>"File Upload Failed",
      "_FILES"=>$_FILES,
      "filename"=>$filename
   ];
}



function makeStatement($data) {
   try{
      $c = makeConn();
      $t = @$data->type;
      $p = @$data->params;

      switch($t) {

         // case "users_all":
         //    return makeQuery($c,"SELECT * FROM `track_users`",[]);
         // case "flowers_all":
         //    return makeQuery($c,"SELECT * FROM `track_flowers`",[]);
         // case "locations_all":
         //    return makeQuery($c,"SELECT * FROM `track_locations`",[]);


         case "user_by_id":
            return makeQuery($c,"SELECT id,username,name,email,img,YEAR(date_create) AS  date_create FROM `track_users` WHERE `id`=?",$p);
         case "flower_by_id":
            return makeQuery($c,"SELECT * FROM `track_flowers` WHERE `id`=?",$p);
         case "location_by_id":
            return makeQuery($c,"SELECT *  FROM `track_locations` WHERE `id`=?",$p);


         case "flowers_by_user_id":
            return makeQuery($c,"SELECT * FROM `track_flowers` WHERE `user_id`=?",$p);
         case "locations_by_flower_id":
            return makeQuery($c,"SELECT id,flower_id,lat,lng,photo,icon,DATE_FORMAT(date_create,'%c/%e/%Y') AS  date_create FROM `track_locations` WHERE `flower_id`=?",$p);

         case "check_signin":
            return makeQuery($c,"SELECT id FROM `track_users` WHERE `username`=? AND `password`=md5(?)",$p);


         case "recent_flower_locations":
            return makeQuery($c,"SELECT *
               FROM `track_flowers` a
               JOIN (
                  SELECT lg.*
                  FROM `track_locations` lg
                  WHERE lg.id = (
                     SELECT lt.id
                     FROM `track_locations` lt
                     WHERE lt.flower_id = lg.flower_id
                     ORDER BY lt.date_create DESC
                     LIMIT 1
                  )
               ) l
               ON a.id = l.flower_id
               WHERE a.user_id = ?
               ORDER BY l.flower_id, l.date_create DESC
               ",$p);


            case "all_flower_locations":
               return makeQuery($c,"SELECT *
                  FROM `track_flowers` a
                  JOIN `track_locations` l
                  ON a.id = l.flower_id
                  WHERE user_id = ?
                  ",$p);

            case "all_flower_colors":
               return makeQuery($c,"SELECT DISTINCT color 
                  FROM `track_flowers`
                  WHERE `user_id`=?
                  ",$p);


            case "search_flowers":
               $p = ["%$p[0]%",$p[1]];
               return makeQuery($c,"SELECT *
                  FROM `track_flowers`
                  WHERE
                     `name` LIKE ? AND
                     `user_id` = ?
                  ",$p);

            case "search_recent_flowers":
               return makeQuery($c,"SELECT *
                  FROM `track_flowers` a
                  JOIN (
                     SELECT lg.*
                     FROM `track_locations` lg
                     WHERE lg.id = (
                        SELECT lt.id
                        FROM `track_locations` lt
                        WHERE lt.flower_id = lg.flower_id
                        ORDER BY lt.date_create DESC
                        LIMIT 1
                     )
                  ) l
                  ON a.id = l.flower_id
                  WHERE 
                     a.name LIKE ? AND  
                     a.user_id = ?
                  ORDER BY l.flower_id, l.date_create DESC
                  ",$p);



            case "filter_flowers":
            return makeQuery($c,"SELECT *
               FROM `track_flowers`
               WHERE
                  `$p[0]` = ? AND
                  `user_id` = ?
               ",[$p[1],$p[2]]);



         /* CREATE */ 
         case "insert_user":
            $r = makeQuery($c,"SELECT id FROM `track_users` WHERE `username`=? OR `email` = ?",$p);
            if(count($r['result'])) return ["error"=>"Username or Email already exists"];

            $r = makeQuery($c,"INSERT INTO
               `track_users`
               (`username`, `email`, `password`, `img`, `date_create`)
               VALUES
               (?, ?, md5(?), 'http://via.placeholder.com/400/?text=USER', NOW())
               ",$p,false);
            return ["id" => $c->lastInsertId()];


         case "insert_flower":
            $r = makeQuery($c,"INSERT INTO
               `track_flowers`
               (`user_id`, `name`, `type`, `color`, `size`, `img`, `date_create`)
               VALUES
               (?,?,?,?,?,?, Now())
               ",$p, false);
            return["id" => $c->lastInsertId()];


         case "insert_location":
            $r = makeQuery($c,"INSERT INTO
               `track_locations`
               (`flower_id`, `lat`, `lng`, `photo`, `icon`, `date_create` )
               VALUES
               (?,?,?,?, 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', NOW())
               ",$p, false);
            return["id" => $c->lastInsertId()];







            /* UDATE */
         case "update_user":
            $r = makeQuery($c,"UPDATE
               `track_users`
               SET
                  `username` = ?,
                  `name` = ?,
                  `email` = ?
               WHERE `id` = ?
               ",$p,false);
            return ["result" => "success"];

         case "update_user_password":
            $r = makeQuery($c,"UPDATE
               `track_users`
               SET
                  `password` = md5(?)
               WHERE `id` = ?
               ",$p,false);
            return ["result" => "success"];


         case "update_flower":
            $r = makeQuery($c,"UPDATE
               `track_flowers`
               SET
                  `name` = ?,
                  `type` = ?,
                  `color` = ?,
                  `size` = ?
               WHERE `id` = ?
               ",$p,false);
            return ["result" => "success"];

         case "update_user_image":
            $r = makeQuery($c,"UPDATE
               `track_users`
               SET `img` = ?
               WHERE `id` = ?
               ",$p,false);
            return ["result" => "success"];

         case "update_flower_image":
            $r = makeQuery($c,"UPDATE
               `track_flowers`
               SET `img` = ?
               WHERE `id` = ?
               ",$p,false);
            return ["result" => "success"];

         // case "update_location":
         //    $r = makeQuery($c,"UPDATE
         //       `track_locations`
         //       SET
         //          `description` = ?
         //       WHERE `id` = ?
         //       ",$p,false);
         //    return ["result" => "success"];


         /* DELETE */
         case "delete_flower":
            $r = makeQuery($c,"DELETE FROM `track_flowers` WHERE `id` = ?",$p,false);
            return ["result" => "success"];

         case "delete_location":
            $r = makeQuery($c,"DELETE FROM `track_locations` WHERE `id` = ?",$p,false);
            return ["result" => "success"];


         default: return ["error"=>"No Matched Type"];
      }
   } catch(Exception $e) {
      return ["error"=>"Bad Data"];
   }
}


if(!empty($_FILES)) {
   $r = makeUpload("image","../uploads/");
   die(json_encode($r));
}

$data = json_decode(file_get_contents("php://input"));

die(
   json_encode(
      makeStatement($data),
      JSON_NUMERIC_CHECK
   )
);