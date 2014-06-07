$(function() {

  // setup for create new feed
  var setUpNewFeedOptListener = function () {
    $('#podcast_hosted_feed_id').on('change', function (e) {
      console.log(this);
      console.log($(this).val());
      if($(this).val() === 'new'){
        console.log('redi');
        window.location.href = '/hosted_feeds/new';
      }
    });
  };

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

  setUpNewFeedOptListener();

  $(document).on('page:change', function() {
    hideOnLoad();
    setUpHideButtons();
     
    setUpNewFeedOptListener();
  });


});
