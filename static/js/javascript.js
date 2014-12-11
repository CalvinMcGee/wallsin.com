function roundNumber(num, dec) {
	var result = Math.round(num*Math.pow(10,dec))/Math.pow(10,dec);
	return result;
}

$(document).ready(function(){
  $('#scrollpanel').tabs({
    fx : {
      height: 'toggle',
      opacity: 'toggle',
      duration: '5000'
    }
  });

  $(".portfolio").click(function(){
    $(this).next().slideToggle(600, 'easeInOutSine');
  });

  $('a[rel=lightbox]').each(function(){
    $(this).lightBox({
      overlayBgColor: '#AA9E99',
      overlayOpacity: 0.6,
      containerResizeSpeed: 600,
      txtImage: 'Bild',
      txtOf: 'av'
    });
  });

	$('#email').on('click', function() {
		ga('send', 'event', 'link', 'click', 'email');
	});
});
SyntaxHighlighter.all()
