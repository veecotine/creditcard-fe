btn = document.getElementsByClassName("menu_bar")[0]
menu_bar = document.getElementsByClassName("menu_items")[0]
activation = false

btn.addEventListener("click", ()=>{
	if(!activation){
		menu_bar.style.opacity="1";
		activation = true;
	}else{
		menu_bar.style.opacity="0";
		activation = false;
	}
})