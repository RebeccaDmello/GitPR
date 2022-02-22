async function getMovies() {
	let response = await fetch('http://localhost:3000/movies');
	let ul = document.getElementById("moviesList");
	let data = await response.json();
	for (let index = 0; index < data.length; index++) {
		const element = data[index];
		var li = document.createElement('li');
		li.innerHTML  = JSON.stringify(element) ;
		ul.appendChild(li);
	}
	return data;
}

async function getFavourites() {
	let response = await fetch('http://localhost:3000/favourites');
	let ul = document.getElementById("favouritesList");
	let data = await response.json();
	for (let index = 0; index < data.length; index++) {
		const element = data[index];
		var li = document.createElement('li');
		li.innerHTML  = JSON.stringify(element) ;
		ul.appendChild(li);
	}
	
	
	return data;
}

async function addFavourite(id) {
	//Do API Calls
	let ul = document.getElementById("favouritesList");
	
	let isDuplicate = false;
	for (index = 0 ; index <ul.childNodes.length ; index ++){
		if (JSON.parse(ul.childNodes[index].innerHTML).id == id){
			isDuplicate = true;
		}
		
	}
	
	
	let dataToPost = moviesTestData.filter((item) => item['id'] == id);
	//Check if null
	if (dataToPost.length == 0){
		return Promise.reject(new Error("Movie is already added to favourites"));
	}
	
	
	if (isDuplicate){
		return Promise.reject(new Error("Movie is already added to favourites"));
	}

	let postReponse = await fetch("http://localhost:3000/favourites", 
	{ method: "POST", body: JSON.stringify(dataToPost[0]),headers: {"Content-type": "application/json; charset=UTF-8"} },
	)
	
	var li = document.createElement('li');
	li.innerHTML  = JSON.stringify(dataToPost[0]) ;
	ul.appendChild(li);
	let allData = [];
	for (index = 0 ; index <ul.childNodes.length ; index ++){
		allData.push(JSON.parse(ul.childNodes[index].innerHTML));
		
	}
	
	//return data as JSON
	return allData;
	}
