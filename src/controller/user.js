const Base = require('./base.js');

module.exports = class extends Base {
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
      })
    }
  }

  // 用户退出
  async logoutAction() {
    await this.session("userInfo", null);
    return this.json({
      status: 1,
      msg: '退出成功！'
    })
  }
}