const Base = require('./base.js');

module.exports = class extends Base {
  // user/index.html页面
  indexAction(){
    return this.display();
  }
  // 用户登录
  async loginAction(){
    const uidstr = this.get('uid');
    const pwdstr = this.get('pwd');
    // console.log(uidstr + '/' + pwdstr);

    const userinfo = await this.model('user').findOne(uidstr);
    console.log(userinfo);
    if(userinfo.pwd == think.md5(pwdstr)){
      await this.session("userInfo", userinfo);
      return this.json({
        status: 1,
        info: '登录成功！'
      })
    }else{
      return this.json({
        status: 0,
        info: '登录失败！'
      });
    }
  }

  // 获取用户菜单
  async getmenuAction() {
    const userinfo = await this.session("userInfo");
    const userResList = await this.model('user').getMenu(userinfo.id);
    return this.json({
      status: 1,
      dt: userResList
    });
  }

  // 用户退出
  async logoutAction() {
    await this.session("userInfo", null);
    return this.json({
      status: 1,
      msg: '退出成功！'
    });
  }
}