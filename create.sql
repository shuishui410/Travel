--�汾��Ϣ��
--�汾��
--���ʱ��
DROP TABLE IF EXISTS alembic_version;
CREATE TABLE alembic_version (
  version_num varchar(32) PRIMARY KEY NOT NULL,
  addtime  DATETIME        DEFAULT 'now' 
) 
--����Ա��
--���
--����Ա�˺�
--����Ա����
DROP TABLE IF EXISTS admin;
CREATE TABLE admin ( 
    id       INTEGER         PRIMARY KEY,
    username VARCHAR( 100 ),
    pwd      VARCHAR( 100 ) 
);
--����Ա��¼��־��
--���
--��������Ա
--��¼IP
--��¼ʱ��
DROP TABLE IF EXISTS adminlog;
CREATE TABLE adminlog ( 
    id       INTEGER         PRIMARY KEY,
    admin_id INTEGER         REFERENCES admin ( id ),
    ip       VARCHAR( 100 ),
    addtime  DATETIME        DEFAULT 'now' 
);
--������
--���
--����
--���ʱ��
--�Ƿ��Ƽ�
--��������
DROP TABLE IF EXISTS area;
CREATE TABLE area ( 
    id             INTEGER         PRIMARY KEY,
    name           VARCHAR( 100 )  UNIQUE,
    addtime        DATETIME        DEFAULT now,
    is_recommended BOOLEAN         DEFAULT 0,
    introduction   TEXT 
);
--�����ղر�
--���
--��������
--�����û�
--���ʱ��
DROP TABLE IF EXISTS collect;
CREATE TABLE collect ( 
    id        INTEGER  PRIMARY KEY,
    scenic_id INTEGER  REFERENCES scenic ( id ),
    user_id   INTEGER  REFERENCES user ( id ),
    addtime   DATETIME DEFAULT 'now' 
);
--������־��
--���
--��������Ա
--����IP
--����ԭ��
--��¼ʱ��
DROP TABLE IF EXISTS oplog;
CREATE TABLE oplog ( 
    id       INTEGER         PRIMARY KEY,
    admin_id INTEGER         REFERENCES admin ( id ),
    ip       VARCHAR( 100 ),
    reason   VARCHAR( 600 ),
    addtime  DATETIME        DEFAULT 'now' 
);
--������
--���
--����
--�Ǽ�
--����
--�������
--������������
--������ַ
--�Ƿ�����
--�Ƿ��Ƽ�
--������ǩ
--���ʱ��
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
--��������
--���
--�ǳ�
--����
--�������
--���ʱ��
DROP TABLE IF EXISTS suggestion;
CREATE TABLE suggestion ( 
    id      INTEGER         PRIMARY KEY,
    name    VARCHAR( 255 ),
    email   VARCHAR( 100 ),
    content TEXT,
    addtime DATETIME        DEFAULT now 
);
--�μǱ�
--���
--����
--����
--�μ�����
--��������
--���ʱ��
DROP TABLE IF EXISTS travels;
CREATE TABLE travels ( 
    id        INTEGER         PRIMARY KEY,
    title     VARCHAR( 255 ),
    author    VARCHAR( 255 ),
    content   TEXT,
    scenic_id INTEGER         REFERENCES scenic ( id ),
    addtime   DATETIME        DEFAULT 'now' 
);
--��Ա��
--���
--�û���
--����
--����
--�ֻ���
--���Լ��
--ͷ��
--ע��ʱ��
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
--��Ա��¼��־��
--���
--������Ա
--��¼ʱ��
DROP TABLE IF EXISTS userlog;
CREATE TABLE userlog ( 
    id      INTEGER         PRIMARY KEY,
    user_id INTEGER         REFERENCES user ( id ),
    ip      VARCHAR( 100 ),
    addtime DATETIME        DEFAULT 'now' 
);