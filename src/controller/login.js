const Base = require('./base.js');

module.exports = class extends Base {
  indexAction() {
    return this.display();
  }

  async loginAction(){
    const uidstr = this.get('uid');
    const pwdstr = this.get('pwd');
    // console.log(uidstr + '/' + pwdstr);

    const userinfo = await this.model('user').findOne(uidstr);
    console.log(userinfo);
    if(userinfo.PWD == think.md5(pwdstr)){
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

};
