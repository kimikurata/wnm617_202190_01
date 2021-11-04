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


const makeUserProfile =(o) => `
<div class="profile-content-container ">
	<div class="flex-col-center-center profile-image-container display-flex">
		<div class="profile-image flex-col-center-center">
			<img class="image-cover" src="${o.img}" alt="profile">
		</div>
		<div class="flex-row-nowrap-end-center" style="height: 0px;">
			<div class="chage-img-container">+</div>
		</div>
	</div>
	<p class="text-center text-bold">${o.name}</p>
	<div class="flex-row-nowrap-between-center user-numbers-container">
		<div class="number-card flex-col-center-center">
			<p class="data-number">7</p>
			<p class="data-title">Flowers</p>
		</div>
		<div class="number-card flex-col-center-center">
			<p class="data-number">3</p>
			<p class="data-title">Colors</p>
		</div>
		<div class="number-card flex-col-center-center">
			<p class="data-number">14</p>
			<p class="data-title">Locations</p>
		</div>
	</div>
	<hr class="top-margin-xs bottom-margin-sm" style="border: 1px solid var(--color-neutral-light);">
	<div class="container">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">Email:</span>${o.email}</p>
	</div>
	<div class="container ">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">Member since: </span>${o.date_create}</p>
	</div>
	<div class="container ">
		<p class="text-light text-gray"><span style="color: var(--color-main-medium); font-weight: 600;">User ID:</span> ${o.id}</p>
	</div>
</div>

`;