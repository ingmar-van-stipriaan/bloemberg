$(document).ready(function(){
  $("#carousel").camera({
    pagination: false,
    minHeight: '300',
    thumbnails: false,
    height: '53.54077253218884%',
    fx: 'mosaicReverse'
  });

  //prevent all mouse clicks. remove when design is
  $("a").on('click', function(e){
    e.preventDefault();
  });
});