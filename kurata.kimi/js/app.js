
// DOCUMENT READY
$(()=>{


// AIP TESTER: call the api for data 
  // query({
  //   type:'user_by_id',
  //   params:[6]

  // }).then(d=>{
  //     console.log(d);
  //  });
  $("#new-category").hide();

  checkUserId();
  // Event Delegation
  $(document)
  // $("#new-category").hide();




  .on("pagecontainerbeforeshow",function(event, ui){
    // Page Routing
      // console.log(ui.toPage[0].id);
      switch(ui.toPage[0].id) {
       case "page-map": MapPage(); break;
       case "page-list": ListPage(); break;
       case "page-user-profile": UserProfilePage(); break;
       case "page-flower-profile": FlowerProfilePage(); break;
       case "page-edit-flower": FlowerEditPage();break;
       case "page-edit-user": UserEditPage();break;
       case "page-set-location": AddLocationPage();break;
       case "page-set-info": AddFlowerInfo();break;
       case "page-edit-password": ChangePasswordPage();break;
       case "page-set-category": SetCategoryPage();break;

     }
   })


  //FORM SUBMITS
  .on("submit","#signin-form",function(e) {
    e.preventDefault();
    checkSigninForm();  
  })
  .on("submit","#list-add-form",function(e) {
    e.preventDefault();
  })

  .on("submit", "#flower-add-form", function(e) {
    e.preventDefault();
    flowerAddForm();
  })

  .on("submit", "#flower-edit-form", function(e) {
    e.preventDefault();
    flowerEditForm();
  })

  .on("submit", "#user-edit-form", function(e) {
    e.preventDefault();
    userEditForm();
  })

  .on("submit", "#user-edit-password-form", function(e) {
    e.preventDefault();
    userEditPasswordForm();
  })

  .on("submit", "#list-search-form", function(e) {
    e.preventDefault();
    let s = $(this).find("input").val();
    // console.log(s);
    checkSearchForm(s);
  })

  .on("submit", "#map-search-form", function(e) {
    e.preventDefault();
    let s = $(this).find("input").val();
    console.log(s);
    checkMapSearchForm(s);
  })

 

  .on("submit", "#sign-up-form", function(e) {
    e.preventDefault();
    checkSignup();
  })

   .on("submit", "#signup-extrainfo-form", function(e) {
    e.preventDefault();
    checkSignup2();
  })

  $(document).on('click', '.ui-input-clear', function () {
  alert('text cleared');
})



// FORM ANCHOR CLICKS -> USE THIS METHOD TO SUBMIT A FORM FORM A BUTTON OUTSIDE THE FORM ELEMENT,  add js-submituseredit to the button as a clas, delete any href="#" or data-rel="back" from the button or anchor 
 // EXAMPLE: 
    // .on("click",".js-submituseredit",function(e) {
    //   e.preventDefault();
    //   userEditForm(); // call the form function
    // })

    .on("click",".js-submitlocationform",function(e){
      e.preventDefault();
      locationAddForm();
    })


  .on("click",".js-reset-add-location-page",function(e){
    $("#location-lat").removeAttr('value');
    $("#location-lng").removeAttr('value');
    $("#set-location-direction").css("color", "var(--color-neutral-dark)");
    $( "#save-new-location" ).addClass( "disable" );
  })
  .on("click",".js-set-navpage-newcategory",function(){
   sessionStorage.navPage = 'newcategory'
  })
  .on("click",".js-set-navpage-existingcat",function(){
   sessionStorage.navPage = 'existingcategory'
  })


// FILTER LIST
   .on("click","[data-filter]",function(e){
      let {filter,value} = $(this).data();
      if(value=="") ListPage();
      else checkFilter(filter,value);
   })


// UPLOAD IMAGES
  // signup image upload
  .on("change","#user-newimagepicker-label input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d);
         $("#signup-image-filename").val("uploads/"+d.result);
         $(".signup-user-img-container").css({
            "background-image":`url(uploads/${d.result})`
          });
      })
   })

  // user image edit
  .on("change","#user-imagepicker-label input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d);
         $("#user-upload-filename").val("uploads/"+d.result);
         $("#user-image-to-replace").css({
            "background-image":`url(uploads/${d.result})`
         });
      })
   })
  .on("click",".js-submituserupload",function(e) {
      let images = $("#user-upload-filename").val();
      let image = (images.length === 0)? $("#user-display-img").attr('src'): images;

      query({
         type:"update_user_image",
         params: [image,sessionStorage.userId]
      }).then(d=>{

        if(d.error) throw(d.error);

        history.go(0);
      })
  })



   // flower image edit
  .on("change","#flower-imagepicker-label input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d);
         $("#flower-upload-filename").val("uploads/"+d.result);
         $("#flower-image-to-replace").css({
            "background-image":`url(uploads/${d.result})`
         });
      })
   })
  .on("click",".js-submitflowerupload",function(e) {
      let images = $("#flower-upload-filename").val();
      let image = (images.length === 0)? $("#flower-profile-img").attr('src'): images;

      query({
         type:"update_flower_image",

         params: [image,sessionStorage.flowerId]
      }).then(d=>{
         if(d.error) throw(d.error);

         history.go(0);
      })
   })


  // locaton image edit
  .on("change","#location-imagepicker-label input",function(e){
    checkUpload(this.files[0])
    .then(d=>{
       console.log(d);
       $("#location-image-filename").val("uploads/"+d.result);
       $("#location-image-to-replace").css({
          "background-image":`url(uploads/${d.result})`
       });
    })
 })

  .on("click",".js-submitlocationupload",function(e) {
      let images = $("#location-image-filename").val();
      let image = (images.length === 0)? $("#location-popup-image").attr('src'): images;

      query({
         type:"update_location_image",

         params: [image,sessionStorage.locationId]

      }).then(d=>{
         if(d.error) throw(d.error); 
         history.go(0);
      })
   })




  




