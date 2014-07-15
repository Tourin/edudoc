/*
Navicat MySQL Data Transfer

Source Server         : loacl
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : educom

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-07-15 23:03:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `html`
-- ----------------------------
DROP TABLE IF EXISTS `html`;
CREATE TABLE `html` (
  `htmlid` int(11) NOT NULL AUTO_INCREMENT,
  `html` text,
  `linkid` int(11) DEFAULT NULL,
  PRIMARY KEY (`htmlid`),
  KEY `fk_html_1` (`linkid`),
  CONSTRAINT `fk_html_1` FOREIGN KEY (`linkid`) REFERENCES `link` (`linkid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of html
-- ----------------------------

-- ----------------------------
-- Table structure for `info_admin`
-- ----------------------------
DROP TABLE IF EXISTS `info_admin`;
CREATE TABLE `info_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_admin
-- ----------------------------
INSERT INTO `info_admin` VALUES ('1', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'tanglinpeixin@qq.com');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `linkid` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(200) DEFAULT NULL,
  `html` text,
  `regex` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', 'http://zfcg.nantong.gov.cn/col/col30067/index.html', '南通市政府采购网公开招标body{margin-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;background-image:url(images/background.jpg);}.style3{padding-left:40px;FONT-SIZE:10pt;COLOR:#F4A71D;FONT-FAMILY:\"宋体\";LINE-HEIGHT:18px;font-weight:bold;}.style4{padding-left:40px;FONT-SIZE:15pt;COLOR:#000000;FONT-FAMILY:\"黑体\";font-weight:bold;}.style14{color:#ff5500}.style15{color:#000000;font-weight:bold;}.style16{color:#000000}.style18{color:#FFFFFF}.style19{color:#FF5500;font-weight:bold;}.style20{color:#265EA2}.style24{color:#E76D22;font-size:12px;}.style26{color:#E76D22;font-size:12px;}.style28{color:#15539C;font-size:12px;font-weight:bold;}.style29{color:#FF5700}.style30{text-align:center;color:#000066;font-size:18px;font-weight:bold;LINE-HEIGHT:40px;}.style31{padding-left:10px;}.marquee{overflow-y:hidden;word-break:break-all;padding:10px;}.marqueediv{padding-bottom:10px;}window.onload=function(){if(document.getElementById(\"web_title\").innerText==\"\")document.getElementById(\"web_title\").innerText=\"政府采购网\"};首页中心概况采购目录办事指南下载中心主任之窗functioninitArray(){for(i=0;i12)?hrs-12:hrs);clckm=((min=12)?\"下午\":\"上午\";varstnr=\"\";varns=\"0123456789\";vara=\"\";functiongetFullYear(d){yr=d.getYear();if(yr市级采购公告公开招标竞争性谈判单一来源网上竞价网上询价其他询价结果公示部门、县（区）采购公告公开招标varInitData49468;InitData49468=[\'南通市工贸高级技工学校小车运行控制等实训装置项目招...[2014-07-14]\',\'江苏省南通卫生高等职业技术学校新校区食堂厨具采购与...[2014-07-14]\',\'南通市地下水基础环境状况调查评估项目招标公告[NT...[2014-07-11]\',\'南通卫生高等职业技术学校新校区宿舍楼和教学楼空调采...[2014-07-09]\',\'江苏省南通卫生高等职业技术学校桌面云系统采购项目招...[2014-07-09]\',\'南通市公安消防支队消防车采购项目招标公告[NTZC...[2014-07-09]\',\'南通市园林绿化管理处2014年绿地管护第一批项目招...[2014-07-09]\',\'江苏省海洋渔业指挥部实验室设备采购项目招标公告[N...[2014-07-09]\',\'南通市第二中学保安服务采购项目招标公告[NTZC2...[2014-07-09]\',\'南通广播电视台网络存储设备项目招标公告[NTZC2...[2014-07-09]\',\'南通大学附属中学报告厅座椅及报告台采购项目招标公告...[2014-07-07]\',\'南通市规划局城市规划编制项目招标公告[NTZC20...[2014-07-07]\',\'南通市小海中学报告厅桌椅采购项目招标公告[NTZC...[2014-07-04]\',\'南通市2014年度濠河景区十一立体花卉布置工程项目...[2014-07-04]\',\'南通卫生高等职业技术学校新校区物业管理、安保服务项...[2014-07-04]\',\'南通市电教馆家校互动平台建设项目招标公告[NTZC...[2014-07-04]\',\'南通市公安消防支队远程供水泵项目招标公告[NTZC...[2014-07-02]\',\'南通市公安消防支队轻型水罐消防车项目招标公告[NT...[2014-07-02]\',\'南通市公安消防支队城市多功能主战消防车项目招标公告...[2014-07-02]\',\'南通市公共交通总公司自动化洗车台采购及安装项目招标...[2014-06-30]\',\'南通市气象局预报大厅弱电集成项目招标公告[NTZC...[2014-06-26]\',\'南通市红十字会救护培训器材采购项目招标公告[NTZ...[2014-06-25]\',\'南通市污染源自动监控系统第三方运行维护项目招标公告...[2014-06-24]\',\'南通国有资产投资控股有限公司2014企业债发行主承...[2014-06-23]\',\'南通市公安消防支队城市多功能主战消防车（国产）采购...[2014-06-20]\',\'南通市公安消防支队8吨泡沫水罐消防车采购项目招标公...[2014-06-20]\',\'南通市公安消防支队轻型泡沫水罐消防车采购项目招标公...[2014-06-20]\',\'南通市地下水基础环境状况调查评估项目招标公告[NT...[2014-06-20]\',\'南通市少年儿童图书馆新馆内装饰施工及设备工程项目招...[2014-06-18]\',\'南通市工贸技师学院专业实习实训设备项目招标公告[N...[2014-06-18]\',\'南通通明投资实业有限公司供电主材项目招标公告[NT...[2014-06-18]\',\'南通大学附属中学报告厅座椅及报告台采购项目招标公告...[2014-06-18]\',\'南通市图书馆智能信息管理系统项目招标公告[NTZC...[2014-06-16]\',\'南通市交警各大队一键式指挥控制平台项目招标公告[N...[2014-06-16]\',\'南通市小海中学报告厅灯光、音响、视频系统项目招标公...[2014-06-13]\',\'南通市节水办节水设备采购项目招标公告[NTZC20...[2014-06-13]\',\'南通市水利局防汛应急指挥系统（硬件）项目招标公告[...[2014-06-13]\',\'南通广播电视台调频发射机项目招标公告[NTZC20...[2014-06-13]\',\'南通市图书馆新馆智能化集成项目招标公告[NTZC2...[2014-06-12]\',\'江苏省南通第一中学电影院座椅采购招标公告[NTZC...[2014-06-10]\',\'南通市公安消防支队消防车项目招标公告[NTZC2...[2014-06-10]\',\'南通市公共交通总公司加油装置项目招标公告[NTZC...[2014-06-10]\',\'江苏省南通中等专业学校物业管理项目招标公告[NTZ...[2014-06-09]\',\'南通市5所学校建筑耗能分项计量项目招标公告[NTZ...[2014-06-04]\',\'南通市第二中学保安服务采购项目招标公告[NTZC2...[2014-06-04]\',\'南通市工贸高级技工学校数控机床维修实训设备项目招标...[2014-06-04]\',\'南通市公安局巡特警支队音视频指挥调度系统和远程视频...[2014-06-03]\',\'南通市水利局2014年水利发展规划项目招标公告[N...[2014-05-29]\',\'南通城市照明管理处路灯灯具、灯杆等主材、音响监控工...[2014-05-29]\',\'江苏省南通地方税务局文化展厅布展工程招标公告[NT...[2014-05-28]\',\'南通市国土资源“一张图”工程建设软件项目招标公告[...[2014-05-28]\',\'南通市应急指挥平台（一期工程）建设项目招标公告[N...[2014-05-26]\',\'南通市肿瘤医院医用电梯采购及安装招标公告[NTZC...[2014-05-21]\',\'南通市公安局崇川分局视频系统升级改造项目招标公告[...[2014-05-21]\',\'南通市运输管理处办公家具采购项目招标公告[NTZC...[2014-05-21]\',\'南通职业大学教学用台式计算机项目招标公告[NTZC...[2014-05-20]\',\'南通市第三中学笔记本电脑采购项目招标公告[NTZC...[2014-05-19]\',\'南通市农产品质量检验测试中心仪器设备采购招标公告[...[2014-05-15]\',\'江苏省南通卫生高等职业技术学校办公家具项目招标公告...[2014-05-14]\',\'南通市卫生应急指挥平台二期项目招标公告[NTZC2...[2014-05-14]\',\'南通兴东机场航空冷藏式食品车采购招标公告[NTZC...[2014-05-13]\',\'南通市民防局大楼物业管理项目招标公告[NTZC20...[2014-05-08]\',\'南通市公安局交巡警支队卡口系统升级项目招标公告[N...[2014-05-08]\',\'南通市气象局及下属单位物业管理项目招标公告[NTZ...[2014-05-07]\',\'南通海事局沿海船舶交通管理系统项目招标公告[NTZ...[2014-05-07]\',\'江苏省海洋渔业指挥部实验室设备采购项目招标公告[N...[2014-05-06]\',\'南通市第二中学新校区家具采购项目招标公告[NTZC...[2014-04-30]\',\'南通市预算绩效再评价购买服务招标公告[NTZC20...[2014-04-30]\',\'南通市交巡警支队高速检查站高清卡口系统项目招标公告...[2014-04-30]\',\'江苏省南通地方税务局文化展厅布展工程招标公告[NT...[2014-04-30]\',\'江苏省南通卫生高等职业技术学校办公家具项目中止公告[2014-04-29]\',\'南通市通启路高架等6个项目电子监控信息监理项目招标...[2014-04-29]\',\'南通市第一初级中学数字化校园集成（一期）项目招标公...[2014-04-28]\',\'南通市城市防洪规划编制项目招标公告[NTZC201...[2014-04-23]\',\'南通市体育馆全民健身中心健身器材项目招标公告[NT...[2014-04-21]\'];$(function(){$(\'#49468\').jpage({themeName:\'default\',showMode:\'full\',totalRecord:1418,openCookies:false,dataBefore:\'\',dataStore:InitData49468,dataAfter:\'\',groupSize:3,proxyUrl:\'/module/jslib/jquery/jpage/dataproxy.jsp\',perPage:25,barPosition:\'bottom\',ajaxParam:{col:1,appid:\'1\',webid:60,path:\'/\',columnid:30067,unitid:\'49468\',webname:\'南通市政府采购网\',permissiontype:0}});});&nbsp;南通市政府采购中心电话：0513-59001968&nbsp;&nbsp;0513-59001965&nbsp;&nbsp;传真：0513-59001936&nbsp;&nbsp;&nbsp;地址：江苏省南通市跃龙路38号国际大厦&nbsp;&nbsp;&nbsp;邮编：226001建议使用：1024*768分辨率16Bit颜色IE5.0以上版本浏览器和中文大字符集', 'b a');
INSERT INTO `link` VALUES ('2', 'http://zfcg.nantong.gov.cn/', '南通市政府采购网functiongg_over(objectId){vararr=newArray(\'gkzb\',\'jzxtp\',\'dyly\',\'wsjj\',\'wsxj\',\'qtxj\');varlen=arr.length;for(vari=0;ibody{margin-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;background-image:url(images/background.jpg);}.style14{color:#ff5500}.style15{color:#000000;font-weight:bold;}.style16{color:#000000}.style18{color:#FFFFFF}.style19{color:#FF5500;font-weight:bold;}.style20{color:#265EA2}.style24{color:#0060e1;font-size:12px;}.style_gg{color:#157bed;font-size:15px;}.style_gg_old{color:#E76D22;font-size:15px;}.style26{color:#E76D22;font-size:12px;}.style28{color:#15539C;font-size:12px;font-weight:bold;}.style29{color:#FF5700}.gg_bg_1{background:no-repeaturl(\"images/gg_bg_1.gif\");}.gg_bg_2{background:no-repeaturl(\"images/gg_bg_2.gif\");}img{border-width:0px0px0px0px}.marquee{overflow-y:hidden;word-break:break-all;padding:10px;}.marqueediv{padding-bottom:10px;}首页机构简介采购目录办事指南下载中心主任之窗functioninitArray(){for(i=0;i12)?hrs-12:hrs);clckm=((min=12)?\"下午\":\"上午\";varstnr=\"\";varns=\"0123456789\";vara=\"\";functiongetFullYear(d){yr=d.getYear();if(yr更多…&nbsp;&nbsp;var_width=410;var_height=260;vartext_height=20;varflash_height=_height+text_height;varpic_arr=newArray();varlink_arr=newArray();vartext_arr=newArray();vari=0;pic_arr[i]=\"/picture/0/140516140426952.JPG\";link_arr[i]=\"/art/2014/5/16/art_30007_1661282.html\";text_arr[i]=\"省财政厅宋义武副厅长带队来通调研政府采购...\";i++;pic_arr[i]=\"/picture/0/140317102807296.JPG\";link_arr[i]=\"/art/2014/3/17/art_30007_1626100.html\";text_arr[i]=\"财政局领导来政府采购中心开展党的群众路线...\";i++;pic_arr[i]=\"/picture/0/120530145825853.JPG\";link_arr[i]=\"/art/2012/5/30/art_30007_983511.html\";text_arr[i]=\"省采购中心来通调研\";i++;varp=pic_arr.join(\"|\");varl=link_arr.join(\"|\");vart=text_arr.join(\"|\");varf=\"/flash/0/081107140116.swf\";document.write(\'\');document.write(\'\');document.write(\'\');document.write(\'\');document.write(\'\');document.write(\'\');&nbsp;&nbsp;省财政厅宋义武副厅长带队来通调研政府采购工作财政局领导来政府采购中心开展党的群众路线教育实践活动专题调研省采购中心来通调研&nbsp;部省属单位平台非预算单位平台采购中心平台定点准入平台协议供货平台下载中心平台-->&nbsp;供应商注册须知供应商注册供应商登陆网上报名标书下载网上竞价网上询价电子辅助评标电子远程评标-->&nbsp;&nbsp;&nbsp;站内搜索标题：&nbsp;公告通知栏更多…&nbsp;&nbsp;&nbsp;&nbsp;{重要}南通政府采购中心关于会员供应商取消年审的通知2014-07-02&nbsp;&nbsp;南通市政府采购中心关于供应商会员资格和保证金管理的公告2014-06-27&nbsp;&nbsp;南通市政府采购中心关于江苏伏特照明集团有限公司列入南通市政府采购...2014-04-02&nbsp;&nbsp;南通国有资产投资控股有限公司关于调整2014年企业债发行路演时间...2014-07-11&nbsp;&nbsp;南通大学附属中学报告厅座椅及报告台采购项目补充更正公告2014-07-08&nbsp;市级采购公告更多&hellip;&nbsp;&nbsp;&nbsp;公开招标&nbsp;竞争性谈判&nbsp;单一来源&nbsp;网上竞价&nbsp;网上询价&nbsp;其他询价&nbsp;&nbsp&nbsp南通市工贸高级技工学校小车运行控制等实训装置项目招标公告[NTZ...2014-07-14&nbsp&nbsp江苏省南通卫生高等职业技术学校新校区食堂厨具采购与安装项目招标公...2014-07-14&nbsp&nbsp南通市地下水基础环境状况调查评估项目招标公告[NTZC20140...2014-07-11&nbsp&nbsp南通卫生高等职业技术学校新校区宿舍楼和教学楼空调采购与安装项目招...2014-07-09&nbsp&nbsp江苏省南通卫生高等职业技术学校桌面云系统采购项目招标公告[NTZ...2014-07-09&nbsp&nbsp南通市消防支队大楼维修改造工程竞争性谈判公告[NTZC20140...2014-07-11&nbsp&nbsp南通市公安局电子物证检验鉴定实验室硬件升级项目竞争性谈判公告[N...2014-07-11&nbsp&nbsp南通市图书馆古籍非接触式冷光扫描仪项目竞争性谈判公告[NTZC2...2014-07-09&nbsp&nbsp南通市公安局开发区分局、南通市公安局港闸分局电视电话会议项目2014-07-08&nbsp&nbsp南通高等师范学校暑期维修工程竞争性谈判公告[NTZC201403...2014-07-07&nbsp&nbsp南通市国土资源局开发区分局物业管理项目单一来源谈判邀请函[NTZ...2014-07-14&nbsp&nbsp南通市政务中心办公楼绿化及部分耗材项目单一来源谈判邀请函[NTZ...2014-07-14&nbsp&nbsp南通市公安局流动人口信息管理系统（居住证系统）数据库软件、中间件...2014-06-18&nbsp&nbsp网络资源管理系统建设一期工程采购项目单一来源谈判邀请函[NTZC...2014-06-17&nbsp&nbsp南通市体育局体测、训练设备项目单一来源谈判邀请函[NTZC201...2014-06-12&nbsp&nbsp空调(空调2014020)2014-07-11&nbsp&nbsp办公自动化类网上竞价2014017期(办公自动化类网上竞价201...2014-07-11&nbsp&nbsp2014年第二期服务器批量集中采购(2014年第二期服务器批量集...2014-07-11&nbsp&nbsp空调(空调2014019)2014-06-26&nbsp&nbsp2014年第二期办公自动化类批量集中采购（4）(2014年第二期...2014-06-23&nbsp&nbsp办公自动化询价2014018期(办公自动化询价2014018期)2014-07-15&nbsp&nbsp南通市工贸高级技工学校实训设备采购(2014XJ0001)2014-07-14&nbsp&nbsp南通市公安局警用专用车采购项目(车辆询价2014012)2014-07-10&nbsp&nbsp南通市机关事务管理局新能源车采购项目(车辆询价2014011)2014-07-09&nbsp&nbsp电器(电器询价2014016)2014-07-09&nbsp&nbsp南通市城市照明管理处幸福公园照明工程路灯主材项目询价采购公告[编...2014-07-11&nbsp&nbsp南通机场有限公司设备采购项目询价采购公告[编号：2014XJ01...2014-06-09&nbsp&nbsp南通市垃圾处理中心设备采购项目询价采购公告[编号：2014XJ0...2014-05-21&nbsp&nbsp有关印刷采购的通知2014-04-10&nbsp&nbsp南通市公安消防支队轻型水罐车项目询价采购公告[编号：2014XJ...2014-04-04&nbsp;部门区(县)采购公告更多&hellip;&nbsp;&nbsp;&nbsp&nbsp南通市教育局直属学校学生校服协议供货商采购项目公开招标结果公告2014-07-15&nbsp&nbsp启东市人民医院电梯维保（三次）招标公告2014-07-15&nbsp&nbsp启东市汇龙中学物理化生探究实验室询价公告2014-07-15&nbsp&nbsp启东市汇龙中学美术、音乐教室设备询价公告2014-07-15&nbsp&nbsp启东市环卫处劳保用品询价公告2014-07-15&nbsp;-->&nbsp;采购结果公告更多&hellip;&nbsp;&nbsp;&nbsp&nbsp南通市公安消防支队8吨泡沫水罐消防车采购项目中标结果公告2014-07-15&nbsp&nbsp南通市公安局开发区分局、南通市公安局港闸区分局电视电话会议项目成...2014-07-14&nbsp&nbsp南通市工贸技师学院西教学楼走廊改造工程项目成交结果公告2014-07-11&nbsp&nbsp南通市节水办节水设备采购项目招标结果公告2014-07-11&nbsp&nbsp南通市公安局物证鉴定所实验室装饰改造工程项目成交结果公告2014-07-11&nbsp;&nbsp;&nbsp;&nbsp;办事指南更多&hellip;市政府办公室关于印发《南通市公共资源交易管理暂行...市政府办公室关于公布南通市公共资源交易目录的通知南通市政府采购中心关于会员供应商年审换证的通知&nbsp;&nbsp;&nbsp;法规公文更多&hellip;&nbsp;&nbsp;&nbsp;问题解答更多&hellip;政府采购信用融资知识问答&nbsp;&nbsp;&nbsp;曝光台更多&hellip;南通市政府采购中心关于江苏领航智能科技有限公司列入南通市政府采购不良记录名单的通报南通市政府采购中心关于江苏瑞信建设项目管理咨询有限公司列入南通市政府采购不良记录的通报南通市政府采购中心关于江苏伏特照明集团有限公司列入南通市政府采购不良记录名单的通报&nbsp;&nbsp;&nbsp;&nbsp;友情链接国家、各省市政府采购中国政府采购网江苏政府采购网北京政府采购网上海市政府采购网天津政府采购吉林政府采购沈阳政府采购河南政府采购山东政府采购四川政府采购江苏政府采购浙江政府采购云南政府采购福建政府采购合肥政府采购南京政府采购南宁政府采购厦门政府采购广州政府采购新疆政府采购深圳政府采购珠海政府采购香港政府采购台湾政府采购江苏省各市政府采购南京政府采购苏州政府采购无锡政府采购常州政府采购淮安政府采购扬州政府采购镇江政府采购泰州政府采购盐城政府采购徐州政府采购连云港政府采购宿迁政府采购南通市政府采购中心电话：0513-59001968&nbsp;&nbsp;0513-59001965&nbsp;&nbsp;传真：0513-59001936&nbsp;&nbsp;&nbsp;地址：江苏省南通市跃龙路38号国际大厦&nbsp;&nbsp;&nbsp;邮编：226001建议使用：1024*768分辨率16Bit颜色IE5.0以上版本浏览器和中文大字符集varad1=newAdMove(\"ad1\");ad1.Run();', 'a b');
INSERT INTO `link` VALUES ('4', 'http://blog.sina.com.cn/s/blog_6dc9c7cb0101cgmw.html', 'java&nbsp;以多个空格为分割符分割字符串_叮当响_新浪博客try{document.execCommand(\"BackgroundImageCache\",false,true);}catch(e){}window.staticTime=newDate().getTime();@charset\"utf-8\";@importurl(\"http://simg.sinajs.cn/blog7newtpl/css/33/33_2/t.css\");.sinabloghead.blogtoparea{left:320px;top:118.9px;}.sinabloghead.blognav{left:263px;top:226.183px;}加载中…叮当响的博客http://blog.sina.com.cn/u/1841940427[订阅][手机订阅]首页博文目录图片关于我个人资料叮当响Qing微博加好友发纸条写留言加关注博客等级：博客积分：0博客访问：20,839关注人气：3荣誉徽章：精彩图文相关博文更多&gt;&gt;推荐博文广西闹鱼节上万村民抓鱼玩水(图趣看天下官博美小猫轻抚海豚暖心亲密玩耍(图观天下美男子非洲建国圆女儿公主梦(图趣看天下官博泰大象明星遭偷猎者毒死锯走象牙观天下千米网启示录：机会是抢来的杨孝文七月大美青海西部尘埃【道哥观点】移动互联网浪潮下传栾春晖2.0时代的外卖O2O如何突围黄渊普日出日落拍摄南宁高铁独行侠H锤子手机比2000元手机优秀1沈禄政查看更多&gt;&gt;谁看过这篇博文加载中…正文字体大小：大中小java&nbsp;以多个空格为分割符分割字符串(2013-05-1820:23:29)转载▼var$tag=\'it\';var$tag_code=\'3bbfa43e12fefdeacbb7921008543d02\';var$r_quote_bligid=\'6dc9c7cb0101cgmw\';var$worldcup=\'0\';var$worldcupball=\'0\';标签：it分类：java一个字符串中，以多个空格分割，比如：1&nbsp;&nbsp;&nbsp;6&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;887431973分割方法为：String[]infor=tempString.split(\"\\\\s+\");即可从数组中取出你想要的那部分。分享：喜欢阅读┊评论┊收藏┊转载┊喜欢▼┊打印┊举报已投稿到：排行榜圈子加载中，请稍候......前一篇：mahout推荐算法基础后一篇：java&nbsp;ArrayList使用评论重要提示：警惕虚假中奖信息[发评论]评论加载中，请稍候...发评论登录名：密码：找回密码注册记住登录状态昵&nbsp;&nbsp;&nbsp;称：分享到微博&nbsp;&nbsp;&nbsp;评论并转载此博文验证码：请点击后输入验证码收听验证码匿名评论发评论以上网友发言只代表其个人观点，不代表新浪网的观点或立场。&lt;&nbsp;前一篇mahout推荐算法基础后一篇&nbsp;&gt;java&nbsp;ArrayList使用varvoteid=\"\";&nbsp;&nbsp;新浪BLOG意见反馈留言板　不良信息反馈　电话：4006900000提示音后按1键（按当地市话标准计费）　欢迎批评指正新浪简介|AboutSina|广告服务|联系我们|招聘信息|网站律师|SINAEnglish|会员注册|产品答疑Copyright&copy;1996-2014SINACorporation,AllRightsReserved新浪公司版权所有varscope={$newTray:1,$setDomain:true,$uid:\"1841940427\",$PRODUCT_NAME:\"blog7\",//blog7photo,blog7icp$pageid:\"article\",$key:\"b39d0cd14a1e69645ba81d9cbddf0591\",$uhost:\"\",$ownerWTtype:\"\",$private:{\"pageset\":0,\"tj\":0,\"adver\":0,\"sms\":0,\"ad\":0,\"blogsize\":0,\"cms\":0,\"hidecms\":0,\"top\":0,\"invitationset\":0,\"p4p\":0,\"spamcms\":0,\"init7\":1,\"quote\":0,\"foot\":0,\"isprivate\":0,\"headpic\":1,\"t_sina\":\"1841940427\",\"oauth_token\":1,\"oauth_token_secret\":1,\"uname\":\"\",\"p_push_t\":\"1\",\"p_get_t\":\"1\",\"medal7\":1,\"articleclass\":\"113\"},$is_photo_vip:0,$nClass:0,$articleid:\"6dc9c7cb0101cgmw\",$sort_id:113,$cate_id:175,$isCommentAllow:0,$album_pic:\"\",$pn_x_rank:0,$x_quote_c:\"\",$flag2008:\"\",component_lists:{\"2\":{\"size\":730,\"list\":[920]},\"1\":{\"size\":210,\"list\":[901,910,903,911,904,47]}},formatInfo:1,UserPic:[{\"pid\":\"\",\"repeat\":\"repeat-x\",\"align-h\":\"center\",\"align-v\":\"top\",\"apply\":\"0\"},{\"pid\":\"\",\"repeat\":\"repeat-x\",\"align-h\":\"center\",\"align-v\":\"top\",\"apply\":\"0\"},{\"pid\":\"\",\"repeat\":\"repeat-x\",\"align-h\":\"center\",\"align-v\":\"top\",\"apply\":\"0\"}],UserBabyPic:{\"photoX\":0,\"photoY\":0,\"photoURL\":null,\"angle\":0,\"zoom\":0,\"maskX\":0,\"maskY\":0,\"maskURL\":null,\"frameURL\":null},UserColor:1,backgroundcolor:\"rgb(226,226,226)\",tpl:\"33_2\",reclist:0};var$encrypt_code=\"561d824742336ff81c88e86f17e0fffb\";__load_js();__render_page();bShare.addEntry({pic:\"\",title:\"分享自叮当响《java以多个空格为分割符分割字符串》\",summary:\"一个字符串中，以多个空格分割，比如：165887431973分割方法为：String[]infor=tempString.split(&quot;\\\\s+...(来自@头条博客)\"});varslotArr=[\'atcTitLi_SLOT_41\',\'atcTitLi_SLOT_42\',\'loginBarActivity\'];//广告位idvarsourceArr=[\'SLOT_41\',\'SLOT_42\',\'SLOT_43,SLOT_47,SLOT_48\'];//广告资源idSinaBlog680.staticBox(slotArr,sourceArr);', 'a b c');

-- ----------------------------
-- Table structure for `temp001`
-- ----------------------------
DROP TABLE IF EXISTS `temp001`;
CREATE TABLE `temp001` (
  `temp001id` int(11) NOT NULL AUTO_INCREMENT,
  `f1` text,
  `f2` text,
  `f3` text,
  `f4` text,
  `f5` text,
  `f6` text,
  `f7` text,
  `f8` text,
  `f9` text,
  `fa` text,
  `fb` text,
  `fc` text,
  `fd` text,
  `fe` text,
  `ff` text,
  `fg` text,
  `fh` text,
  `fi` text,
  `fj` text,
  `fk` text,
  `fl` text,
  `fm` text,
  `fn` text,
  `fo` text,
  `fp` text,
  `fq` text,
  `fr` text,
  `fs` text,
  `ft` text,
  `fu` text,
  `fv` text,
  `fw` text,
  `fx` text,
  `fy` text,
  `fz` text,
  `a1` text,
  `a2` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`temp001id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp001
-- ----------------------------
INSERT INTO `temp001` VALUES ('35', '1', '1', '35', '25', '李玲', '', '', '', '教法：讲解法、示范法、分解教学法、完整教学法、带领法、\r\n\r\n循序渐进法、口令指挥法、非语言提示法、启发与激励法、\r\n\r\n递加循环法。\r\n', '学法：模仿法、反复练习法、小组练习法、小组合作探究法。\r\n教师备教材、备学生。\r\n', '', '', '依据简单易学，循序渐进的原则精心设计教学过程，激发', '注重培养学生的自主学习、探究学习的能力，逐步推进学', null, '在教学中注重使学生采用小组合作式学习方式，培养学生', '1、课堂常规\r\n\r\n2、导入新课\r\n\r\n3、明确教学目\r\n\r\n标\r\n\r\n4、热身练习\r\n\r\n\r\n\r\n头部练习 — 肩\r\n\r\n部练习 — 腰腹\r\n\r\n部练习 — 膝关\r\n\r\n节运动 — 前压\r\n\r\n腿\r\n', '1、组织学生\r\n集合\r\n2、向学生\r\n问好\r\n3、宣布本节课\r\n教学任务。\r\n4、教师示范、\r\n辅以口令和身\r\n体语言提示。\r\n5、组织学生完\r\n成动作（放音\r\n乐）\r\n', '1、集合整队\r\n\r\n\r\n2、向老师问好\r\n\r\n\r\n3、认真听讲本\r\n节课教学任务\r\n4、学生模仿教\r\n师动作，把身体\r\n各部位活动开。\r\n5、听音乐练习\r\n', '', '', '一、三姿训练\r\n\r\n1、基本站姿\r\n\r\n2、基本坐姿\r\n\r\n3、基本走姿\r\n\r\n\r\n\r\n\r\n\r\n二、健美操基本\r\n\r\n动作\r\n\r\n1、基本手型\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n并掌\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n立掌\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n拳\r\n \r\n', '1、简述动作要\r\n\r\n领\r\n\r\n2、组织学生进\r\n\r\n行练习\r\n\r\n\r\n\r\n\r\n\r\n1、示范基本手\r\n\r\n型动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n2、简述各手型\r\n\r\n动作要领，配合\r\n\r\n示范动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n3、纠正学生错\r\n\r\n误动作\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4、教师和学生\r\n\r\n共同练习\r\n', '1、听动作要领\r\n\r\n\r\n\r\n2、三姿练习\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n1、观摩教师示\r\n\r\n范基本手型。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n2、模仿教师的\r\n\r\n动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n3、纠正错误动\r\n\r\n作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4、集体练习\r\n \r\n', '', '', '1、放松活动：\r\n身体拉伸\r\n\r\n\r\n\r\n\r\n\r\n2、师生评价\r\n\r\n\r\n\r\n\r\n\r\n3、师生再见\r\n', '1、教师领做。\r\n\r\n深呼吸，肢体充\r\n\r\n分放松\r\n\r\n\r\n\r\n2、评价学生课\r\n\r\n堂练习情况。\r\n\r\n\r\n\r\n3、布置课后作\r\n\r\n业；师生再见\r\n \r\n', '1、集体练习。\r\n\r\n深呼吸；肢体充\r\n\r\n分放松\r\n\r\n\r\n\r\n2、学生自评\r\n\r\n\r\n\r\n\r\n\r\n3、师生再见\r\n', '', '', '', '35%—50%', '音响设备', '平均心率：105—120 次/分', '搜索网络资源，观看大众健美操二套一级视频，进行动作练', '学生的活动积极性高。分组练习时，在具有一定舞蹈基础学生的带领下，', '2014-03-10 09:33:22');
