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

  var hideOnLoad = function() {
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
  };

  var setUpHideButtons = function () {
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
  };
  hideOnLoad();
  setUpHideButtons();

  $(document).on('page:restore', function() {
    console.log('page restore');
  });
  $(document).on('page:change', function() {
    console.log('page change');
    hideOnLoad();
    setUpHideButtons();
  });


});
