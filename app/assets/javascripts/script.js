var ready;

ready = function() {
  jQuery.fn.exists = function(){
    return this.length > 0;
  }

  $('.sf-menu').superfish({
    autoArrows: true,
    animation: {height:'show'},
    animationOut: {height:'hide'},
    speed: 'fast',
    delay: 500
  });

  if( $("#carousel").exists() ){
    $("#carousel").camera({
      minHeight: '300',
      height: '53.54077253218884%',
      fx: 'mosaicReverse',
      hover: false
    });
  }

  if( $(".gallery").exists() ){
    $('.gallery a.gal').touchTouch();
  }
};

$(document).ready(ready);
$(document).on('page:load', ready);