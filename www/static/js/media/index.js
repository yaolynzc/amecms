$(document).ready(function(){
    var uid = $.cookie("cookieUID");
    var pwd = $.cookie("cookiePWD");
    // console.log(uid+pwd);
    if(!uid && !pwd){
        window.location.href="login.html";
    }

    $("#logout").click(function(){
        // alert('test');
        logout();
    });

    // 退出登录
    function logout() {
        var datas = {
            rad: Math.random()
        }
        $.ajax({
            type: "get",
            url: "/user/logout",
            data: datas,
            success: function (json) {
                if(json.status===1){
                    // 用户退出后清空cookie
                    $.cookie("cookieUID", null);
                    $.cookie("cookiePWD", null);
                    window.location.href = "login.html";
                }
            }
        });
    }

});