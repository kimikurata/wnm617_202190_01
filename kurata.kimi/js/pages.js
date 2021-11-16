const resultQuery = async (options) => {
   // destructure
   let {result,error} = await query(options);
   if(error) {
      throw(error);
      return;
   }
   return result;
}

const ListPage = async() => {
   let result = await resultQuery({
         type:'flowers_by_user_id',
         params:[sessionStorage.userId]
   });

   $("#page-list .flowerlist").html(makeFlowerList(result));
}


const MapPage = async() => {

   let result = await resultQuery({
      type:'recent_flower_locations',
      params:[sessionStorage.userId]
   });

   let flowers = result.reduce((r,o)=>{
      o.icon = o.photo;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

 

   let mapEl = await makeMap("#page-map .map");
   makeMarkers(mapEl,result);
}


const UserProfilePage = async() => {
   let result = await resultQuery({
         type:'user_by_id',
         params:[sessionStorage.userId]});

   let [user] = result;
   $("#page-user-profile [data-role='main']").html(makeUserProfile(user));   
}


const FlowerProfilePage = async() => {
   let flower_result = await resultQuery({
         type:'flower_by_id',
         params:[sessionStorage.flowerId]
      });
  

   let [flower] = flower_result;
   $(".flower-image-container img").attr("src",flower.img);


   let location_result = await resultQuery({
         type:'locations_by_flower_id',
         params:[sessionStorage.flowerId]
      });

   let mapEl = await makeMap("#page-flower-profile .map");
   makeMarkers(mapEl,location_result);



   $(".flower-profile-name").text(flower.name);
   $(".flower-data-type").text(flower.type);
   $(".flower-data-size").text(flower.size);
}






