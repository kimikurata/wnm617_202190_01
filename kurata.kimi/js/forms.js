const flowerAddForm = async () => {


   let name = $("#flower-add-name").val();
   let type = $("#flower-add-type").val();
   let color = $("#flower-add-color").val();
   let size = $("#flower-add-size").val();
   let imgFlowerColors = ["FFD391", "F09B9B", "E69B8C", "AEBCB9"]
      let chosenFlowerBgcolor =  imgFlowerColors[Math.floor(Math.random()* imgFlowerColors.length)];
   let img = "https://via.placeholder.com/400/" + chosenFlowerBgcolor + "/fff/?text=" + name;

   // console.log(name,type,color,size,img);

   let r = await query({
      type:'insert_flower',
      params:[sessionStorage.userId,name,type,color,size,img]
   });

   if(r.error) throw(r.error);

   sessionStorage.flowerId = r.id;
   if(sessionStorage.navPage === 'newcategory'){
      let select =  $("#location-flower-chioce").val(r.id);
      $.mobile.navigate("#page-set-location");
      $('#location-navigateback').val(-3);
   }else{
      $.mobile.navigate("#page-list");

   } 
}



const flowerEditForm = async () => {
   let name = $("#flower-edit-name").val();
   let type = $("#flower-edit-type").val();
   let color = $("#flower-edit-color").val();
   let size = $("#flower-edit-size").val();

   let r = await query({
      type:'update_flower',
      params:[name,type,color,size,sessionStorage.flowerId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
}


const checkSignup = async () => {
   let username = $("#sign-up-username").val();
   let email = $("#sign-up-email").val();
   let password = $("#sign-up-password").val();


// CHECK IF THE PASSWORD IS CORRECT
//    // let confirm = $("#user-add-password2").val();
//    // if(password!=confirm)
//    //    throw("Passwords don't match: You should handle this in some way.");


   let r = await query({
      type:'insert_user',
      params:[username,email,password]
   });
   if(r.error) throw(r.error);

   sessionStorage.userId = r.id;

   $.mobile.navigate("#page-signup-extrainfo");

}

const checkSignup2 = async () => {
   let name = $("#sign-up-name").val();
   let image = $("#signup-image-filename").val();

   let r = await query({
      type:'insert_user_onboard',
      params:[name,image,sessionStorage.userId]
   });
   if(r.error) throw(r.error);
   $.mobile.navigate("#page-list");
}


const userEditForm = async () => {
   let username = $("#user-edit-username").val();
   let name = $("#user-edit-name").val();
   let email = $("#user-edit-email").val();

   let r = await query({
      type:'update_user',
      params:[username,name,email,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
}



const userEditPasswordForm = async () => {
   let password = $("#user-password-initial").val();
   let confirm = $("#user-password-confirm").val();

   if(password!==confirm) throw ("Passwords don't match")

   let r = await query({
      type:'update_user_password',
      params:[password,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
}




const locationAddForm = async () => {

   let flower = $("#location-flower-chioce").val();
   let lat = $("#location-lat").val();
   let lng = $("#location-lng").val();
   let photoLocationColors = ["A8C6F8", "AA92E0", "CFF2F6", "798BD7"]
      let chosenLocationBgcolor =  photoLocationColors[Math.floor(Math.random()* photoLocationColors.length)];
   let photo = "https://via.placeholder.com/400/" + chosenLocationBgcolor + "/fff/?text=img";
   
   // console.log(" id "+ flower +" lat " + lat + "lng " + lng + "chosen color " + photo );

   if (lat.length === 0 || lng.length === 0){
      $("#set-location-direction").css("color", "var(--color-warning-red)");

      $("#set-location-direction").addClass('shaker');
      console.log("no lat, lng");

   }else{
      $( "#save-new-location" ).removeClass( "disable" );

      let r = await query({
         type:'insert_location',
         params:[flower,lat,lng,photo]
      });
      if(r.error) throw(r.error);
      history.go($("#location-navigateback").val());
   };
}


const checkSearchForm = async (s) => {
   // console.log(s);
   let flowers = await query({
      type:'search_flowers',
      params:[s,sessionStorage.userId]
   });

   if(flowers.error) throw(flowers.error);

   makeFlowerListSet(flowers.result);
}

const checkMapSearchForm = async (s) => {
   let flowers = await query({
      type:'search_recent_flowers',
      params:[s,sessionStorage.userId]
   });

   if(flowers.error) throw(flowers.error);

   console.log("serach map result is below");
   console.log(flowers);
   makeRecentMarkers(flowers.result);

   if(flowers.result.length === 0) {
      $("#no-results-note").addClass("active");
   }
   else {
      $("#no-results-note").removeClass("active");
   }
}


const checkFilter = async (f,v) => {
   let flowers = await query({
      type:'filter_flowers',
      params:[f,v,sessionStorage.userId]
   });

   if(flowers.error) throw(flowers.error);

   makeFlowerListSet(flowers.result);
}