// ADD LOCATION CATEGORY

.on("click", "#open-new-category", function(){
  $("#existing-category").hide();
  $("#new-category").show();
})
.on("click", "#open-existing-category", function(){
  $("#existing-category").show();
  $("#new-category").hide();

})


// DETELE 

.on("click",".js-flower-delete",function(e){
  query({
     type:"delete_flower",
     params: [sessionStorage.flowerId]
  }).then(d=>{
     history.go(-2);
  })
})


.on("click",".js-location-delete",function(e){
  query({
     type:"delete_location",
     params: [sessionStorage.locationId]
  }).then(d=>{
     history.go(0);
  })
})



  // ANCHOR CLICKS
  .on("click",".js-logout",function(e) {
    e.preventDefault();
    sessionStorage.removeItem("userId");
    checkUserId();
  })

  .on("click",".flower-jump",function(e) {
    if(!$(this).data("id")) throw("No ID on element");
    sessionStorage.flowerId = $(this).data("id");
    $.mobile.navigate("#page-flower-profile");
  })

 


// NAVIGATION BACK
  .on("click","[data-setnavigateback]",function(e){
    $("#location-navigateback").val($(this).data("setnavigateback"))
  })
  .on("click",".js-navigate-back",function(e){
    window.history.go(+$("#location-navigateback").val());
  })

 .on("click", ".js-navigateback-one", function(e){
  history.go(-1);
 })

  .on("click", ".js-navigateback-two", function(e){
    history.go(-2);
   })



.on("click",".js-chooseflower",function(e){
    $("#location-flower-chioce").val(sessionStorage.flowerId);
  })


  .on("click","[data-activate]",function(e){

    let target = $(this).data("activate");
    $(target).addClass("active");
  })
  .on("click","[data-deactivate]",function(e){

    let target = $(this).data("deactivate");
    $(target).removeClass("active");
  })
  .on("click","[data-toggle]",function(e){

    let target = $(this).data("toggle");
    $(target).toggleClass("active");
  })




  $("[data-template]").each(function(){
    let target = $(this).data("template");
    $(this).html($(target).html());
  })



   // FLOWER ITEM TRANSPARENT NAVBAR
  // SOURSE: https://codepen.io/Abdel-fattah/pen/grXOak

  $("#flower-profile-main").scroll(function(){
    var scroll = $("#flower-profile-main").scrollTop();
    // console.log(scroll);
    if (scroll > 127) {
      $(".floating-header").css("background" , "rgb(2 32 60 / 90%)");
    }
    else{
      $(".floating-header").css("background" , "rgb(2 32 60 / 59%)"); 
      // console.log(scroll);  
    }
  })


  // CHECK DEVICE WIDTH
  var deviceWidth = (window.innerWidth > 0) ? window.innerWidth : screen.width;
  // console.log(deviceWidth);
  
  if (deviceWidth%2 == 0) {
    $(".spacer-container").addClass("spacer-even-width");
    $(".spacer-image").attr("src", "images/circle_spacer.svg");
    console.log("even screen");
  }else{
    $(".spacer-container").addClass("spacer-odd-width");
    $(".spacer-image").attr("src", "images/circle_spacer_even.svg");
    console.log("odd screen");
  }


  // ADD FORM LABLE ANIMATION
  $(document).on("focus", ".form-input-lined", function(e){
    $(this).prev().css("visibility", "visible");
    
 });
  $(document).on("focusout", ".form-input-lined", function(e){
    if( $(this).val().length === 0 ) {
        $(this).prev().css("visibility", "hidden");
    }
 });
    $(document).on("focus", ".form-input-lined", function(e){
    $(this).prev().css("visibility", "visible");

 });
  $(document).on("focusout", ".form-input-lined", function(e){
    if( $(this).val().length === 0 ) {
        $(this).prev().css("visibility", "hidden");
    }
 });
  

});