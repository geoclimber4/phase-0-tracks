var els = document.getElementsByTagName('h1');

var el = els[0];

el.onclick = function() {
  console.log('clicked');
  el.style.border = "3px dotted blue";
}