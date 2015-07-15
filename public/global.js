// var req = new XMLHttpRequest();
// req.open("get", "/api/assignments");
//
// req.addEventListener("load", function(){
//   for(var i = 0; i < this.response.length; i++){
//
//     var container = document.getElementById("api_controller");
//     container.innerHTML = this.response[i];
//   }
// })
//
// req.responseType = "json";
// req.send();


var req = new XMLHttpRequest();

req.open("get", "http://localhost:4567/api/assignments");

req.addEventListener("load", list_projects);

req.responseType = "json";
req.send();

function list_projects() {
  var assignment_list = document.getElementsByClassName("all_assignment")[0];

  for (var i = 0; i < req.response.length; i++) {
    
    var parse_test = JSON.parse(req.response[i]);
  }


  assignment_list.innerText = parse_test.name
  
}

// var strJSON = req.response;
// var objJSON = eval("(function(){return " + strJSON + ";})()");
//
// assignment_list.innerText = objJSON.github_link