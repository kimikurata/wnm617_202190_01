
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


.on("click", "#open-new-category", function(){
  $("#existing-category").hide();
  $("#new-category").show();
})
.on("click", "#open-existing-category", function(){
  $("#existing-category").show();
  $("#new-category").hide();

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
  
});