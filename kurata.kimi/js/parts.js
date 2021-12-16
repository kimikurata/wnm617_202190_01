const makeFlowerList = templater((o) => `
	<div class="flex-row-nowrap-between-center list-item-container flower-jump"  data-id="${o.id}">
		<div class="flex-row-nowrap-start-center">
			<div class="flower-list-image-container">
				<img class="image-cover flower-list-image" src="${o.img}" alt="image">
			</div>
			<div class="flower-list-item-info">
				<p class="flower-list-item-name">${o.name}</p>
				<p class="flower-list-item-category">${o.type} | ${o.color}</p>
			</div>
			
		</div>
		<div>
			<img class="icon icon-sm" src="images/icons/arrow-right.svg" alt="next">
		</div>
	</div>
	<hr style="border: 1px solid var(--color-white);">
`); 


const makeEmptyFlowerList =(o) =>
`
<p class="text-center text-gray">There are no flowers in the list.</p>
<div class="callout flowerlist">
   <p class="callout-text text-center">Tap "+" to add a flower</p>
   <b class="notch "></b>
</div>


`;


const makeUserProfile =(o, tflowers, tcolors, tlocations) => 
`
<div class="profile-content-container ">
	<div class="flex-col-center-center profile-image-container display-flex">
		<div class="profile-image flex-col-center-center">
			<img class="user-profile-image" src="${o.img}" alt="profile" id="user-display-img">
		</div>
		<div class="flex-row-nowrap-end-center" style="height: 0px;" >
			<div class="user-change-img-container flex-col-center-center uplad-img-input-icon" >
				<input type="hidden" id="user-upload-filename" >
	         <label class="image-picker replace " id="user-imagepicker-label" data-activate="#save-userprofile-img-modal">
	            <input type="file" data-role="none" class="uplad-img-input">
	         </label>
			</div>
		</div>
	</div>
	<p class="user-profile-name">${o.name}</p>
	<div class="flex-row-nowrap-between-center user-numbers-container">
		<div class="number-card flex-col-center-center">
			<p id="total-of-flowers" class="data-number">${tflowers}</p>
			<p class="data-title">Flowers</p>
		</div>
		<div class="number-card flex-col-center-center">
			<p class="data-number">${tcolors}</p>
			<p class="data-title">Colors</p>
		</div>
		<div class="number-card flex-col-center-center">
			<p class="data-number">${tlocations}</p>
			<p class="data-title">Locations</p>
		</div>
	</div>
	<hr class="top-margin-xs bottom-margin-sm" style="border: 1px solid var(--color-neutral-light);">
	<div class="container">
		<p class="user-profile-info"><span style="color: var(--color-main-medium); font-weight: 600;">User name: </span>${o.username}</p>
	</div>
	<div class="container">
		<p class="user-profile-info"><span style="color: var(--color-main-medium); font-weight: 600;">Email: </span>${o.email}</p>
	</div>
	<div class="container ">
		<p class="user-profile-info"><span style="color: var(--color-main-medium); font-weight: 600;">Member since: </span>${o.date_create}</p>
	</div>
	<div class="container ">
		<p class="user-profile-info"><span style="color: var(--color-main-medium); font-weight: 600;">User ID: </span> ${o.id}</p>
	</div>
</div>
`;





