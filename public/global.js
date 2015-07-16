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

    req.open("get", "/api/assignments");

    req.addEventListener("load", project);

    req.responseType = "json";
    req.send();

    var project = function(){
      var req = this;
      var assignment_list = document.getElementsByClassName("all_assignment")[0];

      for (var i = 0; i < req.response.length; i++) {
  
        var ul = document.createElement("ul");
        
  
        list = JSON.parse(req.response[i]);
        // li.innerHTML =list.id + " " + list.name
        assignment_list.appendChild(ul);
        var a = link_assignment(list.id, list.name)
        a.setAttribute("data-info", "info" + list.id)
        ul.appendChild(a);
        var li = document.createElement("li")
        li.className ="info";
        li.setAttribute("id", "info" + list.id)
        li.innerText = list.name; 
        a.appendChild(li);
                

        
        //   if (info.className == "info"){
          //   info.className("info show");
          // }
          // else{
            //     info.className("show");
            //   }
          };
      
        };

        /////////////////////////////////////////////
        //link for assignment name
        /////////////////////////////////////////////

        var link_assignment = function(id, name, event){
          var a = document.createElement("a");
          a.setAttribute("href", ("/api/assignments/" + id));
          a.addEventListener("click", information)
          a.appendChild(document.createTextNode("Assignment Name: " + name));
          return a;
        };    
        var information = function(){
          // var req = new XMLHttpRequest();
          // req.open("get", this.href);
          var info_id = this.getAttribute("data-info")
          list = document.getElementById(info_id);
          list.classList.toggle("show");
      
          // req.addEventListener("load", function() {
            //   document.getElementById("assignments").innerText = "";
            //   document.getElementById("title").innerHTML = req.response.name;
            //   document.getElementById("description").innerHTML = req.response.description;
            //
            // })
            event.preventDefault();
            // req.responseType = "json";
            // req.send();
          }
      


          // var strJSON = req.response;
          // var objJSON = eval("(function(){return " + strJSON + ";})()");
          //
          // assignment_list.innerText = objJSON.github_link