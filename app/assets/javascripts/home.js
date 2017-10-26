// 	var randomColorFactor = function() {
//         return Math.round(Math.random() * 255);
//     }

// setInterval(function() {
// 	document.body.style.backgroundColor = randomColorFactor;
// }, 2000)

var myCanvas = document.getElementById("myCanvas");
myCanvas.width = 300;
myCanvas.height = 300;
myCanvas.style.color = "blue";
var ctx = myCanvas.getContext("2d");