const makeFlowerPopup = (o) => `
<div class="flex-col-center-center flower-jump" data-id="${o.flower_id}">
   <div class="flex-none flower-popup-image">
      <img src="${o.img}" alt="">
   </div>
   <div class="flex-stretch flower-popup-body padding-md">
      <div class="flower-popup-name">${o.name}</div>
      <div class="flower-popup-type text-gray"><span class="text-highlight">Type:</span> ${o.type}</div>
      <div class="flower-popup-color text-gray"><span class="text-mid-highlight">Color:</span> ${o.color}</div>
   </div>
</div>
`;

         
const makeLocationPopup = (o) => `
<div class="flex-col-center-center " data-id="${o.id}">
   <div class="flex-col-center-center flower-prof-popup-image">
      <img src="${o.photo}" alt="" id="location-popup-image">
   </div>
   <div class="prof-location-add-img-btn flex-col-center-center uplad-img-input-icon" >
			<input type="hidden" id="location-image-filename" >
         	<label class="image-picker replace " id="location-imagepicker-label" data-activate="#save-location-img-modal" >
            	<input type="file" data-role="none" class="uplad-img-location-input">
         	</label>
	</div>
   <div class="flex-stretch flower-popup-body padding-md">
      <div class="flower-popup-type  text-highlight text-bold">Created on: <span class="text-gray  ">${o.date_create}</span> </div>
   </div>
   <div class="remove-flower">
		<div class="flex-row-start-center" data-activate="#delete-location-modal" style="margin-right: 1em;">
			<svg id="icondelete" class="icon icon-sm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120"><path d="M88.76,41.37a6.53,6.53,0,0,0-4.91-2.24H36.15a6.5,6.5,0,0,0-6.42,7.49L37.78,99a6.51,6.51,0,0,0,6.43,5.51H76.35A6.49,6.49,0,0,0,82.78,99l7.5-52.4A6.52,6.52,0,0,0,88.76,41.37ZM52.94,91.46l-.44,0a3,3,0,0,1-3-2.56L44.4,54a3,3,0,0,1,5.93-.87l5.14,34.9A3,3,0,0,1,52.94,91.46ZM76.72,54l-5.14,34.9a3,3,0,0,1-3,2.56l-.44,0a3,3,0,0,1-2.53-3.4l5.13-34.9a3,3,0,0,1,5.94.87Z" style="fill:#bdc4c6"/><path d="M74.84,27.15a11.45,11.45,0,0,1,2-6.5H67.45a8.11,8.11,0,0,0,0-.86,7.5,7.5,0,1,0-15,0,8.11,8.11,0,0,0,0,.86H34.69a6.5,6.5,0,1,0,0,13H76.86A11.45,11.45,0,0,1,74.84,27.15Z" style="fill:#bdc4c6"/><circle cx="86.34" cy="27.15" r="6.5" style="fill:#bdc4c6"/></svg>
			<p class="text-light text-gray" style="font-size:1.3em;">Delete Location</p>
		</div>
	</div>
</div>
`;


const makeFlowerModal = (o) => `
<div class="flex-row-start-center flower-jump" data-id="${o.flower_id}" data-deactivate="#map-item-modal">
	<div class="map-modal-item-img-container">
		<img class="image-cover map-modal-item-img" src="${o.img}" alt="map item image"/>
	</div>
	<div class="flex-col-start-center">
		<p class="drawer-item-text-title text-bold">${o.name}</p>
		<p class="drawer-item-text-info text-gray">${o.type} | ${o.color}</p>
	</div>
</div>
`;




const FormControlInputAdd = ({namespace, name, displayname, type, placeholder, value}) => `
<div class="form-control">
   <label class="label-helper" for="${namespace}-${name}">${displayname}</label>
	<input type="${type}" id="${namespace}-${name}" class="form-input-lined"  data-role="none" placeholder="${placeholder}" value="${value}"/>
</div>
`;

const FormControlInputAddInverted = ({namespace, name, displayname, type, placeholder, value}) => `
<div class="form-control">
   <label class="label-helper" for="${namespace}-${name}">${displayname}</label>
	<input type="${type}" id="${namespace}-${name}" class="form-input-lined inverted" data-role="none" placeholder="${placeholder}" value="${value}"/>
</div>
`;


const FormControlInputEdit = ({namespace, name, displayname, type, placeholder, value}) => `
<div class="form-control">
   <label class="label-visible" for="${namespace}-${name}" >${displayname}</label>
   <input type="${type}" id="${namespace}-${name}" class="form-input-lined"  data-role="none" placeholder="${placeholder}" value="${value}"/>
</div>
`;


