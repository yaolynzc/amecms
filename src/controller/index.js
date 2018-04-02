const Base = require('./base.js');

module.exports = class extends Base {
  async __before() {
    const userinfo = await this.session('userInfo');
    this.assign({
      username: userinfo.name
    });
  }

  indexAction() {
    return this.display();
  }
};
