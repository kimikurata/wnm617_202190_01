const makeFlowerList = templater((o) => `
	<div class="flex-row-nowrap-between-center list-item-container flower-jump"  data-id="${o.id}">
		<div class="flex-row-nowrap-start-center">
			<div class="flower-list-image-container">
				<img class="image-cover flower-list-image" src="${o.img}" alt="image">
			</div>
			<div class="flower-list-item-info">
				<p class="flower-list-item-name">${o.name}</p>
				<p class="flower-list-item-category">${o.type}</p>
			</div>
			
		</div>
		<div>
			<img class="icon icon-sm" src="images/icons/arrow-right.svg" alt="next">
		</div>
	</div>
	<hr style="border: 1px solid var(--color-pure-white);">
`); 


const makeUserProfile =(o, tflowers, tcolors, tlocations) => 
`
<div class="profile-content-container ">
	<div class="flex-col-center-center profile-image-container display-flex">
		<div class="profile-image flex-col-center-center">
			<img class="image-cover" src="${o.img}" alt="profile">
		</div>
		<div class="flex-row-nowrap-end-center" style="height: 0px;">
			<div class="chage-img-container flex-col-center-center "><svg id="iconcamera" class="icon icon-ssm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120"><path d="M85.38,40.72a10.8,10.8,0,0,1-1.28,10.1,4.24,4.24,0,0,1,2.34,3.78V75.47a4.26,4.26,0,0,1-4.26,4.26H37.82a4.26,4.26,0,0,1-4.26-4.26V54.6a4.26,4.26,0,0,1,4.26-4.26h7.86a5,5,0,0,0,5-5V38.86a1.26,1.26,0,0,1,1.25-1.25H66.75a10.9,10.9,0,0,1,8.42-4,11.11,11.11,0,0,1,3.07.44,11.27,11.27,0,0,0-10.17-6.47H51.93A11.27,11.27,0,0,0,40.68,38.86v1.48H37.82A14.27,14.27,0,0,0,23.56,54.6V75.47A14.27,14.27,0,0,0,37.82,89.73H82.18A14.27,14.27,0,0,0,96.44,75.47V54.6A14.26,14.26,0,0,0,85.38,40.72Z" style="fill:#bdc4c6"/><circle cx="75.17" cy="44.56" r="5.92" style="fill:#bdc4c6"/><circle cx="61.5" cy="62.36" r="9.21" style="fill:#bdc4c6"/></svg></div>
		</div>
	</div>
	<p class="text-center text-bold">${o.name}</p>
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
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">User name: </span>${o.username}</p>
	</div>
	<div class="container">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">Email: </span>${o.email}</p>
	</div>
	<div class="container ">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">Member since: </span>${o.date_create}</p>
	</div>
	<div class="container ">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">User ID: </span> ${o.id}</p>
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

const makeFlowerModal = (o) => `
<div class="flex-row-start-center flower-jump" data-id="${o.flower_id}" data-deactivate="#map-item-modal">
	<div class="map-modal-item-img-container">
		<img class="image-cover map-modal-item-img" src="${o.img}" alt="map item image"/>
	</div>
	<div class="flex-col-start-center">
		<p class="drawer-item-text-title text-bold">${o.name}</p>
		<p class="drawer-item-text-info text-gray">${o.type} / ${o.color}</p>
	</div>
</div>
`;




const FormControlInputAdd = ({namespace, name, displayname, type, placeholder, value}) => `
<div class="form-control">
	<input type="${type}" id="${namespace}-${name}" class="form-input-lined"  data-role="none" placeholder="${placeholder}" value="${value}"/>
	<label class="label-helper" for="${namespace}-${name}">${displayname}</label>
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
	<textarea id="${namespace}-${name}" class=""  data-role="none" placeholder="${placeholder}" >${value}</textarea>
	<label class="label-helper" for="${namespace}-${name}"/>${displayname}</label>
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
<div class="remove-user">
	<a class="flex-row-start-center" href="" data-activate="#delete-flower-modal" style="margin-right: 1em;">
		<svg id="icondelete" class="icon icon-sm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120"><path d="M88.76,41.37a6.53,6.53,0,0,0-4.91-2.24H36.15a6.5,6.5,0,0,0-6.42,7.49L37.78,99a6.51,6.51,0,0,0,6.43,5.51H76.35A6.49,6.49,0,0,0,82.78,99l7.5-52.4A6.52,6.52,0,0,0,88.76,41.37ZM52.94,91.46l-.44,0a3,3,0,0,1-3-2.56L44.4,54a3,3,0,0,1,5.93-.87l5.14,34.9A3,3,0,0,1,52.94,91.46ZM76.72,54l-5.14,34.9a3,3,0,0,1-3,2.56l-.44,0a3,3,0,0,1-2.53-3.4l5.13-34.9a3,3,0,0,1,5.94.87Z" style="fill:#bdc4c6"/><path d="M74.84,27.15a11.45,11.45,0,0,1,2-6.5H67.45a8.11,8.11,0,0,0,0-.86,7.5,7.5,0,1,0-15,0,8.11,8.11,0,0,0,0,.86H34.69a6.5,6.5,0,1,0,0,13H76.86A11.45,11.45,0,0,1,74.84,27.15Z" style="fill:#bdc4c6"/><circle cx="86.34" cy="27.15" r="6.5" style="fill:#bdc4c6"/></svg>
		<p class="text-light text-gray">Delete Account</p>
	</a>
</div>
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
	<option value="" selected disabled hidden >Select an option</option>
	${templater(o=>`
			<option value="${o.id}" ${o.id===chosen?'selected':''}>${o.name}</option>
		`)(flowers)}
</select><span class="label-category-name"></span>
`;
