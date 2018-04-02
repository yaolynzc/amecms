module.exports = class extends think.Model {
    //  返回特定记录
    findOne(uid){
        return this.alias('a').where({ID: uid}).find();
    }

    // 获取用户菜单
    async getMenu(uid){
        var obj = await this.alias('a').join({
            table:'user_role',
            join:'left',
            as:'b',
            on:['a.id','uid']
        }).join({
            table:'role',
            join:'left',
            as:'c',
            on:['b.roid','id']
        }).join({
            table:'role_res',
            join:'left',
            as:'d',
            on:['c.id','roid']
        }).join({
            table:'res',
            join:'left',
            as:'e',
            on:['d.reid','id']
        }).where({'a.id':uid}).distinct('e.*').order({'e.type':'asc', 'e.sort':'asc'}).select();

        for(let item of obj) {
            const sonNum = await this.model('res').where({parentid: item.id, type: 1}).count('*');
            item.sonNum = sonNum;        // 查询其子节点个数属性值
        }
        // console.log(obj);
        return obj;
    }
};