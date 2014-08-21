/*
Navicat MySQL Data Transfer

Source Server         : scce
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : db_shopping

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2013-11-18 07:55:03
*/


CREATE SCHEMA `db_shopping` ;

USE db_shopping;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_affiche`
-- ----------------------------
DROP TABLE IF EXISTS `tb_affiche`;
CREATE TABLE `tb_affiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  `issueTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_affiche
-- ----------------------------
INSERT INTO tb_affiche VALUES ('9', '本商城自即日起退出优惠', '本商城大部分商品优惠活动', '2013-06-30 11:10:07');
INSERT INTO tb_affiche VALUES ('10', '城招代理商', '因业务量不断的扩大，本商城招聘各地的代理商', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('11', '春节到了', '春节将近，本商城的所有员工祝所有顾客，节日快乐，谢谢', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('12', '五一节快乐', '五一节即将来临，本商城将给员工发放500员奖金', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('13', '父亲节快乐', '祝天下的父亲节日快乐', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('14', '公告标题', '公告内容', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('15', '价格战已经打响', '大部分商城的价格战已经开始了，我们的商城已经开始了', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('16', '母亲节快乐', '祝天下的母亲节日快乐', '2013-06-30 11:14:16');
INSERT INTO tb_affiche VALUES ('17', '各位同学早上好！', '各位同学早上好！', '2013-11-17 10:15:11');

-- ----------------------------
-- Table structure for `tb_bigtype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bigtype`;
CREATE TABLE `tb_bigtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_bigtype
-- ----------------------------
INSERT INTO tb_bigtype VALUES ('1', '家用电器', '2013-01-01 00:00:00');
INSERT INTO tb_bigtype VALUES ('2', '衣帽服饰', '2013-01-02 00:00:00');
INSERT INTO tb_bigtype VALUES ('3', '计算机', '2013-01-03 00:00:00');
INSERT INTO tb_bigtype VALUES ('4', '交通工具', '2013-01-04 00:00:00');
INSERT INTO tb_bigtype VALUES ('5', '餐具', '2013-01-05 00:00:00');
INSERT INTO tb_bigtype VALUES ('6', '古玩类', '2013-01-07 00:00:00');
INSERT INTO tb_bigtype VALUES ('7', '数码', '2013-01-01 00:00:00');
INSERT INTO tb_bigtype VALUES ('8', '首饰', '2013-07-07 00:00:00');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallId` int(11) DEFAULT NULL,
  `goodsName` varchar(50) DEFAULT NULL,
  `goodsFrom` varchar(50) DEFAULT NULL,
  `introduce` text,
  `createTime` datetime DEFAULT NULL,
  `nowPrice` float DEFAULT NULL,
  `freePrice` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `pirture` varchar(50) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO tb_goods VALUES ('1', '5', '5', '咖啡杯', '长春市凯餐具公司', '该咖啡杯本身具有咖啡的香味', '2013-06-30 20:31:30', '100', '80', '2', 'goodsPicture/1195000722234.jpg', '0');
INSERT INTO tb_goods VALUES ('2', '4', '6', '自行车', '长春市永自行车厂', '该自行车适合与小学生使用', '2013-06-30 20:41:43', '500', '250', '0', 'goodsPicture/1195000845828.jpg', '0');
INSERT INTO tb_goods VALUES ('3', '3', '1', '液晶显示器', '长春市三科技有限公司', '该液晶显示器的大小是17存', '2013-06-30 20:41:43', '1200', '1000', '0', 'goodsPicture/1195001047171.jpg', '0');
INSERT INTO tb_goods VALUES ('4', '3', '1', '液晶显示器', '长春市三科技有限公司', '该液晶显示器的大小是19存', '2013-06-30 20:41:43', '1500', '1300', '1', 'goodsPicture/1195001141953.jpg', '0');
INSERT INTO tb_goods VALUES ('5', '2', '2', 'davidgreff2013秋冬新款轻薄款拼接立领男士羽绒服', '服装厂', '衣长: 短款（穿起计衣长在臀围及以上） 货号: YRDS04 领型: 无帽立领 颜色: 天蓝色 尺码: 170/M（10月初发货） 175/L（10月初发货） 180/XL（10月初发货） 185/XXL（10月初发货） 款式细节: 多材质拼接 品牌: David Greff 袖型: 常规袖', '2013-06-30 20:41:43', '99999', '90000', '1', 'goodsPicture/1195001276796.jpg', '0');
INSERT INTO tb_goods VALUES ('6', '1', '4', '液晶电视', '长春市三电视机厂', '该电视比较环保', '2013-06-30 20:41:43', '9000', '8700', '4', 'goodsPicture/1195001507156.jpg', '0');
INSERT INTO tb_goods VALUES ('7', '1', '4', '家庭影院', '长春市钟电视厂', '该家庭影院效果比较好', '2013-06-30 20:41:43', '4000', '3500', '6', 'goodsPicture/1195001612265.jpg', '0');
INSERT INTO tb_goods VALUES ('8', '1', '3', '17岗洗衣机', '长春市冰', '该洗衣机比较省电', '2013-06-30 20:41:43', '1000', '999', '13', 'goodsPicture/1195001711750.jpg', '0');
INSERT INTO tb_goods VALUES ('9', '1', '3', ' Haier/海尔 XQGH80-HB1466Z', '上海haier洗衣机厂', '颜色分类: 波尔多红 产品类型: 滚筒洗衣机 自动化程度: 全自动', '2013-06-30 20:41:43', '2000', '1000', '40', 'goodsPicture/1195001840843.jpg', '1');
INSERT INTO tb_goods VALUES ('10', '7', '9', 'Apple/苹果MC024', '美国加州Apple分公司', 'MacBook Pro系列配置: MacBook Pro MC024ZP/A屏幕尺寸: 17寸屏幕比例: 宽屏CPU平台: 待删除型号，请发布至正确的CPU型号下。酷睿2双核: I5-540M显卡类型: 双显卡显存容量: 512M硬盘容量: 500G内存容量: 4G', '2013-11-11 20:37:50', '6000', '5500', '10', 'goodsPicture/1384173470434.jpg', '0');
INSERT INTO tb_goods VALUES ('11', '7', '9', 'Iphone5s ', '深圳Apple公司', '现货】 Apple/苹果 iPhone 5s 苹果5S 有金银灰 正品行货 联通版  ', '2013-10-30 20:31:30', '5500', '5400', '102', 'goodsPicture/1384173470436.jpg', '0');
INSERT INTO tb_goods VALUES ('12', '7', '10', 'Leica/徕卡 M7+M50f1.4 辛亥革命100周年限量 \r\n', '深圳Leica分公司', '品牌: Leica/徕卡 型号: M7 感光元件: CCD 传感器尺寸: 1/1.8英寸 特殊功能: 无特殊功能 上市时间: 2011年 相机价格: 4000元以上 像素: 1800万 光学变焦: 其它倍数 2000万像素以上 ', '2013-10-20 20:31:30', '110100', '110000', '25', 'goodsPicture/1384173470435.jpg', '0');
INSERT INTO tb_goods VALUES ('13', '1', '12', '润唐豆腐机不锈钢全自动家用豆浆机ROTA', '润唐', '牌: ROTA/润唐 型号: DJ22B-2123 颜色分类: 紫色 容积: 1.5L以上(不含1.5L) 豆浆机功能: 豆浆、豆腐、豆腐脑、果冻 干豆 湿豆 米糊 五谷 杯体材质: 不锈钢杯体 是否有网: 有网研磨 ', '2013-10-28 20:31:30', '300', '250', '10', 'goodsPicture/1384173470437.jpg', '1');
INSERT INTO tb_goods VALUES ('14', '2', '2', '岚爵 整貂皮草外套', '/', '主图来源: 自主实拍图 品牌: Lan Jue/岚爵 货号: Lj9369 风格: 通勤 通勤: 韩版 衣长: 长款(80cm<衣长≤100cm) 袖长: 七分袖 领型: 其他领型   ', '2013-10-28 20:31:30', '88000', '0', '20', 'goodsPicture/1384173470438.jpg', '0');
INSERT INTO tb_goods VALUES ('15', '2', '2', 'VOA 裘皮大衣长袖水貂皮草', 'VOA', '主图来源: 自主实拍图 品牌: VOA 货号: Y1393 风格: 街头 街头: 欧美 衣长: 中长款(65cm<衣长≤80cm) 袖长: 长袖 领型: 连帽/帽领 袖型: 常规袖 衣门襟: 其他门襟样式 面料材质: 水貂毛', '2013-10-30 20:31:30', '90000', '0', '50', 'goodsPicture/1384173470439.jpg', '0');
INSERT INTO tb_goods VALUES ('16', '2', '2', '男装进口皮衣2013新款 轻薄羽绒服男真皮', '武汉', '衣长: 一袖长（穿起来衣长是长袖的上下3CM) 货号: ys-7575 版型: 直筒型（腰围=胸围） 领型: 立领 门襟: 拉链 颜色: 黑色 酒红色 翠绿色 深红色 橙色 天蓝色 尺码: 170/48(L) 175/50(XL) 180/52(XXL) 185/54(XXXL) 190/56(XXXXL) 皮衣材质: 绵羊皮 款式细节: 罗纹底摆 品牌: YPUC 款式品名: 真皮皮衣 ', '2013-10-30 20:31:30', '1732', '0', '2', 'goodsPicture/1384173470441.jpg', '0');
INSERT INTO tb_goods VALUES ('17', '1', '3', 'SIEMENS/西门子WM16Y880TI+WT46Y780TI ', '十堰西门子分公司', '西门子洗衣机: WM16Y880TI ', '2013-11-01 20:31:30', '2500', '2400', '16', 'goodsPicture/1384173470440.jpg', '1');
INSERT INTO tb_goods VALUES ('18', '4', '13', '钜翔 内置锂电池电动车', '武汉钜翔', '前后避震山地车 高档助力车TDN57Z', '2013-11-01 20:31:30', '8000', '0', '16', 'goodsPicture/1384173470450.jpg', '0');
INSERT INTO tb_goods VALUES ('19', '2', '14', '鳄鱼皮正装商务皮鞋GT108 ', '浙江分厂', '帮面材料: 鳄鱼皮 奢侈品鳄鱼皮高端男鞋真皮正装商务皮鞋GT108 品牌: guota ', '2013-11-01 20:31:30', '79999', '78999', '16', 'goodsPicture/1384173470451.jpg', '1');
INSERT INTO tb_goods VALUES ('20', '8', '15', '戴维尼18K白金5.01克拉奢华钻石女戒女款戒指婚戒正品钻戒', '海外直销', '5.01克拉奢华钻石,主钻分数: 克拉钻 副钻分数: 无副钻 款式: 裸钻 钻石形状: 圆形 钻石净度: IF/镜下无瑕 钻石颜色: D-E极白 钻石切工: VG/很好 钻石证书: GIA证书 ', '2013-11-08 20:31:30', '3931490', '3888890', '16', 'goodsPicture/1384173470460.jpg', '0');
INSERT INTO tb_goods VALUES ('21', '8', '16', '冰种满绿蛋面镶嵌项链', '上海周大昌珠宝有限责任公司', '链子材质:其他材质,坠子材质: 满绿翡翠,:是否现货: 现货链周长: 21cm-50cm成色: 全新货号:  JXLZ2014 价格区间: 450000元', '2013-11-08 20:31:30', '50000', '45000', '16', 'goodsPicture/1384173470461.jpg', '1');
INSERT INTO tb_goods VALUES ('26', '6', '17', '瓷坛', '唐', '景德出土', '2011-09-08 20:31:30', '10000000', '999999', '1', 'goodsPicture/201311162.jpg', '0');
INSERT INTO tb_goods VALUES ('27', '5', '5', '高脚杯', '深圳丫丫餐具公司', '该高脚杯充满高雅的情调，你值得拥有', '2013-06-30 20:31:30', '50', '40', '10', 'goodsPicture/1384173470470.jpg', '0');
INSERT INTO tb_goods VALUES ('28', '5', '5', '鑫红高脚杯', '深圳丫丫餐具公司', '该高脚杯充满高雅的情调，你值得拥有', '2013-10-25 20:31:30', '80', '50', '100', 'goodsPicture/1384173470471.jpg', '0');
INSERT INTO tb_goods VALUES ('29', '5', '20', '青花瓷套具', '深圳丫丫餐具公司', '古典的优雅气息', '2013-10-26 20:31:30', '129', '119', '100', 'goodsPicture/1384173470468.jpg', '0');
INSERT INTO tb_goods VALUES ('30', '5', '20', '缤纷刀叉', '上海缤粉餐具公司', '古典的优雅气息', '2013-10-22 20:31:30', '88', '78', '78', 'goodsPicture/1384173470467.jpg', '0');
INSERT INTO tb_goods VALUES ('31', '4', '21', 'xpo/摩托车', '上海腾达摩托车有限责任公司公司', '限量版', '2013-10-23 20:31:30', '70000', '65555', '25', 'goodsPicture/1384173470464.jpg', '0');
INSERT INTO tb_goods VALUES ('32', '4', '6', '山地自行车', '日本冲绳分公司', '日本樱花山地自行车，该车运用物力学原理，给您最适的美感', '2013-10-23 20:31:30', '10000', '9999', '25', 'goodsPicture/1384173470463.jpg', '0');
INSERT INTO tb_goods VALUES ('33', '4', '21', '宝马珍藏版', '宝马', '精准的动力学原理', '2013-11-05 20:31:30', '80000', '69999', '16', 'goodsPicture/1384173470465.jpg', '0');
INSERT INTO tb_goods VALUES ('34', '4', '6', '山地自行车', '上海飞驰自行车公司', '流行曲线', '2013-11-05 20:31:30', '3500', '3000', '15', 'goodsPicture/1384173470462.jpg', '0');
INSERT INTO tb_goods VALUES ('35', '3', '18', 'Yoga 2pro', 'lenovo', '3200*1800超高分辨率，275PPI，动态画面无残影、真实还原色彩本质，分毫毕现, 10指多点触控屏，让你从此摆脱“鼠标手”', '2013-01-01 20:31:30', '7000', '25000', '9', 'goodsPicture/138417347051.jpg', '0');
INSERT INTO tb_goods VALUES ('36', '3', '18', 'ThinkPad X1 Helix 异形系列 ', 'lenovo', '双向插槽，可上下转动120°，灵活应对环境。坚固耐用，稳定散热，确保设备稳定。 牢固锁槽，无惧颠簸。特装置锁槽，可将平板完美固定，指点触控更加稳固。', '2013-11-09 20:31:30', '20000', '25000', '9', 'goodsPicture/138417367050.jpg', '0');
INSERT INTO tb_goods VALUES ('37', '3', '18', 'IdeaPad Yoga 11TTH ', 'lenovo', '5.0mm纤薄机身，全新卷轴设计，创造了舒适的单手持握；独特支架设计，提升了影音视听体验，60天待机电量可支持18小时连续使用，更配有低功耗蓝牙，1.2mm键盘+触控板', '2013-11-09 20:31:30', '5500', '5000', '9', 'goodsPicture/138417347052.jpg', '0');
INSERT INTO tb_goods VALUES ('38', '3', '18', 'TerransForce 机皇 X911-780MS-49 ', '/', '操作系统: Windows 8 ,Intel Core/酷睿 i7: i7-4900MQ, 机械硬盘容量: 2T ,显存容量: 4G ,内存容量：32G ', '2013-06-30 20:31:30', '37000', '34999', '5', 'goodsPicture/138417367053.jpg', '0');
INSERT INTO tb_goods VALUES ('39', '3', '18', 'HP/惠普 8770w(C5P44PA) ', '/', 'i7-3820QM 16G 500G×2 4G独显: NVIDIA Quadro 4000M 送内存 ', '2013-06-30 20:31:30', '37000', '34999', '5', 'goodsPicture/138417347053.jpg', '0');
INSERT INTO tb_goods VALUES ('40', '3', '18', 'Sony/索尼 D132混合型触控轻薄本', '/', 'CPU平台: Intel Core/酷睿 i7 ,Intel Core/酷睿 i7: i7-4650U, Windows 8.1 中文版  ', '2013-06-30 20:31:30', '16599', '16500', '5', 'goodsPicture/138417347054.jpg', '0');
INSERT INTO tb_goods VALUES ('41', '3', '18', 'Dell/戴尔 XPS12-2708 ', '/', 'Intel Core/酷睿 i7: i7-3537U , 集成显卡型号: Intel HD Graphics 3000 ,操作系统: Windows 8  ', '2013-06-30 20:31:30', '12999', '12990', '5', 'goodsPicture/138417367055.jpg', '0');
INSERT INTO tb_goods VALUES ('42', '2', '14', '稀有珍藏款鳄鱼皮 正装婚礼男鞋', '/', '帮面材料: 鳄鱼皮,皮革风格: 裂纹皮，内里材质: 皮质,鞋面材质: 真皮头层皮', '2013-11-10 20:31:30', '37776', '35000', '5', 'goodsPicture/1384173470452.jpg', '0');
INSERT INTO tb_goods VALUES ('43', '2', '14', '奥康男鞋2013秋季新款英伦潮商务', '/', '奥康男鞋2013秋季新款英伦潮商务系带真皮日常休闲鞋男士皮鞋正品真皮头层皮 耐磨 透气 减震 ', '2013-11-10 20:31:30', '37776', '35000', '5', 'goodsPicture/1384173470453.jpg', '0');
INSERT INTO tb_goods VALUES ('44', '8', '16', 'Irene Neuwirth 女式项链 Q00061213 ', '海外直销', '100%原装正品,高贵，奢华', '2013-11-10 20:31:30', '400564', '388888', '5', 'goodsPicture/1384173470481.jpg', '0');
INSERT INTO tb_goods VALUES ('45', '8', '16', '10.12克拉缅甸红宝石吊坠 18K玫瑰金钻石项链项坠', '海外直销', '正品女款 米莱 全球仅27颗 博物馆收藏级 限量款 ', '2013-11-10 20:31:30', '1985000', '1888890', '5', 'goodsPicture/1384173470482.jpg', '0');
INSERT INTO tb_goods VALUES ('46', '8', '15', '唐秋 3克拉女戒 VS D-E色 18K白金钻戒正品', '海外直销', '主钻分数: 克拉钻 副钻分数: 无副钻 款式: 戒指/指环 钻石形状: 圆形 钻石净度: VS/微瑕 钻石颜色: D-E极白 钻石切工: VG/很好 钻石证书: GIA证书 其它国内证书 证书认证标识: CMA CNAS/CNAL 售后服务: 复检后再付款 店铺保修 其它保 ', '2013-11-10 20:31:30', '989025', '980000', '5', 'goodsPicture/1384173470483.jpg', '0');
INSERT INTO tb_goods VALUES ('47', '5', '20', '景德镇宗元国瓷 ', '景德镇', '品牌: 宗元国瓷 餐具工艺: 釉上彩 套瓷类别: 中式 型号: ZC-0044 推荐使用人数: 10人及10人以上 材质: 瓷 ', '2013-11-10 20:31:30', '22000', '19999', '5', 'goodsPicture/1384173470484.jpg', '0');
INSERT INTO tb_goods VALUES ('49', '2', '22', '雅库男士西服套装', '上海', '版型: 修身型 货号: 1413-1 领型: 规则领型（领宽7-9cm） 衣门襟: 两粒单排扣 颜色: 黑色1413-1 藏青1413-2  款式细节: 后中开衩 品牌: yksuit/雅库 面料主材质: 涤纶 ', '2011-07-08 20:31:30', '1680', '1500', '1', 'goodsPicture/2013111.jpg', '0');
INSERT INTO tb_goods VALUES ('50', '2', '22', '正装商务职业工作服', '上海', '版型: 修身型 货号: 1S31062 领型: 规则领型（领宽7-9cm） 衣门襟: 两粒单排扣 颜色: 890藏青色（松紧款） 89藏青色（标准款 ）款式细节: 无开衩 品牌: Romon/罗蒙 ', '2011-07-08 20:31:30', '389', '339', '20', 'goodsPicture/2013112.jpg', '0');
INSERT INTO tb_goods VALUES ('51', '2', '22', '雅戈尔新款专柜西服套装', '上海', '货号: YM1041TN22416-21 领型: 规则领型（领宽7-9cm） 衣门襟: 两粒单排扣 颜色: 藏蓝色 品牌: Youngor/雅戈尔 面料主材质: 羊毛 抗皱羊毛桑蚕丝男士商务西服TN22416-21  ', '2011-07-08 20:31:30', '1380', '1280', '20', 'goodsPicture/2013113.jpg', '0');
INSERT INTO tb_goods VALUES ('52', '2', '22', '商务修身西服套装', '浙江', '货号: 6S05133 领型: 规则领型（领宽7-9cm） 衣门襟: 两粒单排扣 颜色: 99B 99A 尺码: 44 46 48 50 52 款式细节: 后中开衩 品牌: Romon/罗蒙 面料主材质: 其它合成纤维', '2011-07-08 20:31:30', '1980', '1900', '20', 'goodsPicture/2013114.jpg', '0');
INSERT INTO tb_goods VALUES ('53', '7', '22', 'Sony/索尼 NEX-VG900E', '深圳', 'Sony/索尼 索尼型号: NEX-VG900E 存储介质: 闪存式DV 数码像素: 600万以上 光学变焦: 12倍 是否高清: 水平清晰度1080线高清 上市时间: 2012年 感光元件: CMOS 显示屏尺寸: 3 ', '2011-08-09 20:31:30', '20000', '18000', '20', 'goodsPicture/2013115.jpg', '0');
INSERT INTO tb_goods VALUES ('54', '7', '22', '佳能XA25正品行货', '深圳', '产品名称：Canon/佳能 XA25 品牌: Canon/佳能 型号: XA25 存储介质: 闪存式DV 数码像素: 201-300万 光学变焦: 20倍 是否高清: 水平清晰度1080线高清 上市时间: 2013年7月 感光元件: CMOS 显示屏尺寸: 3.5 传感器尺寸: 1/2.84英寸 防抖性能: 双重防抖', '2011-08-09 20:31:30', '16800', '15000', '20', 'goodsPicture/2013116.jpg', '0');
INSERT INTO tb_goods VALUES ('55', '6', '23', '七香海 洪山文化老玉摆件', '/', '款式: 摆件 玉石分类: 其它玉石 货号: DSC8957 品牌: 七香海 ', '2011-10-09 20:31:30', '16800', '15000', '20', 'goodsPicture/2013117.jpg', '0');
INSERT INTO tb_goods VALUES ('56', '6', '23', '黄泉福引福39CM黑檀木雕', '/', '包邮正品黄泉福引福39CM黑檀木雕工艺品佛像艺术品古玩高档次礼品', '2013-10-09 20:31:30', '8380', '8000', '20', 'goodsPicture/201311138.jpg', '0');
INSERT INTO tb_goods VALUES ('57', '6', '23', '红山文化老玉挂件', '/', '款式: 项坠/吊坠 玉石分类: 其它玉石 货号: DSC8871 品牌: 七香海 ', '2013-10-09 20:31:30', '140000', '135000', '20', 'goodsPicture/2013119.jpg', '0');
INSERT INTO tb_goods VALUES ('58', '6', '23', '新疆和田玉金香玉挂坠', '/', '七香海 新疆和田玉金香玉挂坠 时尚首饰品 精品富贵吊坠', '2013-10-10 20:31:30', '12600', '11600', '20', 'goodsPicture/20131113.jpg', '0');
INSERT INTO tb_goods VALUES ('59', '6', '23', '金之玉业 高档和田玉手镯', '/', '金之玉业 高档和田玉手镯 天然玉石玉器新疆碧玉手镯加厚 附证书', '2013-10-10 20:31:30', '36000', '35000', '20', 'goodsPicture/20131114.jpg', '0');
INSERT INTO tb_goods VALUES ('60', '6', '23', '特泊丝 新疆和田玉15mm碧玉手链', '/', '款式: 手链/脚链 玉石分类: 其它玉石 玉石吉祥图: 其它图案 宝石证书: 国家级证书 证书认证标识: CMA CNAS/CNAL 货号: JH448 品牌: Topearls/特泊丝 ', '2013-10-11 20:31:30', '9800', '9000', '20', 'goodsPicture/20131115.jpg', '0');
INSERT INTO tb_goods VALUES ('61', '2', '2', '带帽貂皮大衣LF2051 ', '/', '进口俄罗斯奢华紫貂2013冬季新款女装皮草长款;衣长: 长款(80cm<衣长≤100cm) 袖长: 长袖 领型: 连帽/帽领 袖型: 常规袖 衣门襟: 其他门襟样式 面料材质: 水貂毛 ', '2013-10-11 20:31:30', '58888', '58888', '20', 'goodsPicture/20131117.jpg', '0');
INSERT INTO tb_goods VALUES ('63', '8', '16', '正阳绿翡翠玉坠福瓜/JBN01461', '/', '翡翠种地: 冰种 图案/形状: 福瓜 证书: 省级证书 证书认证标识: CAL 品牌: 金版纳 货号: JBN01461 ', '2013-02-02 20:31:30', '1750000', '1750000', '20', 'goodsPicture/20131118.jpg', '0');
INSERT INTO tb_goods VALUES ('64', '8', '16', 'CDE施华洛世奇元素水晶纯银项链', '/', ' 链子样式: 水波链 品牌: CDE/西黛尔 延长链: 10cm以下 颜色分类: 白金纯银链子 玫红色 白金纯银链子 蓝色 玫瑰金 白色 玫瑰金 玫红色 形状/图案: 玫瑰/四叶草/花草 风格: 糖果色/甜美 ', '2013-02-02 20:31:30', '10000', '10000', '20', 'goodsPicture/20131119.jpg', '0');
INSERT INTO tb_goods VALUES ('65', '8', '16', '天然水晶项链', '/', '链子材质: 天然水晶/半宝石 水晶/半宝石分类: 碧玺 链子样式: 圆珠链 品牌: 顺玺 延长链: 无 风格: 复古/宫廷 是否镶嵌: 未镶嵌 是否带坠: 否 ', '2013-02-02 20:31:30', '58888', '58888', '20', 'goodsPicture/20131120.jpg', '1');
INSERT INTO tb_goods VALUES ('66', '8', '15', '套装裸石戒指 MDJ-01', '/', '翡翠种地: 玻璃种 图案/形状: 其它图案 证书: 国家级证书 证书认证标识: CMA 是否镶嵌: 未镶嵌 品牌: 蒲甘 货号: MD-01 价格区间: 100000以上 ', '2013-02-02 20:31:30', '8800000', '8600000', '18', 'goodsPicture/20131121.jpg', '1');
INSERT INTO tb_goods VALUES ('67', '8', '15', '白18K金祖母绿钻石戒指 B1019', '/', '宝石品类: 祖母绿 款式: 戒指、指环 售后服务: 复鉴后再付款 店铺保修 其它保证 是否镶嵌: 黄金/K黄金镶嵌宝石 证书: 国家级证书 证书认证标识: CMA CAL CNAS/CNAL 品牌: 星城 货号: SF1106104964238A', '2013-02-02 20:31:30', '1485000', '1475000', '18', 'goodsPicture/20131122.jpg', '1');
INSERT INTO tb_goods VALUES ('68', '8', '15', '16.16克拉斯里兰卡蓝宝石戒指 ', '/', '款式: 戒指、指环 售后服务: 店铺保修 是否镶嵌: 黄金/K黄金镶嵌宝石 证书: 省级证书 国家级证书 证书认证标识: CMA CNAS/CNAL ', '2013-05-09 20:31:30', '1365900', '1360000', '18', 'goodsPicture/20131123.jpg', '1');
INSERT INTO tb_goods VALUES ('69', '8', '15', '18K金天然绿碧玺戒指', '/', '款式: 戒指、指环 售后服务: 复鉴后再付款 店铺保修 其它保证 是否镶嵌: 黄金/K黄金镶嵌宝石 证书: 国家级证书 证书认证标识: CMA CNAS/CNAL ', '2013-05-09 20:31:30', '4999', '4999', '18', 'goodsPicture/20131124.jpg', '0');
INSERT INTO tb_goods VALUES ('70', '6', '23', '和田玉器青玉细料四方壶', '河南南阳', '款式: 摆件,玉石分类: 其它玉石, 玉石吉祥图: 其它图案, 售后服务: 其它保证 宝石证书: 国家级证书, 证书认证标识: CMA 货号: 888188030 品牌: 玉友', '2013-05-09 20:31:30', '28800', '28000', '20', 'goodsPicture/2013111466.jpg', '1');
INSERT INTO tb_goods VALUES ('71', '6', '23', '仿古螭龙扳指手玩件', '河南南阳', '款式: 戒指、指环 玉石分类: 其它玉石 玉石吉祥图: 其它图案 售后服务: 其它保证 宝石证书: 国家级证书 证书认证标识: CMA 货号: 888189400 品牌: 玉友', '2013-05-09 20:31:30', '26800', '25000', '20', 'goodsPicture/2013111467.jpg', '1');
INSERT INTO tb_goods VALUES ('72', '6', '8', '根雕木雕香樟黄蜡樟五子弥勒佛笑佛像', '福建福州', '九子弥勒佛 樟木 【风格】 中式风格 【品牌】 框广 【公司】 福州框广工艺品有限公司 【颜色】 原木木纹 【同类推荐】 查看同系列配套产品 【包装运输】 透明膜+木架+棉毯 【产地】 福建 福州 【生产周期】 2-30天左右可发货 3-10天左右运输期 【售后服务】 7天无理由退换货 ', '2013-05-09 20:31:30', '61750', '61750', '5', 'goodsPicture/201311161.jpg', '0');
INSERT INTO tb_goods VALUES ('73', '6', '23', '精工和田玉器糖玉麒麟望天吼', '河南南阳', '玉石分类: 其它玉石玉石吉祥图: 其它图案售后服务: 其它保证\r\n宝石证书: 国家级证书，证书认证标识: CMA， 货号: 888188320； 品牌: 玉友', '2013-06-09 20:31:30', '5800', '5800', '5', 'goodsPicture/2013111468.jpg', '0');
INSERT INTO tb_goods VALUES ('74', '6', '8', '绿檀横刀关公 木雕摆件', '河南南阳', '古玩木雕 红檀 绿檀 财神爷关公 镇宅辟邪风水摆件 名称:关公   规格:高50CM/60CM  包装:礼盒  材质:绿檀  ', '2013-06-09 20:31:30', '2000', '2000', '5', 'goodsPicture/201311160.jpg', '0');
INSERT INTO tb_goods VALUES ('75', '7', '24', '广告显示电视墙', '上海', '品牌: Infocus/富可视,型号: LDW-9A5L60A,LCD尺寸: 32寸及以上, 售后服务: 全国联保, 宽屏: 是, 垂直可视角度: 176度, 黑白响应时间: 6ms,灰阶响应时间: 6ms, 面板类型: TFT, 接口类型: HDMI VGA, 平均亮度: 500cd/m2, 分辨率: 1366x768,水平可视角度: 176度\r\n', '2013-02-09 20:31:30', '196000', '195000', '5', 'goodsPicture/201311141.jpg', '0');
INSERT INTO tb_goods VALUES ('76', '7', '24', 'TL-9000HLXI 电话交换机', '上海', '外线容量: 64,拨号模式: 音频/脉冲\r\n IP电话功能: 支持\r\n 分机等级限拨: 多等级\r\n 普通话机数: 250以上\r\n 分机容量: 250以上\r\n', '2013-02-09 20:31:30', '259999', '259990', '5', 'goodsPicture/201311142.jpg', '0');
INSERT INTO tb_goods VALUES ('77', '7', '26', ' Surface WIFI 平板电脑', '山东青岛', '品牌: Microsoft/微软,型号: Surface Pro(中文版),屏幕尺寸: 10.6英寸, 无线网络: WIFI 热门功能: 重力感应 可拆卸键盘 罗盘感应 陀螺仪 光线感应 HDMI 蓝牙\r\n 硬盘容量: 128GB操作系统: Windowswindows版本: windows 8\r\n 分辨率: 1920x1080触摸屏类型: 电容屏\r\n 处理器主频: 双核1.7GHz\r\n', '2013-02-09 20:31:30', '6588', '6500', '5', 'goodsPicture/201311143.jpg', '0');
INSERT INTO tb_goods VALUES ('78', '7', '26', 'Sony/索尼 SGP341', '浙江杭州', ' 16GB 3G-联通 平板电脑/四核/800万像素 现货  索尼官方授权 全国联保 \r\n Android版本: Android4.1 触摸屏类型: 电容屏， 处理器主频: 四核1.5GHZ， 内存容量: 2GB， 存储类型: 闪存， 支持接口类型: USB 音频输出 OTG，', '2013-02-09 20:31:30', '4688', '6500', '5', 'goodsPicture/201311144.jpg', '0');
INSERT INTO tb_goods VALUES ('79', '7', '25', '苹果macbook air/pro笔记本移动电源', '广东深圳', ' 品牌: kmoso，型号: POWRE-POND-12C,颜色分类: 白色电源容量: 20000mAh以上, 是否支持太阳能: 否\r\n 适用类型: 通用型, LED灯照明: 否,电池类型: 锂电池', '2013-02-09 20:31:30', '1951.6', '6500', '50', 'goodsPicture/201311145.jpg', '1');
INSERT INTO tb_goods VALUES ('80', '7', '25', 'MILI 苹果外接电源', '北京', '产品名称：MiLi Power King,品牌: 米力 MiLi型号: Power King(18000mAh),电源容量: 15001mAh-20000mAh,是否支持太阳能: 否；适用类型: 通用型\r\n,LED灯照明: 否 电池类型: 聚合物锂电池', '2013-03-09 20:31:30', '980', '950', '50', 'goodsPicture/201311146.jpg', '0');
INSERT INTO tb_goods VALUES ('81', '7', '9', 'Samsung/三星 W2013', '北京', '产品名称：Samsung/三星 W2013,三星型号: W2013, 机身颜色: 玫瑰金,  运行内存RAM: 1G 机身内存: 16G 网络模式: 双卡双模', '2013-03-09 20:31:30', '980', '950', '50', 'goodsPicture/201311147.jpg', '0');
INSERT INTO tb_goods VALUES ('82', '5', '19', '正品骨质瓷碗套装', '北京', '颜色分类: 60头豪华配置， 餐具图案: 黄金镶边， 品牌: 瓷之语', '2013-08-09 20:31:30', '5980', '5980', '50', 'goodsPicture/201311148.jpg', '0');
INSERT INTO tb_goods VALUES ('83', '5', '19', '不锈钢西餐具组套', '北京', '巴西原装进口【微风】24pc', '2013-08-09 20:31:30', '2588', '2388', '50', 'goodsPicture/201311149.jpg', '0');
INSERT INTO tb_goods VALUES ('84', '5', '5', '水晶红酒杯 高脚杯', '北京', '奥地利RIEDEL进口力多水晶红酒杯 高脚杯 高档礼品酒具 套装 原装进口 完美精致 ', '2013-08-09 20:31:30', '1700', '1500', '50', 'goodsPicture/201311153.jpg', '0');
INSERT INTO tb_goods VALUES ('85', '5', '5', '水晶红酒杯 高脚杯', '北京', '威士忌杯 酒樽 红酒杯洋酒杯酒具套装', '2013-08-09 20:31:30', '3116', '3000', '50', 'goodsPicture/201311151.jpg', '0');
INSERT INTO tb_goods VALUES ('86', '5', '5', '耳其进口/水晶 红酒杯6只+醒酒器', '北京', '[FD]芬帝 土耳其进口/水晶 红酒杯6只+醒酒器 高档酒具套装10件套 ;送专业擦杯布 送醒酒器支架 ', '2013-08-09 20:31:30', '2400', '2000', '50', 'goodsPicture/201311150.jpg', '0');
INSERT INTO tb_goods VALUES ('87', '5', '5', '水晶波尔多红酒杯 ', '北京', '意大利进口RCR水晶波尔多红酒杯 醒酒器高脚葡萄酒杯高档酒具套装', '2013-08-09 20:31:30', '2400', '2000', '80', 'goodsPicture/201311152.jpg', '1');
INSERT INTO tb_goods VALUES ('88', '4', '21', '摩托车赛车', '北京', '赛场选手专用', '2013-03-05 20:31:30', '15000', '13000', '60', 'goodsPicture/2013111510.jpg', '0');
INSERT INTO tb_goods VALUES ('89', '4', '21', '高档赛车', '北京', ' 型号: 沙滩车-150前后碟刹型, 排量: 50cc－150cc, 生产年份: 2012年,制动方式: 前后碟刹', '2013-03-05 20:31:30', '18000', '15000', '60', 'goodsPicture/2013111511.jpg', '0');
INSERT INTO tb_goods VALUES ('90', '4', '6', '山地自行车', '北京', '高档山地自行车，居家越野之必需品', '2013-03-05 20:31:30', '8000', '7500', '60', 'goodsPicture/2013111513.jpg', '0');
INSERT INTO tb_goods VALUES ('91', '4', '6', '休闲自行车', '上海', '官方授权专卖台湾STRIDA/速立达高档铝合金折叠自行车假一罚十 官方授权，台湾原产，假一罚十', '2013-03-05 20:31:30', '8000', '7800', '20', 'goodsPicture/2013111513.jpg', '1');
INSERT INTO tb_goods VALUES ('92', '4', '21', '限量版  SJHD-12', '上海', '海外限量版 低排量，高性能', '2013-03-05 20:31:30', '12000', '11000', '20', 'goodsPicture/2013111514.jpg', '1');
INSERT INTO tb_goods VALUES ('93', '4', '13', '太阳能充电电动车', '上海', '实验型，太阳能充电电动车，绿色环保无污染', '2013-03-05 20:31:30', '250000', '250000', '20', 'goodsPicture/2013111515.jpg', '0');
INSERT INTO tb_goods VALUES ('94', '3', '27', '台式一体机新款电脑iMac089', '浙江杭州', '品牌: Apple/苹果；苹果台式型号: 089CH/A； 显示器尺寸: 27寸； 台机内存容量: 8G；台机硬盘容量: 1t；台机显卡容量: 2G', '2013-03-05 20:31:30', '14988', '14988', '20', 'goodsPicture/138417367058.jpg', '0');
INSERT INTO tb_goods VALUES ('95', '3', '27', '联想台式一体机 C355', '浙江杭州', '型号: C355-A6， 显示器尺寸: 20寸， 台机CPU品牌: 其它CPU品牌 台机内存容量: 4G， 内存类型: DDR3， 台机硬盘容量: 1t， 台机显卡型号: 独立显卡，台机显卡容量: 1G', '2013-03-05 20:31:30', '5390', '5000', '20', 'goodsPicture/1323123211.jpg', '0');
INSERT INTO tb_goods VALUES ('96', '3', '27', '联想A720一体机 A720', '上海', ' 型号: A720， 重量(含包装): 15.7kg， 显示器尺寸: 27寸， 台机CPU品牌: 其它CPU品牌， 台机内存容量: 8G， 内存类型: DDR3， 台机硬盘容量: 1024G， 硬盘接口: SATA2， 硬盘转速: 5400转', '2013-03-05 20:31:30', '13999', '12999', '21', 'goodsPicture/138417367063.jpg', '0');
INSERT INTO tb_goods VALUES ('97', '1', '28', 'La sphere “大眼睛”', '上海', 'CABASSE 卡巴斯 La sphere “大眼睛” HIFI一对 DCHAV 大昌影音 ', '2013-03-05 20:31:30', '1456920', '1456920', '20', 'goodsPicture/138417367059.jpg', '1');
INSERT INTO tb_goods VALUES ('98', '1', '28', 'Klipsch/杰士Palladium系列P39', '上海', 'Klipsch/杰士Palladium系列P39旗舰级环绕声系统 ', '2013-03-05 20:31:30', '414990', '410000', '20', 'goodsPicture/138417367060.jpg', '1');
INSERT INTO tb_goods VALUES ('99', '1', '28', '杰士 klipsch THX Ultra2 7.2', '上海', '杰士 klipsch THX Ultra2 7.2家庭影院套装音箱', '2013-03-05 20:31:30', '139910', '139910', '22', 'goodsPicture/138417367061.jpg', '1');
INSERT INTO tb_goods VALUES ('100', '1', '4', '全球首款85英寸U-MAX客厅电视', '四川绵阳', '品牌: Changhong/长虹 型号: UD85C9000i 屏幕尺寸: 85英寸 清晰度: 2160P HDMI接口: 4个 背光灯类型: LED发光二极管 上市时间: 2013年 屏幕比例: 宽屏16:9 颜色分类: 银色 套餐: 官方标配 3D功能: 主动快门式3d 能效等级: 一级 售后服务: 全国联保 输入输出接口: AV接口 HDMI接口 RF射', '2013-03-05 20:31:30', '129999', '129000', '23', 'goodsPicture/138417367062.jpg', '0');
INSERT INTO tb_goods VALUES ('101', '1', '4', '85英寸 超大屏LED液晶3D智能网络电视', '浙江杭州', '品牌: SAMSUNG/三星 型号: UA85S9AJ 屏幕尺寸: 84英寸 最佳观看距离: 4.8-7.0米 清晰度: 1080p 分辨率: 1920×1080 HDMI接口: 4个 面板类型: VA(软屏), 背光灯类型: LED发光二极管 上市时间: 2013年, 屏幕比例: 宽屏16:9, 套餐: 官方标配, 3D功能: 主动快门式3d', '2013-03-05 20:31:30', '199999', '188888', '23', 'goodsPicture/138417367063.jpg', '1');
INSERT INTO tb_goods VALUES ('102', '1', '4', '50英寸4K 超高清LED电视 安卓4.0云电视', '四川成都', '品牌: Skyworth/创维 创维LED型号: 50E780U 屏幕尺寸: 50英寸 清晰度: 2160P 分辨率: 3840×2160 HDMI接口: 3个 背光灯类型: LED发光二极管', '2013-03-05 20:31:30', '10000', '8000', '20', 'goodsPicture/138417367064.jpg', '1');

-- ----------------------------
-- Table structure for `tb_link`
-- ----------------------------
DROP TABLE IF EXISTS `tb_link`;
CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(50) DEFAULT NULL,
  `linkAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_link
