(function( document, Math ) {
  // Example code: Calculate the area of a circle
  var radius = 5;
  var area = Math.PI * Math.pow(radius, 2);
  console.log("Area of the circle with radius", radius, "is", area.toFixed(2));

  // Example code: Manipulating the DOM
  var heading = document.getElementById('main-heading');
  heading.textContent = "Hello, World!";

  // Example code: Adding a new paragraph
  var paragraph = document.createElement('p');
  paragraph.textContent = "This is a new paragraph added dynamically.";
  document.body.appendChild(paragraph);

})(document, Math);
