var currentYear = (new Date).getFullYear();
  $(document).ready(function() {
    $("#copyright-year").text( (new Date).getFullYear() );
  });

  $(function(){
    $('.sf-menu').superfish({
      autoArrows: true,
      animation: {height:'show'},
      animationOut: {height:'hide'},
      speed: 'fast',
      delay: 500
    })
  })