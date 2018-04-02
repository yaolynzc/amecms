const Base = require('./base.js');

module.exports = class extends Base {
  async __before() {
      let username = '';
      const userinfo = await this.session('userInfo');
      if (userinfo) {
        username = userinfo.name;
      }
      this.assign({
          username: username
      });
  }

  indexAction() {
    return this.display();
  }
};
