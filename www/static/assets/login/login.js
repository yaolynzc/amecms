$(document).ready(function () {
  // 登录按钮的点击事件
  $("#btnLogin").click(function () {
    var uid = $("#uid").val();
    var pwd = $("#pwd").val();
    var isrem = $("#rememberme").is(":checked");

    var datas = {
      uid: uid,
      pwd: pwd,
      rad: Math.random()
    }

    $.ajax({
      url: '/login/login',
      data: datas,
      type: 'GET',
      success: function (json) {
        if (json.status === 1) {
          $.cookie("cookieUID", uid, { expires: 7, path: '/' });
          if (isrem) {
            $.cookie("cookiePWD", pwd, { expires: 7, path: '/' });
          } else {
            $.cookie("cookiePWD", pwd);
          }
          window.location.href = "index.html";
        } else {
          window.location.href = "login.html";
        }
      }
    });
  });

});