const FormControlTextarea = ({namespace, name, displayname, placeholder, value}) => `
<div class="form-control">
   <label class="label-helper" for="${namespace}-${name}"/>${displayname}</label>
	<textarea id="${namespace}-${name}" class=""  data-role="none" placeholder="${placeholder}" >${value}</textarea>
</div>
`;


const makeAddFlowerInfoFromInputs = (o, namespace) => `
${FormControlInputAdd({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Flower name",
   value:o.name
})}
${FormControlInputAdd({
   namespace:namespace,
   name:"type",
   displayname:"Category",
   type:"text",
   placeholder:"Category",
   value:o.type
})}
${FormControlInputAdd({
   namespace:namespace,
   name:"color",
   displayname:"Color",
   type:"text",
   placeholder:"Color",
   value:o.color
})}
${FormControlInputAdd({
   namespace:namespace,
   name:"size",
   displayname:"Size",
   type:"text",
   placeholder:"Size",
   value:o.size
})}
`;

const makeEditFlowerInfoFromInputs = (o, namespace) => `
${FormControlInputEdit({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Flower name",
   value:o.name
})}
${FormControlInputEdit({
   namespace:namespace,
   name:"type",
   displayname:"Category",
   type:"text",
   placeholder:"Category",
   value:o.type
})}
${FormControlInputEdit({
   namespace:namespace,
   name:"color",
   displayname:"Color",
   type:"text",
   placeholder:"Color",
   value:o.color
})}
${FormControlInputEdit({
   namespace:namespace,
   name:"size",
   displayname:"Size",
   type:"text",
   placeholder:"Size",
   value:o.size
})}
<div class="remove-flower">
	<a class="flex-row-start-center" href="" data-activate="#delete-flower-modal" style="margin-right: 1em;">
		<svg id="icondelete" class="icon icon-sm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120"><path d="M88.76,41.37a6.53,6.53,0,0,0-4.91-2.24H36.15a6.5,6.5,0,0,0-6.42,7.49L37.78,99a6.51,6.51,0,0,0,6.43,5.51H76.35A6.49,6.49,0,0,0,82.78,99l7.5-52.4A6.52,6.52,0,0,0,88.76,41.37ZM52.94,91.46l-.44,0a3,3,0,0,1-3-2.56L44.4,54a3,3,0,0,1,5.93-.87l5.14,34.9A3,3,0,0,1,52.94,91.46ZM76.72,54l-5.14,34.9a3,3,0,0,1-3,2.56l-.44,0a3,3,0,0,1-2.53-3.4l5.13-34.9a3,3,0,0,1,5.94.87Z" style="fill:#bdc4c6"/><path d="M74.84,27.15a11.45,11.45,0,0,1,2-6.5H67.45a8.11,8.11,0,0,0,0-.86,7.5,7.5,0,1,0-15,0,8.11,8.11,0,0,0,0,.86H34.69a6.5,6.5,0,1,0,0,13H76.86A11.45,11.45,0,0,1,74.84,27.15Z" style="fill:#bdc4c6"/><circle cx="86.34" cy="27.15" r="6.5" style="fill:#bdc4c6"/></svg>
		<p class="text-light text-gray">Delete flower</p>
	</a>
</div>
`;

const makeEditUserFromInputs = (o, namespace) => `
${FormControlInputEdit({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Name",
   value:o.name
})}
${FormControlInputEdit({
   namespace:namespace,
   name:"username",
   displayname:"User name",
   type:"text",
   placeholder:"User name",
   value:o.username
})}
${FormControlInputEdit({
   namespace:namespace,
   name:"email",
   displayname:"Email",
   type:"email",
   placeholder:"Email",
   value:o.email
})}
`;


const makeChangePasswordFromInputs = (namespace) => `

${FormControlInputAdd({
   namespace:namespace,
   name:"initial",
   displayname:"New password",
   type:"text",
   placeholder:"New password",
   value:""
})}
${FormControlInputAdd({
   namespace:namespace,
   name:"confirm",
   displayname:"Confirm Password",
   type:"text",
   placeholder:"Confirm password",
   value: ""
})}
`;

