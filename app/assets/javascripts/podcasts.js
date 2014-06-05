$(function() {

  var ua = navigator.userAgent.toLowerCase();
  var isAndroid = ua.indexOf("android") > -1;

  var testIOS = function () {
    if(navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
      return true;
    }
    else{
      return false;
    }
  }
  var isIOS = testIOS();

  if (isAndroid) {
    $('.iOS').hide();
    $('.desktop').hide();
  }
  else if (isIOS) {
    $('.android').hide();
    $('.desktop').hide();
  }
  else {
    $('.iOS').hide();
  }

  $('#view-ios').on('click', function(){
    console.log('ios');
    $('.android').hide();
    $('.iOS').show();
  });
  $('#view-android').on('click', function(){
    console.log('android');
    $('.iOS').hide();
    $('.android').show();
  });

  console.log('lala');

});
