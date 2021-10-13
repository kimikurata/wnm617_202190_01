
// DOCUMENT READY
$(()=>{



  // CHECK DEVICE WIDH
  var deviceWidth = (window.innerWidth > 0) ? window.innerWidth : screen.width;
  console.log(deviceWidth);
  
  if (deviceWidth%2 == 0) {
    $(".spacer-container").addClass("spacer-even-width");
    console.log("even width");
  }else{
    $(".spacer-container").addClass("spacer-odd-width");
    console.log("odd width");

  }



	checkUserId();
   // Event Delegation
   $(document)

   //FORM SUBMITS
   .on("submit","#signin-form",function(e) {
    e.preventDefault();
    checkSigninForm();
  })

   // ANCHOR CLICKS
   .on("click",".js-logout",function(e) {
    e.preventDefault();
    sessionStorage.removeItem("userId");
    checkUserId();
  })





   .on("click","[data-activate]",function(e){
    e.preventDefault();
    let target = $(this).data("activate");
    $(target).addClass("active");
  })
   .on("click","[data-deactivate]",function(e){
    e.preventDefault();
    let target = $(this).data("deactivate");
    $(target).removeClass("active");
  })
   .on("click","[data-toggle]",function(e){
    e.preventDefault();
    let target = $(this).data("toggle");
    $(target).toggleClass("active");
  })
 });