const makeFlowerChoiceSelect = ({flowers, name, chosen=0}) =>`
<select class="form-select-lined" id="${name}" data-role="none">
	// <option value="" selected disabled hidden >Select an option</option>
	${templater(o=>`
			<option value="${o.id}" >${o.name}</option>
		`)(flowers)}
</select><span class="label-category-name"></span>
`;

const makeFlowerListSet = (arr, target="#page-list .flowerlist") => {
	$(".list-filter-container").html(makeFilterList(arr));
   $(target).html(makeFlowerList(arr));
}
const makeEmptyFlowerListSet = (arr, target="#page-list .flowerlist") => {
   $(target).html(makeEmptyFlowerList(arr));
}
// HOW TO CREATE THIS MAP USING THE VALUE FROM SEARCH BAR??????-----------------------

const makeLocationsMapSet = (arr) =>{
	// console.log(arr);
		let flowers = result.reduce((r,o)=>{
		   o.icon = o.img;
		   if(o.lat && o.lng) r.push(o);
		   return r;
		},[]);

	// let mapEl = await makeMap("#page-map .map");
 //   makeMarkers(mapEl,flowers);



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

// FILTERS TEST

const capitalize = s => s[0].toUpperCase()+s.substr(1);

// How to count number of occurrences of repeated names in an array of objects in JavaScript ?
// https://www.geeksforgeeks.org/how-to-count-number-of-occurrences-of-repeated-names-in-an-array-of-objects-in-javascript/
function findOcc(arr, key){
  let arr2 = [];
    
  arr.forEach((x)=>{
       
    // Checking if there is any object in arr2
    // which contains the key value
     if(arr2.some((val)=>{ return val["key"] == x[key] })){
         
       // If yes! then increase the occurrence by 1
       arr2.forEach((k)=>{
         if(k["key"] === x[key]){ 
           k["occurrence"]++
         }
      })  
     }else{
       // If not! Then create a new object initialize 
       // it with the present iteration key's value and 
       // set the occurrence to 1
       let a = {}
       a["key"] = x[key]
       a["occurrence"] = 1
       arr2.push(a);
     }
  })
  return arr2
}
  



const filterList = (flowers,type) => {
   let a = [...(new Set(flowers.map(o=>o[type])))];
   let b = findOcc(flowers, type)

   // console.log(b);


   return templater(o=>o?`
   	<a href="#" data-filter="${type}" data-value="${o.key}" class="card flex-col-center-start list-filter-item ">
				<p class="list-filter-title ">${capitalize(o.key)}</p>
				<p class="list-filter-counts">${o.occurrence} Items</p>
			</a>
   	`:'')(b);
}



// FILTERS ORIGINAL
// const capitalize = s => s[0].toUpperCase()+s.substr(1);


// const filterList = (flowers,type) => {
//    let a = [...(new Set(flowers.map(o=>o[type])))];



//    return templater(o=>o?`
//    	<a href="#" data-filter="${type}" data-value="${o}" class="card flex-col-center-start list-filter-item ">
// 				<p class="list-filter-title ">${capitalize(o)}</p>
// 				<p class="list-filter-counts">3 Items</p>
// 			</a>
//    	`:'')(a);
// }


const makeFilterList = (flowers) => {
	return`
		<a data-value="" class="card flex-col-center-center show-all-card all" data-filter="all">
			<p class=" list-filter-title">All</p>
		</a>
		<hr class="list-filter-separator"  style="border-right: 1px solid var(--color-neutral-medium;">
		${filterList(flowers,'type')}
		<hr class="list-filter-separator"  style="border-right: 1px solid var(--color-neutral-medium;">
		${filterList(flowers,'color')}
		<hr class="list-filter-separator"  style="border-right: 1px solid var(--color-neutral-medium;">
		${filterList(flowers,'size')}
	`;
}


const makeRecentMarkers = async (arr)=> {
   let flowers = arr.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

   let mapEl = await makeMap("#page-map .map");
   makeMarkers(mapEl,flowers);

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

