
// DOCUMENT READY
$(()=>{


// AIP TESTER: call the api for data 
   // query({
   //    type:'flowers_by_user_id',
   //    params:[4]
   // }).then(d=>{
   //    console.log(d)
   // })

	checkUserId();
  // Event Delegation
  $(document)



   .on("pagecontainerbeforeshow",function(event, ui){
    // Page Routing
      // console.log(ui.toPage[0].id);
      switch(ui.toPage[0].id) {
         case "page-map": MapPage(); break;
         case "page-list": ListPage(); break;
         case "page-user-profile": UserProfilePage(); break;
         case "page-flower-profile": FlowerProfilePage(); break;
      }
   })


  //FORM SUBMITS
  .on("submit","#signin-form",function(e) {
  e.preventDefault();
  checkSigninForm();
  })


  // ANCHOR CLICKS
  .on("click",".js-logout",function(e) {
   
    sessionStorage.removeItem("userId");
    checkUserId();
  })

   .on("click",".flower-jump",function(e) {
      if(!$(this).data("id")) throw("No ID on element");
      sessionStorage.flowerId = $(this).data("id");
      $.mobile.navigate("#page-flower-profile");
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
    console.log(scroll);
    if (scroll > 127) {
      $(".floating-header").css("background" , "rgb(2 32 60 / 90%)");
    }
    else{
      $(".floating-header").css("background" , "rgb(2 32 60 / 59%)"); 
      console.log(scroll);  
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