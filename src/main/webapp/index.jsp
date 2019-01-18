<%--
  Created by IntelliJ IDEA.
  User: dkonkova
  Date: 15.01.2019
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <script src="jqmin.js"></script>

    <title>$Title$</title>
  </head>
  <body>
  <object type="image/svg+xml" data="Example.svg" id="object" class="icon"></object>
  <script>

      var a = document.getElementById("object");
      var arr =[];
      var newArr = [];
      a.addEventListener("load",function(){
          var svgDoc = a.getSVGDocument();
          var elems = svgDoc.getElementsByTagName("rect");
          arr = Array.from(elems);
          newArr = createObject(arr);


          // for (i in arr) {
          //     arr[i].addEventListener("mousedown", function () {
          //         if(event.target.valueOf().getAttributeNode("fill").value == "#96A3B7"){
          //             // var remove = event.target.valueOf().getAttributeNode("fill");
          //             // this.removeAttributeNode(remove);
          //             // this.setAttribute("fill", "#FF00FF");
          //             event.target.valueOf().getAttributeNode("fill").value = "#2e81ff";
          //
          //         } else {
          //             event.target.valueOf().getAttributeNode("fill").value = "#96A3B7"
          //         }
          //         console.log(event.target);
          //
          //     })
          // }

          for (i in arr) {
              arr[i].addEventListener("mousedown", function () {
                 var  text = `${event.target}`;
                  var oParser = new DOMParser();
                  var oDOM = oParser.parseFromString(text, "text/xml");

                 console.log(oDOM);
              })
          }



      }, false);

      // function changeProp(obj) {
      //     if (obj.prop) {
      //         this.style.fill = "#FF00FF"
      //         obj.prop = true;
      //     } else {
      //         this.style.fill = "#96A3B7"
      //         obj.prop = false
      //     }
      // }

      function createObject(arr) {
          for (i in arr) {
              var obj = { id: arr[i].valueOf().getAttributeNode("id").value, prop: true}
              newArr.push(obj);
          }
          return newArr;
      }

  </script>

  </body>
</html>
