--版本信息表
--版本号
--添加时间
DROP TABLE IF EXISTS alembic_version;
CREATE TABLE alembic_version (
  version_num varchar(32) PRIMARY KEY NOT NULL,
  addtime  DATETIME        DEFAULT 'now' 
) 
--管理员表
--编号
--管理员账号
--管理员密码
DROP TABLE IF EXISTS admin;
CREATE TABLE admin ( 
    id       INTEGER         PRIMARY KEY,
    username VARCHAR( 100 ),
    pwd      VARCHAR( 100 ) 
);
--管理员登录日志表
--编号
--所属管理员
--登录IP
--登录时间
DROP TABLE IF EXISTS adminlog;
CREATE TABLE adminlog ( 
    id       INTEGER         PRIMARY KEY,
    admin_id INTEGER         REFERENCES admin ( id ),
    ip       VARCHAR( 100 ),
    addtime  DATETIME        DEFAULT 'now' 
);
--地区表
--编号
--标题
--添加时间
--是否推荐
--景区介绍
DROP TABLE IF EXISTS area;
CREATE TABLE area ( 
    id             INTEGER         PRIMARY KEY,
    name           VARCHAR( 100 )  UNIQUE,
    addtime        DATETIME        DEFAULT now,
    is_recommended BOOLEAN         DEFAULT 0,
    introduction   TEXT 
);
--景区收藏表
--编号
--所属景区
--所属用户
--添加时间
DROP TABLE IF EXISTS collect;
CREATE TABLE collect ( 
    id        INTEGER  PRIMARY KEY,
    scenic_id INTEGER  REFERENCES scenic ( id ),
    user_id   INTEGER  REFERENCES user ( id ),
    addtime   DATETIME DEFAULT 'now' 
);
--操作日志表
--编号
--所属管理员
--操作IP
--操作原因
--登录时间
DROP TABLE IF EXISTS oplog;
CREATE TABLE oplog ( 
    id       INTEGER         PRIMARY KEY,
    admin_id INTEGER         REFERENCES admin ( id ),
    ip       VARCHAR( 100 ),
    reason   VARCHAR( 600 ),
    addtime  DATETIME        DEFAULT 'now' 
);
--景区表
--编号
--标题
--星级
--封面
--景区简介
--景区内容描述
--景区地址
--是否热门
--是否推荐
--所属标签
--添加时间
DROP TABLE IF EXISTS scenic;
CREATE TABLE scenic ( 
    id             INTEGER         PRIMARY KEY,
    title          VARCHAR( 255 ),
    star           INTEGER,
    logo           VARCHAR( 255 ),
    introduction   TEXT,
    content        TEXT,
    address        TEXT,
    is_hot         BOOLEAN         DEFAULT '0',
    is_recommended BOOLEAN         DEFAULT '0',
    area_id        INTEGER         REFERENCES area ( id ),
    addtime        DATETIME        DEFAULT 'now' 
);
--意见建议表
--编号
--昵称
--邮箱
--意见内容
--添加时间
DROP TABLE IF EXISTS suggestion;
CREATE TABLE suggestion ( 
    id      INTEGER         PRIMARY KEY,
    name    VARCHAR( 255 ),
    email   VARCHAR( 100 ),
    content TEXT,
    addtime DATETIME        DEFAULT now 
);
--游记表
--编号
--标题
--作者
--游记内容
--所属景区
--添加时间
DROP TABLE IF EXISTS travels;
CREATE TABLE travels ( 
    id        INTEGER         PRIMARY KEY,
    title     VARCHAR( 255 ),
    author    VARCHAR( 255 ),
    content   TEXT,
    scenic_id INTEGER         REFERENCES scenic ( id ),
    addtime   DATETIME        DEFAULT 'now' 
);
--会员表
--编号
--用户名
--密码
--邮箱
--手机号
--个性简介
--头像
--注册时间
DROP TABLE IF EXISTS user;
CREATE TABLE user ( 
    id       INTEGER         PRIMARY KEY,
    username VARCHAR( 100 ),
    pwd      VARCHAR( 100 ),
    email    VARCHAR( 100 )  UNIQUE,
    phone    VARCHAR( 11 )   UNIQUE,
    info     TEXT,
    face     VARCHAR( 255 )  UNIQUE,
    addtime  DATETIME        DEFAULT 'now' 
);
--会员登录日志表
--编号
--所属会员
--登录时间
DROP TABLE IF EXISTS userlog;
CREATE TABLE userlog ( 
    id      INTEGER         PRIMARY KEY,
    user_id INTEGER         REFERENCES user ( id ),
    ip      VARCHAR( 100 ),
    addtime DATETIME        DEFAULT 'now' 
);