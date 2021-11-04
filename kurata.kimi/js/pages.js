
const ListPage = async() => {
   // destructure
   let {result,error} = await query({type:'flowers_by_user_id',params:[sessionStorage.userId]});

   if(error) {
      console.log(error);
      return;
   }
   console.log(result,error);
   $("#page-list .flowerlist").html(makeFlowerList(result));
}


const MapPage = async() => {
   console.log("honk")
}


const UserProfilePage = async() => {
   let {result,error} = await query({type:'user_by_id',params:[sessionStorage.userId]});
   if(error) {
      console.log(error);
      return;
   }
   let [user] = result;
   $("#page-user-profile [data-role='main']").html(makeUserProfile(user));   
}


const FlowerProfilePage = async() => {
   let {result,error} = await query({type:'flower_by_id',params:[sessionStorage.flowerId]});
   if(error) {
      console.log(error);
      return;
   }
   let [flower] = result;
   $(".flower-image-container img").attr("src",flower.img);
   $(".flower-profile-name").text(flower.name);
   $(".flower-data-type").text(flower.type);
   $(".flower-data-size").text(flower.size);
}