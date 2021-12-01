
const flowerAddForm = async () => {
   let name = $("#flower-add-name").val();
   let type = $("#flower-add-type").val();
   let color = $("#flower-add-color").val();
   let size = $("#flower-add-size").val();
   console.log(name,type,color,size)

      let r = await query({
      type:'insert_flower',
      params:[sessionStorage.userId,name,type,color,size]
   });

   if(r.error) throw(r.error);

   sessionStorage.flowerId = r.id;
   history.go(-1);
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



const userAddForm = async () => {
   let name = $("#user-add-name").val();
   let email = $("#user-add-email").val();
   let password = $("#user-add-password").val();

   let r = await query({
      type:'inser_user',
      params:[name,email,password,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
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
 


   console.log(" id "+ flower +" lat " + lat + "lng" + lng );
   let r = await query({
      type:'insert_location',
      params:[flower,lat,lng]
   });

   if(r.error) throw(r.error);
   history.go($("#location-navigateback").val());
}