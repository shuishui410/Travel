/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : 127.0.0.1:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-14 13:35:59
*/

--SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
/*DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  pwd varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY name (name)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('1', 'mr', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
/*DROP TABLE IF EXISTS adminlog;
CREATE TABLE adminlog (
  id int(11) NOT NULL AUTO_INCREMENT,
  admin_id int(11) DEFAULT NULL,
  ip varchar(100) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY ix_adminlog_addtime (addtime),
  KEY admin_id (admin_id)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO adminlog VALUES ('1', '1', '127.0.0.1', '2018-03-24 09:26:24');
INSERT INTO adminlog VALUES ('2', '1', '127.0.0.1', '2018-03-24 09:27:09');
INSERT INTO adminlog VALUES ('3', '1', '127.0.0.1', '2018-03-24 09:29:42');
INSERT INTO adminlog VALUES ('4', '1', '127.0.0.1', '2018-08-09 14:52:55');
INSERT INTO adminlog VALUES ('5', '1', '127.0.0.1', '2018-08-10 08:45:20');
INSERT INTO adminlog VALUES ('6', '1', '127.0.0.1', '2018-08-10 10:02:37');
INSERT INTO adminlog VALUES ('7', '1', '127.0.0.1', '2018-08-10 10:38:04');
INSERT INTO adminlog VALUES ('8', '1', '127.0.0.1', '2018-08-10 10:53:51');
INSERT INTO adminlog VALUES ('9', '1', '127.0.0.1', '2018-08-11 10:53:35');
INSERT INTO adminlog VALUES ('10', '1', '127.0.0.1', '2018-08-13 14:14:36');
INSERT INTO adminlog VALUES ('11', '1', '127.0.0.1', '2018-08-14 09:17:10');
INSERT INTO adminlog VALUES ('12', '1', '127.0.0.1', '2018-08-14 11:04:20');
INSERT INTO adminlog VALUES ('13', '1', '127.0.0.1', '2018-08-14 13:28:49');

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
/*DROP TABLE IF EXISTS alembic_version;
CREATE TABLE alembic_version (
  version_num varchar(32) NOT NULL,
  PRIMARY KEY (version_num)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO alembic_version VALUES ('423caff1b936');

-- ----------------------------
-- Table structure for area
-- ----------------------------
/*DROP TABLE IF EXISTS area;
CREATE TABLE area (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  is_recommended tinyint(1) DEFAULT NULL,
  introduction text,
  PRIMARY KEY (id),
  UNIQUE KEY name (name),
  KEY ix_area_addtime (addtime)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO area VALUES ('1', '����', '2018-03-22 10:45:33', '1', '���յı������ѷ�չ��Ϊһ���ִ����Ĵ��У�������ѧ���廪��ѧ���й���ѧԺ�Ƚ����Ϳ��л��������ڱ������������ڽ����й����ڼ�ܻ����칫�ص�ͽ���ҵ�ۼ��أ����������������Ǳ������õ�������798������������֪���ĵ����������ģ����⣬�й����Ҵ��Ժ�������׶����ʻ���3�ź�վ¥���������̨�ܲ���¥�����񳲡�����ˮ���������й���Ⱦ����ִ����Ľ�����Ϊ���ϱ����µ���Ƭ��ÿ���г���1��4700���˵��������Ρ�');
INSERT INTO area VALUES ('2', '����', '2018-03-22 11:40:13', '1', '����������Ϊ���������ǡ����̻��ʾ������޴����ǰ�У��й��Ĵ�԰�ֳ���֮һ������ʮ�β������й�����Ҹ��г��С������й�����2025���Ե���У�������ȫ����������Ե���С���λ�С�2015�й���Ȼָ�����й�ʮ����г��е���λ��');
INSERT INTO area VALUES ('3', '���', '2018-08-10 09:31:59', '1', '�������');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
/*DROP TABLE IF EXISTS collect;
CREATE TABLE collect (
  id int(11) NOT NULL AUTO_INCREMENT,
  scenic_id int(11) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY ix_collect_addtime (addtime),
  KEY scenic_id (scenic_id),
  KEY user_id (user_id)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO collect VALUES ('3', '1', '7', '2018-08-13 09:25:14');

-- ----------------------------
-- Table structure for oplog
-- ----------------------------
/*DROP TABLE IF EXISTS oplog;
CREATE TABLE oplog (
  id int(11) NOT NULL AUTO_INCREMENT,
  admin_id int(11) DEFAULT NULL,
  ip varchar(100) DEFAULT NULL,
  reason varchar(600) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY ix_oplog_addtime (addtime),
  KEY admin_id (admin_id)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of oplog
-- ----------------------------
INSERT INTO oplog VALUES ('1', '1', '127.0.0.1', '��Ӿ����˴��볤��', '2018-03-24 11:19:05');
INSERT INTO oplog VALUES ('2', '1', '127.0.0.1', '��ӵ������', '2018-03-24 11:23:57');
INSERT INTO oplog VALUES ('3', '1', '127.0.0.1', '��Ӿ����ú�԰', '2018-03-24 13:01:27');
INSERT INTO oplog VALUES ('4', '1', '127.0.0.1', '��Ӿ�������̶����ɭ�ֹ�԰', '2018-03-24 13:05:54');
INSERT INTO oplog VALUES ('5', '1', '127.0.0.1', '��Ӿ���α���ʹ�����Ժ', '2018-03-24 13:10:08');
INSERT INTO oplog VALUES ('6', '1', '127.0.0.1', '����μ����������ķ�ʽ�����ʹ�', '2018-03-24 13:24:56');
INSERT INTO oplog VALUES ('7', '1', '127.0.0.1', '��Ӿ������������', '2018-08-10 09:03:35');
INSERT INTO oplog VALUES ('8', '1', '127.0.0.1', 'ɾ���������', '2018-08-10 09:04:22');
INSERT INTO oplog VALUES ('9', '1', '127.0.0.1', 'ɾ���������', '2018-08-10 09:31:23');
INSERT INTO oplog VALUES ('10', '1', '127.0.0.1', '��ӵ�������', '2018-08-10 09:50:41');
INSERT INTO oplog VALUES ('11', '1', '127.0.0.1', 'ɾ����������', '2018-08-10 10:02:48');
INSERT INTO oplog VALUES ('12', '1', '127.0.0.1', 'ɾ���������', '2018-08-10 10:55:42');
INSERT INTO oplog VALUES ('13', '1', '127.0.0.1', '��ӵ�������', '2018-08-10 10:57:46');
INSERT INTO oplog VALUES ('14', '1', '127.0.0.1', 'ɾ����������', '2018-08-10 10:58:50');
INSERT INTO oplog VALUES ('15', '1', '127.0.0.1', 'ɾ���������������', '2018-08-10 13:31:18');
INSERT INTO oplog VALUES ('16', '1', '127.0.0.1', 'ɾ���������', '2018-08-14 10:17:17');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
/*DROP TABLE IF EXISTS scenic;
CREATE TABLE scenic (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) DEFAULT NULL,
  star int(11) DEFAULT NULL,
  logo varchar(255) DEFAULT NULL,
  introduction text,
  content text,
  address text,
  is_hot tinyint(1) DEFAULT NULL,
  is_recommended tinyint(1) DEFAULT NULL,
  area_id int(11) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY logo (logo),
  UNIQUE KEY title (title),
  KEY ix_scenic_addtime (addtime),
  KEY area_id (area_id)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO scenic VALUES ('1', '�ʹ�����Ժ', '4', '20180814133357a1167f9d31c7472eb2b482571696b050', '�ʹ������Ͻ��ǣ����й����������ϱ�������������ģ����ľ�ʽṹ�Ž���Ⱥ������Ϊ���������֮�ס���\r\n�ʹ������ֵ��������죬�����䲼���빦�÷�Ϊ���⳯���롰��͢�����󲿷֡���Ǭ����Ϊ�磬Ǭ��������Ϊ�⳯���Ա�Ϊ��͢��\r\n�⳯Ҳ��Ϊ��ǰ��������̫�͵�(���ǵ�)���к͵���͵������Ϊ���ģ��Ƿ⽨�ʵ���ʹȨ��������ʢ��ĵط���\r\n��͢��Ǭ�幬����̩�������������Ϊ���ģ��Լ���������Ķ����������������Ƿ⽨�����������ס֮����Ҳ�����׳Ƶġ�������Ժ����\r\n�ʹ�������д�����������ͳ�����ϰ������ռȫ����������������֮һ���ӱ��ÿ��11���14�����ӱ���ʾ�����ɴ����', '<p>�����ʹ����й����������Ļʼҹ���ɳ�Ϊ�Ͻ��ǣ�λ�ڱ��������ߵ����ģ����й��Ŵ���͢����֮�����������ʹ��������Ϊ���ģ�ռ�����72��ƽ���ף��������Լ15��ƽ���ף��д�С������ʮ���������ݾ�ǧ��䡣���������ִ��ģ��󡢱�����Ϊ������ľ�ʽṹ�Ž���֮һ��<br />\r\n�����ʹ����������������꣨1406�꣩��ʼ���裬���Ͼ��ʹ�Ϊ����Ӫ����������ʮ���꣨1420�꣩���ɡ�����һ�������γǳأ��ϱ���961�ף�������753�ף�����Χ�и�10�׵ĳ�ǽ�������п�52�׵Ļ��Ǻӡ��Ͻ����ڵĽ�����Ϊ�⳯����͢�����֡��⳯������Ϊ̫�͵�к͵���͵ͳ�������ǹ��Ҿ��д����ĵط�����͢��������Ǭ�幬����̩���������ͳ�ƺ��������ǻʵۺͻʺ��ס��������<br />\r\n�����ʹ�����Ϊ�������֮�ף������ʹ�����������������Ӣ���׽𺺹��������׹�������˹����ķ�ֹ������ǹ���AAAAA�����ξ����� 1961�걻��Ϊ��һ��ȫ���ص����ﱣ����λ��1987�걻��Ϊ�����Ļ��Ų���</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201803240935436d8289e1792e4a7ca38dbb90855404dd.jpg\" style=\"height:454px; width:1258px\" /></p>\r\n\r\n<blockquote>\r\n<h2><strong>������֪��</strong></h2>\r\n\r\n<p><big>�绰��010-85007421</big></p>\r\n\r\n<p><big>��ַ��<a href=\"http://www.dpm.org.cn/\" target=\"_blank\">http://www.dpm.org.cn</a></big></p>\r\n\r\n<p><big>����ʱ�䣺�������ڼ��պ����ڣ�ÿ��7��1����8��31�գ��⣬�ʹ�����Ժȫ��ʵ����һȫ��չݵĴ�ʩ��</big></p>\r\n\r\n<p><big>��Ʊ����1��ÿ��4��1����10��31��Ϊ����������Ʊ60Ԫ/�ˣ�<br />\r\n��2��ÿ��11��1��������3��31��Ϊ����������Ʊ40Ԫ/�ˡ�</big></p>\r\n</blockquote>\r\n', '�����ж�������ɽǰ��4��', '1', '1', '1', '2018-03-22 12:48:16');
INSERT INTO scenic VALUES ('2', '�˴��볤��', '5', '2018081110544934001363864d498aaef4076eb0691469.jpg', '�˴��볤�����������б�����õ�һ�Σ�Ҳ����ߴ����Ե�һ�Σ��ǳ�����Ҫ�ؿھ�ӹ�ص�ǰ�ڣ����θߴ�1015�ף�������Ҫ���ǹؼ�̣������Ǳ��ұ���֮�ء����ϰ˴��볤�ǣ���ĿԶ����ɽ��������۳��վ��ı���ɽ�����Ӳ������˴��볤����ɽ�ƶ���ΰ��ɽ���򳤳Ǹ����վ������������ǷǺú������˴��볤���ǹŽ����������ʿ�����������ıص�֮��������Ϊֹ�����а�������ɡ����ж����˵����ڵ����ٶ�λ����֪����ʿ�����ϰ˴��볤��һ�������ɽ����ɫ��', '<p>�˴����������������ĳ��ǡ������й����������һ�γ��ǣ�Ҳ������Ϊֹ������ã���������һ���������ǡ�����в���ȫ��3741�ס�������1504�꣬�س��ж������ţ����Ŷ���&ldquo;��ӹ����&rdquo;�����ڼξ�ʮ���꣨1539�꣩�����Ŷ���&ldquo;������Կ&rdquo;����������ʮ�꣨1582�꣩��<br />\r\n���ﳤ�ǰ˴���ν���1505�꣨��������ʮ���꣩����խ�����ж������ţ��ϱ��������һ��ڣ������سǳ�ǽ��̨��������ש����ڡ���ǽ�����������Ϸ�ש��Ƕ����ʵ���ڲ�Ϊ��ǽ�����Ϊ��ǽ����ǽ�Ϸ��ж�ڣ��·����䶴����ǽ�ߵͿ�խ��һ��ƽ����7�׶࣬��Щ�ضθߴ�14�ס�ǽ��ƽ����6.5�ף�����5�׶࣬���������ۻ�ʮ�˲�����<br />\r\n�˴���͸����ĳ��Ǳ���Ϊ�ྩ�˾�֮һ�ľ�ӹ���䡣</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201803241117457230a0ef87ce408eb920e45593fce6dc.jpg\" style=\"height:173px; width:291px\" />&nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"/static/uploads/ckeditor/201803241118181610a8b216f341eeb7d055ba2a73a97a.jpg\" style=\"height:180px; width:280px\" /></p>\r\n\r\n<h2><strong>������֪��</strong></h2>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>\r\n	<p>�绰</p>\r\n\r\n	<p>010-69121383;010-69121226</p>\r\n	</li>\r\n	<li>\r\n	<p>��ַ</p>\r\n\r\n	<p><a href=\"http://www.badaling.cn/\" target=\"_blank\">http://www.badaling.cn</a></p>\r\n	</li>\r\n	<li>\r\n	<p>��Ʊ</p>\r\n\r\n	<p>������11-����3�£�35Ԫ/�ˣ�������4-10�£�40Ԫ/��<br />\r\n	����ѧ�������˵�17.5Ԫ/�ˣ�����ѧ�������˵�20Ԫ/��</p>\r\n	</li>\r\n	<li>\r\n	<p>����ʱ��</p>\r\n\r\n	<p>������4~10�£���06:30~19:00<br />\r\n	������11~3�£���07:00~18:00</p>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n', '�����������ؾ���ɽ�ع��ŵ�����', '1', '1', '1', '2018-03-24 11:19:05');
INSERT INTO scenic VALUES ('3', '�ú�԰', '4', '20180324130127eb365ba129fb4636a8f033e111c8efa2.jpg', '�ú�԰�����ڱ������������й��ŵ�԰��֮�ף������Լ290���꣬������ɽ����������ɡ�ȫ԰��3�����������ٵ�Ϊ���ĵ����λ�����������á�������Ϊ����ĵۺ���������������ɽ����������ɵķ羰��������ȫ԰����ɽȺ��Ϊ��������֮����Ⱥ��԰��ɽ��������Ϊһ�壬ʹ��ɫ������1998��12��2�����롶�����Ų���¼����', '<p>�ú�԰������ɽ��������Ϊ����������ռ�ú�԰��������ķ�֮�������˺�ɽ�����е��þ�������֯ͼ��������Ҫ��������������ɽ�ϱ��������ϡ�����ɽ��Ϊǰɽ����ɽ�����֣�ǰɽ�Զ����������������޾������������á����Ƶ�廪�������Ƹ󡢹�һ¥�����ݡ������ε�֪�����ۡ���ɽ�ϱ�������Ϊ��ģ���ĺ��ط�������������Ĵ��ޡ������龳��������ӡ֮��ȵȣ���Χ��׺������С��ɽ��԰�֣������ݽ֡����Գǹء����и��ഺ԰���淼�õȽ����������������������죬�ֱ���Ϊ�Ϻ���������õ����ξ��󵺡���������һ�����̽����һ��Ϊ��������ʱ����Χǽ���������˶��̡�<br />\r\n�ú�԰����Ҫ����ɰ����������֣��ֱ��ǵ��þ������ǵۺ���������ס�����ڣ�������ɽ��������������������֯ͼ���������ص�ũ��ɫ�ʣ������Ⱦ��������ᾰ��������ǰɽ�ƻ�������¥��ֹ�ں�ɽ�ȸ�������¥������Ϊһ��֪��԰�ֲ���ݣ�ӵ�зḻ��ʽ��԰�ֽ����;���Ӫ���ַ����������й���ͳ�����е�̨ͤ¥�����̨�á�</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20180324130057a797628bce3446ebae3b149d8c6e5358.jpeg\" style=\"height:370px; width:690px\" /></p>\r\n', '�����к������½�����·19��', '1', '1', '1', '2018-03-24 13:01:27');
INSERT INTO scenic VALUES ('4', '����̶����ɭ�ֹ�԰', '5', '20180324130554b0efff8d6f114c34802ee773dbe996e2.jpeg', '����̶��������״������������Ϊ̨������̶�����̶����԰����ľïʢ���������£������Ծ��£��ļ�ò��ͬ��\r\n��ò�ʵ�ɽ����״���д�Сɽ��119�������к��θ���200�׵ľ��н�120����������̶����ɽɫΪ�������86��ɽ���Ա�����������̶�ߣ����������ݺᣬ���͵��֣����ҿ��Ե�ɽ���̶ˮȫ����\r\n����ɽ�·�������ѣ��������Դ��ɽ������ߣ��Ǿ��ѵĶȼ�ʤ�ء����⣬԰��ֲ����ģ�ⳤ��ɽֲ�ﴹ�طֲ���������ɽ����ҩ��ֲ���ǧ���֡�', '<p>����̶����λ�ڼ���ʡ�����ж��ϲ��������¾��ÿ�������������������㳡��18����������Ϊ96.38ƽ���������ˮ�����Ϊ5.3ƽ�����ɭ�ָ����ʴﵽ96%���ϡ�����̶����������״����������̨������̶��Ϊ���̶��<br />\r\n����̶����1934�����˹��޽��ĵ�һ��Ϊ�����г�����ˮ��ˮԴ�أ�������ʱ�ڳ�&rdquo;ˮԴ��&ldquo;��&rdquo;��ˮ��&ldquo;������̶����������&rdquo;���޹������&ldquo;֣Т��Ķ����ӣ�ʱ��&rdquo;���޹���������־ֳ�&ldquo;��֣�����𡣾����ڵ�ɭ��Ϊ�˹����죬����30�����ֵ�����ɭ����̬��ϵ������������λ���ƣ�ʹ֮��Ϊ&ldquo;���������е�һ�龻��&rdquo;����&ldquo;���޵�һ���˹��ֺ�&rdquo;��&ldquo;�̺�����&rdquo;��&ldquo;��������&rdquo;֮�������ǳ����е���̬�̺˺ͳ�����Ƭ��<br />\r\n����̶���������Ծ��£��ļ�ò��ͬ�����������˹�ɭ����ɽ��ˮ��������̬���󹹳��˾���̶�ļ���õķ��黭������̶��Ȼ��Ϊ��̤�ࡢ�ı�����;��������ѩ������ȥ����<br />\r\n����̶��������̬�������ģ�����������������ģ���Ϊ���������Ľںͳ�����ѩ�ڵ������أ���̿�չ�˾���̶�������ʻ�ѩ�ڡ�����̶ɭ�������ɡ�����̶ɭ�ֶ�����������̶���г������ɡ�����������������ᡢ�����������δ󼯵����ºͻ�������ڳ���������ʱ�С����е����ʽ���������֪�������Ļ���ľۼ��ء�</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/2018032413055096c1be099bdf427d8cdd3e985d76cae0.jpg\" style=\"height:125px; width:402px\" /></p>\r\n', '����ʡ�����о��¿�����', '1', '1', '2', '2018-03-24 13:05:54');
INSERT INTO scenic VALUES ('5', 'α���ʹ�����Ժ', '5', '20180324131008f4e5802528d847279cdfb84d8974cdc1.jpeg', 'α���ʹ�����Ժ����Ҫ����������¥������¥����Զ¥�����ֵͬ�µ�黭�⡢��޹�š������š������š����������ż������÷��ն��ȣ����οͿ��ŵĻ��������Ͷ�������ʷ���йݡ�', '<p>1931���һ���±���ձ���ֲ�峯ĩ���ʵ۰��¾���&middot;���ǽ������޹����Դ˿����й���������ʱ���л������1949��������л����񹲺͹������������޹������Գ���Ϊ&ldquo;α���޹�&rdquo;��&ldquo;α��&rdquo;��1932��3��9�����Ǿ������޹�ִ����4��3��ִ����Ǩ��ԭ����ȶ�˾ֹ������ʱ�ڹ����֡���������ʡ���񣩾�ַ��1934��3��1�����ǳƵۣ�ִ�������ظ�Ϊ���ڸ������ձ���ʵĹ�͢�лʹ������ǵ������͢��ֻ�ܶ����Ϊ&ldquo;�۹�&rdquo;����1945��8���ձ�Ͷ��ǰ�����޹��۹�һֱ��Ϊ���ǰ칫������ĵط����乬͢�����Ϊ��������칫����͢�͵����������͢�������֣������������赡�1945�����޹������Ժ󣬵۹������������ء�<br />\r\n1962�������޹��۹���ַ�ϳ���α�ʹ����йݣ�1964���뼪��ʡ����ݺ���칫��1982��ָ����ƣ�1984����ʽ���⿪�š�2000��7��1�ջ��鳤���й���2001��2��8�ո���Ϊα���ʹ�����Ժ������ȫ�����ޣ������ָ���ò��2013�꣬�л����񹲺͹�����Ժ��֮��α���ʹ�����α����������ַ֮�����������ȫ���ص����ﱣ����λ�����ִ���Ҫʷ���������Խ�������<br />\r\n2017�꣬α���ʹ�����Ժ���й������Э����Ϊ����������һ������ݡ�</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201803241309567f4e4bffb6f04a8498ff137b9a3558d6.jpg\" style=\"height:498px; width:750px\" /></p>\r\n', '����ʡ�����п�����⸴��·5��', '1', '1', '2', '2018-03-24 13:10:08');

-- ----------------------------
-- Table structure for suggestion
-- ----------------------------
/*DROP TABLE IF EXISTS suggestion;
CREATE TABLE suggestion (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  content text,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY ix_suggestion_addtime (addtime)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of suggestion
-- ----------------------------
INSERT INTO suggestion VALUES ('1', 'andy', 'andy@qq.com', 'haha', '2018-03-22 14:56:05');
INSERT INTO suggestion VALUES ('2', 'andy', 'andy@qq.com', 'haha', '2018-03-22 14:58:57');
INSERT INTO suggestion VALUES ('3', 'andy', 'andy@qq.com', 'haha', '2018-03-22 14:59:55');
INSERT INTO suggestion VALUES ('4', 'andy', 'andy@qq.com', 'haha', '2018-03-22 14:59:59');
INSERT INTO suggestion VALUES ('5', 'andy', 'andy@qq.com', 'haha', '2018-03-22 15:00:03');
INSERT INTO suggestion VALUES ('6', 'andy', 'andy@qq.com', 'haha', '2018-03-22 15:00:43');
INSERT INTO suggestion VALUES ('7', 'andy', 'andy@qq.com', 'haha', '2018-03-22 15:00:48');
INSERT INTO suggestion VALUES ('8', 'andy', 'andy@qq.com', 'haha', '2018-03-22 15:01:12');
INSERT INTO suggestion VALUES ('10', 'andy', 'andy@qq.com', 'haha', '2018-03-22 15:21:12');
INSERT INTO suggestion VALUES ('11', '���տƼ���˿', 'funs@qq.com', '�������տƼ�����ʵ��˿��ϣ�����ǳ�����ľ�Ʒͼ�飡', '2018-03-22 15:22:25');

-- ----------------------------
-- Table structure for travels
-- ----------------------------
/*DROP TABLE IF EXISTS travels;
CREATE TABLE travels (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) DEFAULT NULL,
  author varchar(255) DEFAULT NULL,
  content text,
  scenic_id int(11) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY title (title),
  KEY ix_travels_addtime (addtime),
  KEY scenic_id (scenic_id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of travels
-- ----------------------------
INSERT INTO travels VALUES ('1', '�������ò�ȥ�ĵط������ʹ�һ����', '�Ϸ�', '<p>��������Ʊ��<br />\r\n�ʹ���Ʊ�۸񣺳�������60Ԫ������40Ԫ��ѧ��Ʊȫ��20Ԫ���䱦�ݺ��ӱ�������շ�10Ԫ/�ˣ�ѧ��֤��ۡ�<br />\r\n����ȥ��ʱ��ʹ��������ֳ���Ʊ�������Ժ��ʵ��ȫ������Ʊ�ι��ˡ�<br />\r\n��Ʊ��ǰ10��������Ԥ�ۣ�����Ϊֹ��һ�����֤ÿ����Ժ���޹�һ����Ʊ�������������һ�����ʹ�����ԺҲ����һ�չݡ�<br />\r\nȥ֮ǰ�����עһ�¹ʹ�����Ժ�Ĺ�����http://gugong.228.com.cn/�������Ǹ�����һ�������е��οͣ����˿��Կ�����Ʊ�͹�����Ʊ�����ܿ������µ�һЩ��Ϣ���棬��������չ��������ɣ���Ȼ��Щ������ʱά�޲��ڹ���ͨ�棬�����ܺù�������Թ滮·���кܴ�İ�����<br />\r\n����������������ǰ��Ĵ���Ʊ���䱦�ݵ���Ʊ��ˢ���֤�Ϳ�����԰��<br />\r\n��ûʲô�õĽ�������<br />\r\n���˰�����ܿ������������񴦡�<br />\r\n�������������޼۸񣺺������������20.00Ԫ/̨����������40.00Ԫ/̨����Ѻ�𣬲ι�����ڳ�Ժǰ���������黹���ɡ�<br />\r\n�Һ�����һ������һ̨��ʹ�������ĸ�����ȱ�����ŵ㣬���Բ��⡣<br />\r\n��˵�����Զ���Ӧ�ģ��ߵ����ｲ��������������Ҳͦ�����ж���汾������������������ʦ���Ĺ��°棬������Ȥ����������ȱ��Ҳ�����ԡ�<br />\r\n1����Ϊ�ǵ�������������ڻ������ӵĵط�����ʹ�������ĺܴ�Ҳ�����������˵��ʲô��<br />\r\n2���ߵ�һЩ�����ܼ��ĵط�������������ұ�������������������������ת�˺ܾã���ʼ�վ�ʶ�𲻵��������ڵ�λ�á��������ǵ������ٹ�����ȴ�����ǻʼ�������ݡ�����һ����Ϊ�ǲ��ǽ��������ˣ����ܵ����񴦻���һ����������Ա���Ǻܹ�ֱ��˵������������ģ����Ǻ��飬���˲�������Ҳû�취����Ϊ���Զ���λ���⣬�ֲ���ѡ���Լ������ĵط������Ծ͵������Ǻܶ�ط������Ҳû���������⡣<br />\r\n3����������ֻ��һ�Σ������û�����壬������;��С�Ķ�����������©���ˣ�Ҳֻ�����ϵ�ù��<br />\r\n��ʵ�ʹ�ֻҪ���չݣ����������������ٵ�ʱ��һ����һ�������ţ����벻�����εĽ��ⶼ���ѡ���Ȼ����ֻ�����ǵĿ�������������������Ҫ�Ļ�Ҳ������һ�����ã�Ȩ����ͼ��Ҳ�С�<br />\r\n�Һ������ڹʹ�����һ���졣�����ϵ���ͷ�ܶ��������ϵ���ȥ¥�ա�<br />\r\n�ܶ���˵�ʹ�û��˼�����ǿ������Ĳ��ķ��ӡ��ҵ�������һ�����ĳ�ֵ��<br />\r\n�ҽ������ʷ������������ʷ����Ȥ�����ǣ����Զ�Ԥ��һЩʱ��������Ͻ��ǣ����ỹ�����޾�ϲ��</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" class=\"left\" src=\"/static/uploads/ckeditor/2018032411373051faede1c35748c7b2347dc0c6397e29.png\" style=\"height:296px; width:660px\" /></p>\r\n', '1', '2018-03-22 13:49:32');
INSERT INTO travels VALUES ('2', '���������ķ�ʽ�����ʹ�', 'Andy', '<p>�������Ͻ��ǵ����ţ�Ҳ�ǽ���ʹ�����Ժ�����š�λ���Ͻ���������ʦ�ϱ����ߣ�ʼ������������ʮ���꣨1420�꣩��ƽ��ʾ޴��&ldquo;��&rdquo;���Σ��м�㳡�������9900ƽ���ס����������յ������ߵ��������������������¥����Ӱ������������������ʱ��Ҳ������������&mdash;&mdash;����֮�ţ������ʾ��������֮����<br />\r\n<br />\r\n������¥��̨ͨ�߽�37.9�ף����е���¥�����е���弹�����£��������ż䣨60.05�ף���������䣨25�ף�����Ϊ�����ľ���֮������&ldquo;��&rdquo;Ϊ����������֮����&ldquo;��&rdquo;������֮�У�����֮�������ɼ�������λ���ϵ���Ҫ�ԡ�<br />\r\n<br />\r\n�����������ϣ����������ǻ����ĺ�ɫ����ֻ��ǽ�����²ʻ�Ҳ�Ժ�ɫΪ������ʾ�������󡣰���ͳ�����޵ķ�λ�������������׻�������ȸ�������䣩���Ϸ�������ȸ����ˣ�Ϊ������������5��¥����ɣ��ߵʹ��䣬������Ȼ����������չ�ᣬ���ֳ����¥��<br />\r\n<br />\r\n��¥�����С�������찲����������û�����찲�������������У�����ȡ&ldquo;�п�����&rdquo;�����������ʵ�ר��������ֻ�лʺ��ڴ��ʱ�����Գ���ϲ�δӴ������о�������һ�Ρ�����ͨ������ѡ�ε�״Ԫ�����ۡ�̽���ɴ����ų���һ�Ρ������Ź������Ա���룬�����Ź���ʦ�������롣��׫�ģ����Ͻ���100����<br />\r\n<br />\r\n�������ŵ��Զﴫ��<br />\r\n���Ӿ��ﾭ��������&ldquo;�Ƴ�����ն��&rdquo;������ʥ�������������������������̷�������ʵ����Ȼ��������Ҫ����;��������һ��͢ÿ�궬��������ž���¡�صİ�˷��ʽ��Ҳ���ǰ䲼�����������ս�������󣬻�������ǰ�㳡�����ܷ���ʽ�����Դ�����ǣ�����͢�ȴ�ŭ�ʵ۵Ĵ󳼡�͢��ͨ�׵�˵�����ù��Ӵ�ƨ�ɵ�һ���̷�����Ȥ��������͢�ȵ�̫��������ȡ��¸��񣬺���&ldquo;��ʵ��&rdquo;��&ldquo;���Ĵ�&rdquo;��&ldquo;��ʵ��&rdquo;���߹��&ldquo;���Ĵ�&rdquo;���������</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/2018032413245286a7d302f4654833bf1873e40249ce63.png\" style=\"height:305px; width:656px\" /></p>\r\n', '1', '2018-03-24 13:24:56');

-- ----------------------------
-- Table structure for user
-- ----------------------------
/*DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  pwd varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  face varchar(255) DEFAULT NULL,
  info text,
  phone varchar(11) DEFAULT NULL,
  username varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  UNIQUE KEY phone (phone),
  UNIQUE KEY face (face),
  KEY ix_user_addtime (addtime)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('4', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 'andy@mrsoft.com', '2018-03-23 14:26:12', null, null, null, 'Andy');
INSERT INTO user VALUES ('5', 'pbkdf2:sha256:50000$qFfVpeJK$9bc7ff46019ff211c31081e016d42770be6fae4df99e2f8d386ebd00e852ebda', 'zhangsan@qq.com', '2018-08-10 10:50:34', null, null, null, '����');
INSERT INTO user VALUES ('7', 'pbkdf2:sha256:50000$sSujvFmg$0958ae9e146e41e1301d38c55d424fe9c1fae98c0843e84234fefe1aab1a7d38', 'lisi@qq.com', '2018-08-10 16:10:13', null, null, null, '����');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
/*DROP TABLE IF EXISTS userlog;
CREATE TABLE userlog (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) DEFAULT NULL,
  ip varchar(100) DEFAULT NULL,
  addtime datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY ix_userlog_addtime (addtime),
  KEY user_id (user_id)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
*/
-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO userlog VALUES ('1', '4', '127.0.0.1', '2018-03-23 10:06:15');
INSERT INTO userlog VALUES ('2', '4', '127.0.0.1', '2018-03-23 14:28:54');
INSERT INTO userlog VALUES ('3', '5', '127.0.0.1', '2018-08-10 10:50:56');
INSERT INTO userlog VALUES ('4', '7', '127.0.0.1', '2018-08-11 09:12:38');
INSERT INTO userlog VALUES ('5', '7', '127.0.0.1', '2018-08-11 09:21:02');
INSERT INTO userlog VALUES ('6', '7', '127.0.0.1', '2018-08-13 09:24:59');
INSERT INTO userlog VALUES ('7', '5', '127.0.0.1', '2018-08-13 09:33:05');
INSERT INTO userlog VALUES ('8', '5', '127.0.0.1', '2018-08-13 10:35:49');
