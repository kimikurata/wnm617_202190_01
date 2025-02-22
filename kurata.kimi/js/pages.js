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
   
      let flowers = await resultQuery({
         type:'flowers_by_user_id',
         params:[sessionStorage.userId]
   });

   let categories = await resultQuery({
         type:'filter_categories',
         params:[sessionStorage.userId]
   });

   let colors = await resultQuery({
         type:'filter_colors',
         params:[sessionStorage.userId]
   });

   let sizes = await resultQuery({
         type:'filter_sizes',
         params:[sessionStorage.userId]
   });
   
   // console.log(flowers.length);
  
   if(flowers.length === 0){
      makeEmptyFlowerListSet(flowers);
      // console.log("empty list");
   }else{
      makeFlowerListSet(flowers);
      // console.log("will be alist");

   }

   // makeFlowerListSet(flowers);

   // console.log("categories:");
   // console.log(categories);


}



const MapPage = async() => {

   let result = await resultQuery({
      type:'recent_flower_locations',
      params:[sessionStorage.userId]
   });

   // makeRecentMarkers(result);

   let flowers = result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

   let mapEl = await makeMap("#page-map .map");
   
   if (flowers.length === 0){
      $("#empty-map-message").addClass("active");
   }else{
      $("#empty-map-message").removeClass("active");
      makeMarkers(mapEl,flowers);

   }

   let {infoWindow,map,markers} = mapEl.data();
   markers.forEach((o,i)=>{
      o.addListener("click",function(){

         /* Simple Example */
         // sessionStorage.flowerId = flowers[i].flower_id;
         // $.mobile.navigate("#page-flower-profile")

         /* InfoWindow Example */
         // infoWindow.open(map,o);
         // infoWindow.setContent(makeFlowerPopup(flowers[i]))

         // /* Activate Example */
         $("#map-item-modal")
            .addClass("active")
            .find(".modal-body")
            .html(makeFlowerModal(flowers[i]))
      })
   });

}






const UserProfilePage = async() => {
   let flowers = await resultQuery({
      type:'flowers_by_user_id',
      params:[sessionStorage.userId]});
   let tflowers = flowers.length
   // console.log("total flowers are " + tflowers);

   let loctions = await resultQuery({
      type:'all_flower_locations',
      params:[sessionStorage.userId]
   });
   let tlocations = loctions.length;
   // console.log("total locations are " + tlocations);

   let colors = await resultQuery({
      type:'all_flower_colors',
      params:[sessionStorage.userId]});  
   let tcolors = colors.length;
   // console.log("total colors are " + tcolors);

   let result = await resultQuery({
         type:'user_by_id',
         params:[sessionStorage.userId]});

   let [user] = result;
   // $("#profile-image").html(makeUserProfileImage(user));
   $("#page-user-profile [data-role='main']").html(makeUserProfile(user, tflowers, tcolors, tlocations));
   $("#user-image-to-replace").css({
            "background-image":`url(${user.img})`
         });

}



const FlowerProfilePage = async() => {
   let flower_result = await resultQuery({
         type:'flower_by_id',
         params:[sessionStorage.flowerId]
      });
  
   let [flower] = flower_result;
   $("#flower-profile-img").attr("src",flower.img);

   let location_result = await resultQuery({
         type:'locations_by_flower_id',
         params:[sessionStorage.flowerId]
      });

   let mapEl = await makeMap("#page-flower-profile .map");
   makeIconMarkers(mapEl,location_result);

   console.log(location_result);

   let {infoWindow,map,markers} = mapEl.data();
   markers.forEach((o,i)=>{
      o.addListener("click",function(){

         /* Simple Example */
         // sessionStorage.flowerId = flowers[i].flower_id;
         // $.mobile.navigate("#page-flower-profile")

         /* InfoWindow Example */
         
         infoWindow.open(map,o);
         infoWindow.setContent(makeLocationPopup(location_result[i]));
         sessionStorage.locationId = location_result[i].id

         let modalImage = location_result[i].photo
         console.log(location_result[i].photo);
         $("#location-image-to-replace").css({"background-image":`url(${modalImage})`});


         // /* Activate Example */
         // $("#map-item-modal")
         //    .addClass("active")
         //    .find(".modal-body")
         //    .html(makeFlowerModal(flowers[i]))
      })
   });

   $(".flower-profile-name").text(flower.name);
   $(".flower-data-type").text(flower.type);
   $(".flower-data-color").text(flower.color);
   $(".flower-data-size").text(flower.size);
   $("#flower-image-to-replace").css({"background-image":`url(${flower.img})`});
}



const FlowerEditPage = async() => {
   let flower_result = await resultQuery({
         type:'flower_by_id',
         params:[sessionStorage.flowerId]
      });

   let [flower] = flower_result;

   // $(".flower-image-container img").attr("src",flower.img);

   // $("#flower-edit-name").val(flower.name);
   // $("#flower-edit-color").val(flower.color);
   // $("#flower-edit-size").val(flower.size);
   $("#edit-flower-input-container").html(makeEditFlowerInfoFromInputs(flower, "flower-edit"));

}



const UserEditPage = async() => {
   let result = await resultQuery({
         type:'user_by_id',
         params:[sessionStorage.userId]});

   let [user] = result;


   // $(".profile-image img").attr("src",user.img);

   // $("#user-edit-name").val(user.username);
   // $("#user-edit-email").val(user.email);
   $("#user-edit-input-box").html(makeEditUserFromInputs(user, "user-edit"));

}

const ChangePasswordPage = async() => {
   let result = await resultQuery({
         type:'user_by_id',
         params:[sessionStorage.userId]});
   let [user] = result;

   $("#change-password-inputs-box").html(makeChangePasswordFromInputs("user-password"));
}

const AddLocationPage = async() => {
   let mapEl = await makeMap("#page-set-location .map");
   makeMarkers(mapEl,[])

   mapEl.data("map").addListener("click",function(e){
      // console.log(e);
      $("#location-lat").val(e.latLng.lat());
      $("#location-lng").val(e.latLng.lng());
      makeMarkers(mapEl,[e.latLng]);
      $( "#save-new-location" ).removeClass( "disable" );
      $("#set-location-direction").css("color", "var(--color-neutral-dark)");
   })
}

const AddFlowerInfo = async() => {
   $("#add-flower-info-inputs-box").html(makeAddFlowerInfoFromInputs({
      name:'',
      type:'',
      color:'',
      size:'',
   }, "flower-add")) 
}




const SetCategoryPage = async() => {
   let result = await resultQuery({
         type:'flowers_by_user_id',
         params:[sessionStorage.userId]
   });


   $("#set-flower-select-box").html(
      makeFlowerChoiceSelect({
         flowers:result,
         name:"select-category", 
         // chosen: 0
      })
   );

   $("#save-category").click(function(){
    var selectedval = $("#select-category option:selected").val()
    $("#location-flower-chioce").val(selectedval);
    console.log("flower id is " + selectedval);
    // alert(selectedval);
   });
   $("#select-category").val(result[0].id);
}
