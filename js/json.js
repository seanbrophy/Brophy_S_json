(function  () {
	"use strict";

	var request;

	var form = document.querySelector("#newQuote");
	var num = 1;
	var randId;
	var maxNum = 7;//this controls the max number of ids find a way to do so dynamically

	 function showImgJSON(){
	 	randId = Math.ceil(Math.random() * maxNum);
	 	console.log("img rand id = "+randId);
		var str = randId;
		request = createRequest();

		if (request===null) {
			alert("Please upgrade your browser");
			return;
		}

		var url="getQuote_json.php?q="+str;
		request.onreadystatechange=stateChangedJSON;
		request.open("GET",url,true);
		request.send(null);
	}

	function showQuoteJSON(){
		randId = Math.ceil(Math.random() * maxNum);
		console.log("quote rand id = "+randId);
		var str = randId;
		request = createRequest();

		if (request===null) {
			alert("Please upgrade your browser");
			return;
		}

		var url="getQuote_json.php?q="+str;
		request.onreadystatechange=stateChangedJSON;
		request.open("GET",url,true);
		request.send(null);
	}

	 function showNameJSON(){
	 	randId = Math.ceil(Math.random() * maxNum);
	 	console.log("name rand id = "+randId);
		var str = randId;
		request = createRequest();

		if (request===null) {
			alert("Please upgrade your browser");
			return;
		}

		var url="getQuote_json.php?q="+str;
		request.onreadystatechange=stateChangedJSON;
		request.open("GET",url,true);
		request.send(null);

		
	}


	function stateChangedJSON() {

		if (request.readyState===4 || request.readyState==="complete") {
			var jsondoc = JSON.parse(request.responseText);//passengers/xml info
			console.log(jsondoc);

			if(num===1){
				console.log("num equals 1");
				document.querySelector("#name").innerHTML = "~"+jsondoc.name ;
				num+=1;
				showQuoteJSON();
			}else if (num===2) {
				console.log("num equals 2");
				document.querySelector("#jobtitle").innerHTML = jsondoc.job;
				num+=1;
				showNameJSON();
			}else if (num===3) {
				console.log("num equals 3");
				document.querySelector("#photo").innerHTML = "<img src='images/"+jsondoc.photo+"' alt='"+jsondoc.name+"'>";
				num=1;
			}else{
				console.log("error num =" + num);
			}

				
		}
	}


	window.addEventListener("load", showImgJSON, false)

	form.addEventListener("click", showImgJSON, false);

})();