var layer = laydate = null;

layui.use(['layer', 'laydate'], function(){
    var layer = layui.layer
        ,laydate = layui.laydate;
});

var Ame = function () {
    // 初始化左侧菜单
    function leftSideMenuInit() {
        var datas = {
            rad: Math.random()
        }
        $.ajax({
            type: 'get',
            url: '/user/getmenu',
            data: datas,
            success: function (json) {
                if(json.status === 1) {
                    var data = json.dt;
                    $('#leftSideMenu').html('');
                    var html = [];
                    for(var i in data) {
                        // 一级菜单
                        if (data[i].type === 0 && !data[i].url) {
                            //递归加载子节点
                            html.push(showLeftMenuSon(data[i], data));
                        }
                    }
                    $('#leftSideMenu').html(html.join(''));

                    var nowurl = $('li a[href="' + window.location.pathname + '"]', $('#leftSideMenu'));
                    if(nowurl.length > 0) {
                        //激活当前
                        nowurl.parent().addClass('active');
                        //所有父ul.treeview-menu显示
                        nowurl.parents("ul.treeview-menu").show();
                        //所有父li.treeview展开
                        nowurl.parents('li.treeview').addClass('menu-open');
                    }
                }
            }
        });
    }

    // 递归调用子菜单
    function showLeftMenuSon(cur, data) {
        var html = [];
        //有子菜单
        if (cur.sonNum > 0) {
            html.push('<li class="treeview">');
            html.push('  <a href="javascript:;">');
            html.push('    <i class="' + cur.icon + '"></i>');
            html.push('    <span>' + cur.name + '</span>');
            html.push('    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>');
            html.push('  </a>');
            html.push('  <ul class="treeview-menu">');
            // 对子菜单进行递归
            for(var i in data){
                if(data[i].parentid === cur.id && data[i].type === 1){
                    //递归调用，显示子节点
                    html.push(showLeftMenuSon(data[i], data));
                }
            }
            html.push('  </ul>');
            html.push('</li>');
        } else {
            if (!cur.url || cur.url.length === 0) {
                cur.url = 'javascript:;';
            }
            //无子菜单
            html.push('<li><a href="' + cur.url + '"><i class="' + cur.icon + '"></i><span>' + cur.name + '</span></a></li>');
        }
        return html.join('');
    }

    // 退出登录
    function logout() {
        var datas = {
            rad: Math.random()
        }
        $.ajax({
            type: 'get',
            url: '/user/logout',
            data: datas,
            success: function (json) {
                if(json.status === 1){
                    // 用户退出后清空cookie
                    $.cookie('cookieUID', null);
                    $.cookie('cookiePWD', null);
                    window.location.href = 'login.html';
                }
            }
        });
    }
    return {
        // 初始化左侧菜单
        leftSideMenuInit: leftSideMenuInit,
        //页面左侧菜单初始化
        logout: logout
    }
}();
