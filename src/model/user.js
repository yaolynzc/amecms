module.exports = class extends think.Model {
  //  返回特定记录
  findOne(uid){
      return this.alias('a').where({ID: uid}).find();
  }
};