$(document).ready(function() {
    var uid = $.cookie('cookieUID');
    var pwd = $.cookie('cookiePWD');
    // console.log(uid+pwd);
    if(!uid && !pwd){
        window.location.href = 'login.html';
    }
    Ame.leftSideMenuInit();

    $('#logout').click(function(){
        // alert('test');
        Ame.logout();
    });
});