-- ----------------------------
INSERT INTO tb_link VALUES ('1', '淘宝*购物商城', 'http://www.taobao.com');
INSERT INTO tb_link VALUES ('2', '天猫*购物商城', 'http://www.tianmao.com');
INSERT INTO tb_link VALUES ('3', '易迅*购物商城', 'http://www.yixun.com');
INSERT INTO tb_link VALUES ('4', '当当*购物商城', 'http://www.dangdang.com');
INSERT INTO tb_link VALUES ('5', '聚美优品*购物商城', 'http://sh.jumei.com');
INSERT INTO tb_link VALUES ('6', '蘑菇街*购物商城', 'http://www.mogujie.com');
INSERT INTO tb_link VALUES ('7', '易迅*团购商城', 'http://tuan.yixun.com');

-- ----------------------------
-- Table structure for `tb_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sign` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO tb_manager VALUES ('1', 'ad', '111', 'wolf', '0');
INSERT INTO tb_manager VALUES ('2', 'LiuDayong', 'LiuDayong', '刘大勇', '0');
INSERT INTO tb_manager VALUES ('3', 'HuangHao', 'hh', '黄浩', '0');
INSERT INTO tb_manager VALUES ('4', 'Xiaowu', 'Xiaowu', '许晓伍', '0');
INSERT INTO tb_manager VALUES ('5', 'Xuhaipeng', 'Xuhaipeng', '许海鹏', '0');
INSERT INTO tb_manager VALUES ('6', 'admin', '111', 'admin', '0');
INSERT INTO tb_manager VALUES ('8', 'admin', '111', '黄浩', '1');

