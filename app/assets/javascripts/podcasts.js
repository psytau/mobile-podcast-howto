
function hideOs () {
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
  }
  else if (isIOS) {
    $('.android').hide();
  }
}

$(function() {hideOs();});
