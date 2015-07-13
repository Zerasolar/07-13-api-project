var req = new XMLHttpRequest();
req.open("get", "/api/assignments");

req.addEventListener("load", function(){
  for(var i = 0; i < this.response.length; i++){
    
    var container = document.getElementById("api_controller");
    container.innerHTML = this.response[i].;
  }
})

req.responseType = "json";
req.send();