-- ----------------------------
-- Table structure for `tb_member`
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO tb_member VALUES ('1', '2012281', '111', '黄浩', '18', '学生', '12@qq.com', '我的大学讲师', '1');
INSERT INTO tb_member VALUES ('2', 'Tword', '111', 'wolf', '25', '网站程序员', 'tsoft@qq.com', '我最喜欢干的事情是：', '吃');
INSERT INTO tb_member VALUES ('3', 'sas', 'sas', 'sas', '3', 'ff', 'admin@qq.com', 'dsljf', 'd');
INSERT INTO tb_member VALUES ('4', '1', '1', '1', '11', '1', '111@qq.com', '1', '1');
INSERT INTO tb_member VALUES ('5', 'liudayong', 'liudayong', 'dayong', '21', '总管', 'qingtai@hotmail.com', 'what?', 'go');
INSERT INTO tb_member VALUES ('6', '11111', '111111', 'xw', '1', 'IT', '625037932@qq.com', '你是傻逼吗？', '是');
INSERT INTO tb_member VALUES ('7', '2012281', '123456', '黄浩', '18', '学生', '12@qq.com', '我的大学讲师', '1');
INSERT INTO tb_member VALUES ('8', '111111', '111111', '1', '1', '1', '1', '1', '');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `setMoney` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `bz` text,
  `sign` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO tb_order VALUES ('4', '1384578759762', '2012281', '黄浩', '湖北工业职院4号教学楼', '152111111', '银行付款', '普通邮寄', '快点送！', '1', '2013-11-16 13:13:06');

