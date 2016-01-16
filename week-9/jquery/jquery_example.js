// U3.W9:JQuery


// I worked on this challenge with Karen Ball.
// This challenge took me [2.5] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
h1 = $('h1')
dh1 = $('div h1')
mascotID = $('#m')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body>h1').css({'color': 'white'})
$('body>h1').css({'border': 'white solid 2px'})
$('body>h1').css({'visibility': 'hidden'})

$('.mascot>h1').html('Squirrels 2016')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    //e.preventDefault()
    $(this).attr('src', 'https://cuteoverload.files.wordpress.com/2015/12/jill11.jpeg')
  })

$('img').on('mouseleave', function(e){
    //e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
$('img').css({'position': 'fixed'})

$('img').on('mouseenter', function(e){
    $(this).animate({ 'left': "+=50px" }, "slow" );
  })





})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// REFLECTION
//
// What is jQuery?
//    JQuery is a library within JavaScript that's used to manipulate items on a webpage, and make the webpage more interactive.

// What does jQuery do for you?
//    It allows you to dynamically change the content and formatting on your webpage based on what the user might be doing.  For example when they 
//    move the mouse to a certain place or click on an object.

// What did you learn about the DOM while working on this challenge?
//    It's easy to manipulate the DOM with JQuery, but it's important to remember the fundamentals of HTML still apply.  We struggled for a while 
//    because we were trying to animate the image and move it around, but nothing was happening.  It turned out our JQuery was correct, but 
//    the image wouldn't go anywhere because of it's default positioning within the document.  After we finally made it a fixed position, it would 
//    let us move it after that.