-- ----------------------------
-- Table structure for `tb_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderdetail`;
CREATE TABLE `tb_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(50) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderdetail
-- ----------------------------
INSERT INTO tb_orderdetail VALUES ('3', '1372597801689', '8', '1000', '2');
INSERT INTO tb_orderdetail VALUES ('4', '1372597801689', '7', '4000', '1');
INSERT INTO tb_orderdetail VALUES ('5', '1372597912451', '8', '1000', '1');
INSERT INTO tb_orderdetail VALUES ('6', '1372598157982', '9', '1000', '1');
INSERT INTO tb_orderdetail VALUES ('7', '1372598875715', '9', '1000', '1');
INSERT INTO tb_orderdetail VALUES ('8', '1372600684049', '9', '1000', '1');
INSERT INTO tb_orderdetail VALUES ('10', '1384578759762', '101', '188888', '1');

-- ----------------------------
-- Table structure for `tb_smalltype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_smalltype`;
CREATE TABLE `tb_smalltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_smalltype
-- ----------------------------
INSERT INTO tb_smalltype VALUES ('1', '3', '显示器', '2013-01-01 00:00:00');
INSERT INTO tb_smalltype VALUES ('2', '2', '衣服', '2013-01-02 00:00:00');
INSERT INTO tb_smalltype VALUES ('3', '1', '洗衣机', '2013-01-03 00:00:00');
INSERT INTO tb_smalltype VALUES ('4', '1', '电视机', '2013-01-04 00:00:00');
INSERT INTO tb_smalltype VALUES ('5', '5', '杯', '2013-01-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('6', '4', '自行车', '2013-01-06 00:00:00');
INSERT INTO tb_smalltype VALUES ('8', '6', '珍藏木雕类', '2013-01-08 00:00:00');
INSERT INTO tb_smalltype VALUES ('9', '7', '手机', '2013-01-01 00:00:00');
INSERT INTO tb_smalltype VALUES ('11', '7', '相机', '2013-06-07 00:00:00');
INSERT INTO tb_smalltype VALUES ('12', '1', '豆浆机', '2013-07-07 00:00:00');
INSERT INTO tb_smalltype VALUES ('13', '4', '电动车', '2013-07-30 00:00:00');
INSERT INTO tb_smalltype VALUES ('14', '2', '鞋', '2013-07-30 00:00:00');
INSERT INTO tb_smalltype VALUES ('15', '8', '戒指', '2013-07-25 00:00:00');
INSERT INTO tb_smalltype VALUES ('16', '8', '项链', '2013-07-25 00:00:00');
INSERT INTO tb_smalltype VALUES ('17', '6', '陶瓷', '2013-07-25 00:00:00');
INSERT INTO tb_smalltype VALUES ('18', '3', '笔记本', '2013-06-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('19', '5', '刀叉勺碗', '2013-06-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('20', '5', '套装', '2013-06-06 00:00:00');
INSERT INTO tb_smalltype VALUES ('21', '4', '摩托车', '2013-08-08 00:00:00');
INSERT INTO tb_smalltype VALUES ('22', '2', '套西', '2013-05-06 00:00:00');
INSERT INTO tb_smalltype VALUES ('23', '6', '古玩玉器', '2013-06-08 00:00:00');
INSERT INTO tb_smalltype VALUES ('24', '7', '硬件', '2013-05-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('25', '7', '移动电源', '2013-05-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('26', '7', '平板', '2013-02-05 00:00:00');
INSERT INTO tb_smalltype VALUES ('27', '3', '台式一体机', '2013-06-01 00:00:00');
INSERT INTO tb_smalltype VALUES ('28', '1', '影音', '2013-06-06 00:00:00');
