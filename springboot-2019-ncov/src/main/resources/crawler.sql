/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : crawler

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-02-22 11:29:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '北京', '1');
INSERT INTO `city` VALUES ('2', '上海', '2');
INSERT INTO `city` VALUES ('3', '天津', '3');
INSERT INTO `city` VALUES ('4', '重庆', '4');
INSERT INTO `city` VALUES ('6', '石家庄', '5');
INSERT INTO `city` VALUES ('7', '唐山', '5');
INSERT INTO `city` VALUES ('8', '秦皇岛', '5');
INSERT INTO `city` VALUES ('9', '邯郸', '5');
INSERT INTO `city` VALUES ('10', '邢台', '5');
INSERT INTO `city` VALUES ('11', '保定', '5');
INSERT INTO `city` VALUES ('12', '张家口', '5');
INSERT INTO `city` VALUES ('13', '承德', '5');
INSERT INTO `city` VALUES ('14', '沧州', '5');
INSERT INTO `city` VALUES ('15', '廊坊', '5');
INSERT INTO `city` VALUES ('16', '衡水', '5');
INSERT INTO `city` VALUES ('17', '太原', '6');
INSERT INTO `city` VALUES ('18', '大同', '6');
INSERT INTO `city` VALUES ('19', '朔州', '6');
INSERT INTO `city` VALUES ('20', '阳泉', '6');
INSERT INTO `city` VALUES ('21', '长治', '6');
INSERT INTO `city` VALUES ('22', '晋城', '6');
INSERT INTO `city` VALUES ('23', '忻州', '6');
INSERT INTO `city` VALUES ('24', '晋中', '6');
INSERT INTO `city` VALUES ('25', '临汾', '6');
INSERT INTO `city` VALUES ('26', '运城', '6');
INSERT INTO `city` VALUES ('27', '吕梁', '6');
INSERT INTO `city` VALUES ('28', '西安', '7');
INSERT INTO `city` VALUES ('29', '铜川', '7');
INSERT INTO `city` VALUES ('30', '宝鸡', '7');
INSERT INTO `city` VALUES ('31', '咸阳', '7');
INSERT INTO `city` VALUES ('32', '渭南', '7');
INSERT INTO `city` VALUES ('33', '延安', '7');
INSERT INTO `city` VALUES ('34', '汉中', '7');
INSERT INTO `city` VALUES ('35', '榆林', '7');
INSERT INTO `city` VALUES ('36', '安康', '7');
INSERT INTO `city` VALUES ('37', '商洛', '7');
INSERT INTO `city` VALUES ('38', '济南', '8');
INSERT INTO `city` VALUES ('39', '青岛', '8');
INSERT INTO `city` VALUES ('40', '淄博', '8');
INSERT INTO `city` VALUES ('41', '枣庄', '8');
INSERT INTO `city` VALUES ('42', '东营', '8');
INSERT INTO `city` VALUES ('43', '烟台', '8');
INSERT INTO `city` VALUES ('44', '潍坊', '8');
INSERT INTO `city` VALUES ('45', '济宁', '8');
INSERT INTO `city` VALUES ('46', '泰安', '8');
INSERT INTO `city` VALUES ('47', '威海', '8');
INSERT INTO `city` VALUES ('48', '日照', '8');
INSERT INTO `city` VALUES ('49', '莱芜', '8');
INSERT INTO `city` VALUES ('50', '临沂', '8');
INSERT INTO `city` VALUES ('51', '德州', '8');
INSERT INTO `city` VALUES ('52', '聊城', '8');
INSERT INTO `city` VALUES ('53', '滨州', '8');
INSERT INTO `city` VALUES ('54', '菏泽', '8');
INSERT INTO `city` VALUES ('55', '郑州', '9');
INSERT INTO `city` VALUES ('56', '开封', '9');
INSERT INTO `city` VALUES ('57', '洛阳', '9');
INSERT INTO `city` VALUES ('58', '平顶山', '9');
INSERT INTO `city` VALUES ('59', '安阳', '9');
INSERT INTO `city` VALUES ('60', '鹤壁', '9');
INSERT INTO `city` VALUES ('61', '新乡', '9');
INSERT INTO `city` VALUES ('62', '焦作', '9');
INSERT INTO `city` VALUES ('63', '濮阳', '9');
INSERT INTO `city` VALUES ('64', '许昌', '9');
INSERT INTO `city` VALUES ('65', '漯河', '9');
INSERT INTO `city` VALUES ('66', '三门峡', '9');
INSERT INTO `city` VALUES ('67', '南阳', '9');
INSERT INTO `city` VALUES ('68', '商丘', '9');
INSERT INTO `city` VALUES ('69', '信阳', '9');
INSERT INTO `city` VALUES ('70', '周口', '9');
INSERT INTO `city` VALUES ('71', '驻马店', '9');
INSERT INTO `city` VALUES ('72', '沈阳', '10');
INSERT INTO `city` VALUES ('73', '大连', '10');
INSERT INTO `city` VALUES ('74', '鞍山', '10');
INSERT INTO `city` VALUES ('75', '抚顺', '10');
INSERT INTO `city` VALUES ('76', '本溪', '10');
INSERT INTO `city` VALUES ('77', '丹东', '10');
INSERT INTO `city` VALUES ('78', '锦州', '10');
INSERT INTO `city` VALUES ('79', '营口', '10');
INSERT INTO `city` VALUES ('80', '阜新', '10');
INSERT INTO `city` VALUES ('81', '辽阳', '10');
INSERT INTO `city` VALUES ('82', '盘锦', '10');
INSERT INTO `city` VALUES ('83', '铁岭', '10');
INSERT INTO `city` VALUES ('84', '朝阳', '10');
INSERT INTO `city` VALUES ('85', '葫芦岛', '10');
INSERT INTO `city` VALUES ('86', '长春', '11');
INSERT INTO `city` VALUES ('87', '吉林', '11');
INSERT INTO `city` VALUES ('88', '四平', '11');
INSERT INTO `city` VALUES ('89', '辽源', '11');
INSERT INTO `city` VALUES ('90', '通化', '11');
INSERT INTO `city` VALUES ('91', '白山', '11');
INSERT INTO `city` VALUES ('92', '松原', '11');
INSERT INTO `city` VALUES ('93', '白城', '11');
INSERT INTO `city` VALUES ('94', '哈尔滨', '12');
INSERT INTO `city` VALUES ('95', '齐齐哈尔', '12');
INSERT INTO `city` VALUES ('96', '鹤岗', '12');
INSERT INTO `city` VALUES ('97', '双鸭山', '12');
INSERT INTO `city` VALUES ('98', '鸡西', '12');
INSERT INTO `city` VALUES ('99', '大庆', '12');
INSERT INTO `city` VALUES ('100', '伊春', '12');
INSERT INTO `city` VALUES ('101', '牡丹江', '12');
INSERT INTO `city` VALUES ('102', '佳木斯', '12');
INSERT INTO `city` VALUES ('103', '七台河', '12');
INSERT INTO `city` VALUES ('104', '黑河', '12');
INSERT INTO `city` VALUES ('105', '绥化', '12');
INSERT INTO `city` VALUES ('106', '南京', '13');
INSERT INTO `city` VALUES ('107', '无锡', '13');
INSERT INTO `city` VALUES ('108', '徐州', '13');
INSERT INTO `city` VALUES ('109', '常州', '13');
INSERT INTO `city` VALUES ('110', '苏州', '13');
INSERT INTO `city` VALUES ('111', '南通', '13');
INSERT INTO `city` VALUES ('112', '连云港', '13');
INSERT INTO `city` VALUES ('113', '淮安', '13');
INSERT INTO `city` VALUES ('114', '盐城', '13');
INSERT INTO `city` VALUES ('115', '扬州', '13');
INSERT INTO `city` VALUES ('116', '镇江', '13');
INSERT INTO `city` VALUES ('117', '泰州', '13');
INSERT INTO `city` VALUES ('118', '宿迁', '13');
INSERT INTO `city` VALUES ('119', '杭州', '14');
INSERT INTO `city` VALUES ('120', '宁波', '14');
INSERT INTO `city` VALUES ('121', '温州', '14');
INSERT INTO `city` VALUES ('122', ' 嘉兴', '14');
INSERT INTO `city` VALUES ('123', '湖州', '14');
INSERT INTO `city` VALUES ('124', '绍兴', '14');
INSERT INTO `city` VALUES ('125', '金华', '14');
INSERT INTO `city` VALUES ('126', '衢州', '14');
INSERT INTO `city` VALUES ('127', '舟山', '14');
INSERT INTO `city` VALUES ('128', '台州', '14');
INSERT INTO `city` VALUES ('129', '丽水', '14');
INSERT INTO `city` VALUES ('130', '合肥', '15');
INSERT INTO `city` VALUES ('131', '芜湖', '15');
INSERT INTO `city` VALUES ('132', '蚌埠', '15');
INSERT INTO `city` VALUES ('133', '淮南', '15');
INSERT INTO `city` VALUES ('134', '马鞍山', '15');
INSERT INTO `city` VALUES ('135', '淮北', '15');
INSERT INTO `city` VALUES ('136', '铜陵', '15');
INSERT INTO `city` VALUES ('137', '安庆', '15');
INSERT INTO `city` VALUES ('138', '黄山', '15');
INSERT INTO `city` VALUES ('139', '滁州', '15');
INSERT INTO `city` VALUES ('140', '阜阳', '15');
INSERT INTO `city` VALUES ('141', '宿州', '15');
INSERT INTO `city` VALUES ('142', '巢湖', '15');
INSERT INTO `city` VALUES ('143', '六安', '15');
INSERT INTO `city` VALUES ('144', '亳州', '15');
INSERT INTO `city` VALUES ('145', '池州', '15');
INSERT INTO `city` VALUES ('146', '宣城', '15');
INSERT INTO `city` VALUES ('147', '南昌', '16');
INSERT INTO `city` VALUES ('148', '景德镇', '16');
INSERT INTO `city` VALUES ('149', '萍乡', '16');
INSERT INTO `city` VALUES ('150', '九江', '16');
INSERT INTO `city` VALUES ('151', '新余', '16');
INSERT INTO `city` VALUES ('152', '鹰潭', '16');
INSERT INTO `city` VALUES ('153', '赣州', '16');
INSERT INTO `city` VALUES ('154', '吉安', '16');
INSERT INTO `city` VALUES ('155', '宜春', '16');
INSERT INTO `city` VALUES ('156', '抚州', '16');
INSERT INTO `city` VALUES ('157', '上饶', '16');
INSERT INTO `city` VALUES ('158', '福州', '17');
INSERT INTO `city` VALUES ('159', '厦门', '17');
INSERT INTO `city` VALUES ('160', '莆田', '17');
INSERT INTO `city` VALUES ('161', '三明', '17');
INSERT INTO `city` VALUES ('162', '泉州', '17');
INSERT INTO `city` VALUES ('163', '漳州', '17');
INSERT INTO `city` VALUES ('164', '南平', '17');
INSERT INTO `city` VALUES ('165', '龙岩', '17');
INSERT INTO `city` VALUES ('166', '宁德', '17');
INSERT INTO `city` VALUES ('167', '武汉', '18');
INSERT INTO `city` VALUES ('168', '黄石', '18');
INSERT INTO `city` VALUES ('169', '十堰', '18');
INSERT INTO `city` VALUES ('170', '荆州', '18');
INSERT INTO `city` VALUES ('171', '宜昌', '18');
INSERT INTO `city` VALUES ('172', '襄樊', '18');
INSERT INTO `city` VALUES ('173', '鄂州', '18');
INSERT INTO `city` VALUES ('174', '荆门', '18');
INSERT INTO `city` VALUES ('175', '孝感', '18');
INSERT INTO `city` VALUES ('176', '黄冈', '18');
INSERT INTO `city` VALUES ('177', '咸宁', '18');
INSERT INTO `city` VALUES ('178', '随州', '18');
INSERT INTO `city` VALUES ('179', '长沙', '19');
INSERT INTO `city` VALUES ('180', '株洲', '19');
INSERT INTO `city` VALUES ('181', '湘潭', '19');
INSERT INTO `city` VALUES ('182', '衡阳', '19');
INSERT INTO `city` VALUES ('183', '邵阳', '19');
INSERT INTO `city` VALUES ('184', '常州', '19');
INSERT INTO `city` VALUES ('185', '张家界', '19');
INSERT INTO `city` VALUES ('186', '益阳', '19');
INSERT INTO `city` VALUES ('187', '郴州', '19');
INSERT INTO `city` VALUES ('188', '永州', '19');
INSERT INTO `city` VALUES ('189', '怀化', '19');
INSERT INTO `city` VALUES ('190', '娄底', '19');
INSERT INTO `city` VALUES ('191', '成都', '20');
INSERT INTO `city` VALUES ('192', '自贡', '20');
INSERT INTO `city` VALUES ('193', '攀枝花', '20');
INSERT INTO `city` VALUES ('194', '泸州', '20');
INSERT INTO `city` VALUES ('195', '德阳', '20');
INSERT INTO `city` VALUES ('196', '绵阳', '20');
INSERT INTO `city` VALUES ('197', '广元', '20');
INSERT INTO `city` VALUES ('198', '遂宁', '20');
INSERT INTO `city` VALUES ('199', '内江', '20');
INSERT INTO `city` VALUES ('200', '乐山', '20');
INSERT INTO `city` VALUES ('201', '南充', '20');
INSERT INTO `city` VALUES ('202', '眉山', '20');
INSERT INTO `city` VALUES ('203', '宜宾', '20');
INSERT INTO `city` VALUES ('204', '广安', '20');
INSERT INTO `city` VALUES ('205', '达州', '20');
INSERT INTO `city` VALUES ('206', '雅安', '20');
INSERT INTO `city` VALUES ('207', '巴中', '20');
INSERT INTO `city` VALUES ('208', '资阳', '20');
INSERT INTO `city` VALUES ('209', '贵阳', '21');
INSERT INTO `city` VALUES ('210', '六盘水', '21');
INSERT INTO `city` VALUES ('211', '遵义', '21');
INSERT INTO `city` VALUES ('212', '安顺', '21');
INSERT INTO `city` VALUES ('213', '昆明', '22');
INSERT INTO `city` VALUES ('214', '曲靖', '22');
INSERT INTO `city` VALUES ('215', '玉溪', '22');
INSERT INTO `city` VALUES ('216', '保山', '22');
INSERT INTO `city` VALUES ('217', '邵通', '22');
INSERT INTO `city` VALUES ('218', '丽江', '22');
INSERT INTO `city` VALUES ('219', '普洱', '22');
INSERT INTO `city` VALUES ('220', '临沧', '22');
INSERT INTO `city` VALUES ('221', '广州', '23');
INSERT INTO `city` VALUES ('222', '深圳', '23');
INSERT INTO `city` VALUES ('223', '珠海', '23');
INSERT INTO `city` VALUES ('224', '汕头', '23');
INSERT INTO `city` VALUES ('225', '韶关', '23');
INSERT INTO `city` VALUES ('226', '佛山', '23');
INSERT INTO `city` VALUES ('227', '江门', '23');
INSERT INTO `city` VALUES ('228', '湛江', '23');
INSERT INTO `city` VALUES ('229', '茂名', '23');
INSERT INTO `city` VALUES ('230', '肇庆', '23');
INSERT INTO `city` VALUES ('231', '惠州', '23');
INSERT INTO `city` VALUES ('232', '梅州', '23');
INSERT INTO `city` VALUES ('233', '汕尾', '23');
INSERT INTO `city` VALUES ('234', '河源', '23');
INSERT INTO `city` VALUES ('235', '阳江', '23');
INSERT INTO `city` VALUES ('236', '清远', '23');
INSERT INTO `city` VALUES ('237', '东莞', '23');
INSERT INTO `city` VALUES ('238', '中山', '23');
INSERT INTO `city` VALUES ('239', '潮州', '23');
INSERT INTO `city` VALUES ('240', '揭阳', '23');
INSERT INTO `city` VALUES ('241', '云浮', '23');
INSERT INTO `city` VALUES ('242', '海口', '24');
INSERT INTO `city` VALUES ('243', '三亚', '24');
INSERT INTO `city` VALUES ('244', '兰州', '25');
INSERT INTO `city` VALUES ('245', '金昌', '25');
INSERT INTO `city` VALUES ('246', '白银', '25');
INSERT INTO `city` VALUES ('247', '天水', '25');
INSERT INTO `city` VALUES ('248', '嘉峪关', '25');
INSERT INTO `city` VALUES ('249', '武威', '25');
INSERT INTO `city` VALUES ('250', '张掖', '25');
INSERT INTO `city` VALUES ('251', '平凉', '25');
INSERT INTO `city` VALUES ('252', '酒泉', '25');
INSERT INTO `city` VALUES ('253', '庆阳', '25');
INSERT INTO `city` VALUES ('254', '定西', '25');
INSERT INTO `city` VALUES ('255', '陇南', '25');
INSERT INTO `city` VALUES ('256', '西宁', '26');
INSERT INTO `city` VALUES ('257', '台北', '27');
INSERT INTO `city` VALUES ('258', '高雄', '27');
INSERT INTO `city` VALUES ('259', '基隆', '27');
INSERT INTO `city` VALUES ('260', '台中', '27');
INSERT INTO `city` VALUES ('261', '台南', '27');
INSERT INTO `city` VALUES ('262', '新竹', '27');
INSERT INTO `city` VALUES ('263', '嘉义', '27');
INSERT INTO `city` VALUES ('264', '呼和浩特', '28');
INSERT INTO `city` VALUES ('265', '包头', '28');
INSERT INTO `city` VALUES ('266', '乌海', '28');
INSERT INTO `city` VALUES ('267', '赤峰', '28');
INSERT INTO `city` VALUES ('268', '通辽', '28');
INSERT INTO `city` VALUES ('269', '鄂尔多斯', '28');
INSERT INTO `city` VALUES ('270', '呼伦贝尔', '28');
INSERT INTO `city` VALUES ('271', '巴彦淖尔', '28');
INSERT INTO `city` VALUES ('272', '乌兰察布', '28');
INSERT INTO `city` VALUES ('273', '乌鲁木齐', '29');
INSERT INTO `city` VALUES ('274', '克拉玛依', '29');
INSERT INTO `city` VALUES ('275', '拉萨', '30');
INSERT INTO `city` VALUES ('276', '南宁', '31');
INSERT INTO `city` VALUES ('277', '柳州', '31');
INSERT INTO `city` VALUES ('278', '桂林', '31');
INSERT INTO `city` VALUES ('279', '梧州', '31');
INSERT INTO `city` VALUES ('280', '北海', '31');
INSERT INTO `city` VALUES ('281', '防城港', '31');
INSERT INTO `city` VALUES ('282', '钦州', '31');
INSERT INTO `city` VALUES ('283', '贵港', '31');
INSERT INTO `city` VALUES ('284', '玉林', '31');
INSERT INTO `city` VALUES ('285', '百色', '31');
INSERT INTO `city` VALUES ('286', '贺州', '31');
INSERT INTO `city` VALUES ('287', '河池', '31');
INSERT INTO `city` VALUES ('288', '来宾', '31');
INSERT INTO `city` VALUES ('289', '崇左', '31');
INSERT INTO `city` VALUES ('290', '银川', '32');
INSERT INTO `city` VALUES ('291', '石嘴山', '32');
INSERT INTO `city` VALUES ('292', '吴忠', '32');
INSERT INTO `city` VALUES ('293', '固原', '32');
INSERT INTO `city` VALUES ('294', '中卫', '32');
INSERT INTO `city` VALUES ('295', '香港', '33');
INSERT INTO `city` VALUES ('296', '澳门', '34');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', '中国');
INSERT INTO `country` VALUES ('2', '美国');
INSERT INTO `country` VALUES ('3', '日本');

-- ----------------------------
-- Table structure for dailydata
-- ----------------------------
DROP TABLE IF EXISTS `dailydata`;
CREATE TABLE `dailydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(11) DEFAULT NULL,
  `province_id` varchar(11) DEFAULT NULL,
  `city_id` varchar(11) DEFAULT NULL,
  `currentConfirmedCount` int(11) DEFAULT NULL,
  `confirmedCount` int(11) DEFAULT NULL,
  `curedCount` int(11) DEFAULT NULL,
  `deadCount` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dailydata
-- ----------------------------
INSERT INTO `dailydata` VALUES ('1698', '中国', '湖北省', '武汉', '37861', '45027', '5581', '1585', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1699', '中国', '湖北省', '孝感', '2566', '3329', '674', '89', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1700', '中国', '湖北省', '黄冈', '1603', '2839', '1149', '87', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1701', '中国', '湖北省', '荆州', '1019', '1510', '451', '40', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1702', '中国', '湖北省', '鄂州', '950', '1338', '350', '38', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1703', '中国', '湖北省', '随州', '947', '1283', '309', '27', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1704', '中国', '湖北省', '襄阳', '850', '1167', '294', '23', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1705', '中国', '湖北省', '荆门', '559', '794', '201', '34', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1706', '中国', '湖北省', '黄石', '610', '967', '331', '26', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1707', '中国', '湖北省', '宜昌', '633', '891', '231', '27', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1708', '中国', '湖北省', '咸宁', '488', '766', '268', '10', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1709', '中国', '湖北省', '十堰', '452', '641', '187', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1710', '中国', '湖北省', '天门', '328', '473', '133', '12', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1711', '中国', '湖北省', '仙桃', '364', '567', '184', '19', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1712', '中国', '湖北省', '恩施州', '139', '244', '102', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1713', '中国', '湖北省', '潜江', '129', '185', '49', '7', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1714', '中国', '湖北省', '神农架林区', '0', '10', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1715', '中国', '湖北省', '待明确地区', '-5', '0', '5', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('1716', '中国', '广东省', '深圳', '215', '416', '199', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1717', '中国', '广东省', '广州', '182', '339', '157', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1718', '中国', '广东省', '东莞', '65', '92', '26', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1719', '中国', '广东省', '佛山', '51', '84', '33', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1720', '中国', '广东省', '珠海', '52', '98', '45', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1721', '中国', '广东省', '中山', '24', '66', '42', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1722', '中国', '广东省', '惠州', '24', '62', '38', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1723', '中国', '广东省', '江门', '14', '23', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1724', '中国', '广东省', '湛江', '10', '22', '12', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1725', '中国', '广东省', '肇庆', '9', '18', '8', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1726', '中国', '广东省', '茂名', '8', '14', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1727', '中国', '广东省', '汕头', '5', '25', '20', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1728', '中国', '广东省', '梅州', '6', '16', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1729', '中国', '广东省', '韶关', '5', '10', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1730', '中国', '广东省', '阳江', '3', '13', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1731', '中国', '广东省', '揭阳', '4', '8', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1732', '中国', '广东省', '清远', '3', '12', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1733', '中国', '广东省', '汕尾', '3', '5', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1734', '中国', '广东省', '河源', '3', '4', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1735', '中国', '广东省', '潮州', '1', '5', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1736', '中国', '河南省', '信阳', '173', '269', '94', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1737', '中国', '河南省', '南阳', '87', '155', '66', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1738', '中国', '河南省', '郑州', '64', '156', '92', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1739', '中国', '河南省', '驻马店', '44', '139', '95', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1740', '中国', '河南省', '周口', '42', '76', '34', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1741', '中国', '河南省', '商丘', '38', '91', '50', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1742', '中国', '河南省', '新乡', '28', '57', '26', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1743', '中国', '河南省', '平顶山', '23', '58', '34', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1744', '中国', '河南省', '安阳', '24', '53', '29', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1745', '中国', '河南省', '许昌', '23', '39', '16', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1746', '中国', '河南省', '焦作', '22', '32', '9', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1747', '中国', '河南省', '漯河', '14', '35', '21', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1748', '中国', '河南省', '洛阳', '15', '31', '15', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1749', '中国', '河南省', '开封', '13', '26', '13', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1750', '中国', '河南省', '鹤壁', '11', '19', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1751', '中国', '河南省', '濮阳', '10', '17', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1752', '中国', '河南省', '济源', '2', '5', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1753', '中国', '河南省', '三门峡', '2', '7', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1755', '中国', '浙江省', '温州', '258', '504', '245', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1756', '中国', '浙江省', '台州', '69', '146', '77', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1757', '中国', '浙江省', '宁波', '65', '156', '91', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1758', '中国', '浙江省', '杭州', '60', '169', '109', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1759', '中国', '浙江省', '嘉兴', '25', '45', '20', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1760', '中国', '浙江省', '金华', '19', '55', '36', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1761', '中国', '浙江省', '绍兴', '22', '42', '20', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1762', '中国', '浙江省', '衢州', '11', '21', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1763', '中国', '浙江省', '舟山', '5', '10', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1764', '中国', '浙江省', '湖州', '4', '10', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1765', '中国', '浙江省', '丽水', '3', '17', '14', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1766', '中国', '安徽省', '蚌埠', '115', '160', '40', '5', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1767', '中国', '安徽省', '合肥', '89', '173', '83', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1768', '中国', '安徽省', '阜阳', '76', '155', '79', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1769', '中国', '安徽省', '亳州', '43', '108', '65', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1770', '中国', '安徽省', '安庆', '30', '83', '53', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1771', '中国', '安徽省', '六安', '39', '69', '30', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1772', '中国', '安徽省', '马鞍山', '22', '37', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1773', '中国', '安徽省', '宿州', '19', '41', '22', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1774', '中国', '安徽省', '铜陵', '17', '29', '12', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1775', '中国', '安徽省', '芜湖', '12', '33', '21', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1776', '中国', '安徽省', '淮南', '15', '27', '12', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1777', '中国', '安徽省', '淮北', '13', '27', '14', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1778', '中国', '安徽省', '池州', '7', '17', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1779', '中国', '安徽省', '滁州', '5', '13', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1780', '中国', '安徽省', '黄山', '3', '9', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1781', '中国', '安徽省', '宣城', '2', '6', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1782', '中国', '江西省', '南昌', '96', '229', '133', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1783', '中国', '江西省', '九江', '74', '118', '44', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1784', '中国', '江西省', '上饶', '68', '123', '55', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1785', '中国', '江西省', '宜春', '64', '106', '42', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1786', '中国', '江西省', '新余', '61', '130', '69', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1787', '中国', '江西省', '赣州', '47', '76', '28', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1788', '中国', '江西省', '抚州', '37', '72', '35', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1789', '中国', '江西省', '萍乡', '24', '33', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1790', '中国', '江西省', '鹰潭', '14', '18', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1791', '中国', '江西省', '吉安', '11', '22', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1792', '中国', '江西省', '景德镇', '3', '6', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1793', '中国', '江西省', '赣江新区', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1794', '中国', '湖南省', '长沙', '115', '242', '125', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1795', '中国', '湖南省', '岳阳', '83', '156', '72', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1796', '中国', '湖南省', '株洲', '32', '78', '46', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1797', '中国', '湖南省', '邵阳', '24', '102', '77', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1798', '中国', '湖南省', '常德', '27', '79', '52', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1799', '中国', '湖南省', '娄底', '25', '76', '51', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1800', '中国', '湖南省', '益阳', '11', '59', '48', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1801', '中国', '湖南省', '衡阳', '11', '48', '37', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1802', '中国', '湖南省', '湘潭', '18', '35', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1803', '中国', '湖南省', '永州', '13', '43', '30', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1804', '中国', '湖南省', '郴州', '10', '39', '29', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1805', '中国', '湖南省', '怀化', '2', '40', '38', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1806', '中国', '湖南省', '湘西自治州', '1', '8', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1807', '中国', '湖南省', '张家界', '0', '5', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1808', '中国', '黑龙江省', '哈尔滨', '136', '194', '55', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1809', '中国', '黑龙江省', '鸡西', '43', '46', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1810', '中国', '黑龙江省', '双鸭山', '38', '52', '11', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1811', '中国', '黑龙江省', '齐齐哈尔', '31', '43', '11', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1812', '中国', '黑龙江省', '绥化', '23', '47', '20', '4', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1813', '中国', '黑龙江省', '大庆', '17', '26', '8', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1814', '中国', '黑龙江省', '黑河', '11', '14', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1815', '中国', '黑龙江省', '牡丹江', '13', '14', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1816', '中国', '黑龙江省', '七台河', '11', '17', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1817', '中国', '黑龙江省', '佳木斯', '1', '15', '14', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1818', '中国', '黑龙江省', '鹤岗', '3', '5', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1819', '中国', '黑龙江省', '伊春', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1820', '中国', '黑龙江省', '大兴安岭', '0', '2', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1821', '中国', '四川省', '成都', '71', '141', '69', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1822', '中国', '四川省', '甘孜州', '59', '67', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1823', '中国', '四川省', '达州', '29', '40', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1824', '中国', '四川省', '南充', '23', '38', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1825', '中国', '四川省', '巴中', '14', '24', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1826', '中国', '四川省', '内江', '12', '22', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1827', '中国', '四川省', '德阳', '14', '17', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1828', '中国', '四川省', '泸州', '18', '24', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1829', '中国', '四川省', '广安', '11', '30', '19', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1830', '中国', '四川省', '绵阳', '12', '22', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1831', '中国', '四川省', '凉山州', '7', '13', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1832', '中国', '四川省', '遂宁', '7', '17', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1833', '中国', '四川省', '攀枝花', '5', '16', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1834', '中国', '四川省', '宜宾', '5', '12', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1835', '中国', '四川省', '自贡', '2', '9', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1836', '中国', '四川省', '眉山', '5', '8', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1837', '中国', '四川省', '雅安', '4', '7', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1838', '中国', '四川省', '广元', '2', '6', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1839', '中国', '四川省', '乐山', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1840', '中国', '四川省', '资阳', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1841', '中国', '四川省', '阿坝州', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1843', '中国', '江苏省', '南京', '46', '93', '47', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1844', '中国', '江苏省', '苏州', '49', '87', '38', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1845', '中国', '江苏省', '淮安', '32', '66', '34', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1846', '中国', '江苏省', '连云港', '30', '48', '18', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1847', '中国', '江苏省', '徐州', '24', '79', '55', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1848', '中国', '江苏省', '无锡', '20', '55', '35', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1849', '中国', '江苏省', '常州', '22', '51', '29', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1850', '中国', '江苏省', '南通', '17', '40', '23', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1851', '中国', '江苏省', '泰州', '13', '37', '24', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1852', '中国', '江苏省', '扬州', '10', '23', '13', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1853', '中国', '江苏省', '盐城', '7', '27', '20', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1854', '中国', '江苏省', '宿迁', '6', '13', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1855', '中国', '江苏省', '镇江', '4', '12', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1856', '中国', '山东省', '烟台', '30', '47', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1857', '中国', '山东省', '济南', '30', '47', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1858', '中国', '山东省', '潍坊', '29', '44', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1859', '中国', '山东省', '青岛', '27', '59', '31', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1860', '中国', '山东省', '威海', '24', '38', '14', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1861', '中国', '山东省', '德州', '24', '37', '11', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1862', '中国', '山东省', '济宁', '23', '52', '29', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1863', '中国', '山东省', '泰安', '22', '33', '10', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1864', '中国', '山东省', '淄博', '23', '29', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1865', '中国', '山东省', '聊城', '17', '38', '21', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1866', '中国', '山东省', '枣庄', '13', '24', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1867', '中国', '山东省', '临沂', '8', '49', '41', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1868', '中国', '山东省', '日照', '9', '16', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1869', '中国', '山东省', '菏泽', '5', '18', '13', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1870', '中国', '山东省', '滨州', '4', '15', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1871', '中国', '重庆市', '万州区', '64', '113', '46', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1872', '中国', '重庆市', '江北区', '19', '28', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1873', '中国', '重庆市', '合川区', '15', '23', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1874', '中国', '重庆市', '潼南区', '14', '18', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1875', '中国', '重庆市', '綦江区', '12', '23', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1876', '中国', '重庆市', '垫江县', '11', '20', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1877', '中国', '重庆市', '奉节县', '13', '22', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1878', '中国', '重庆市', '南岸区', '10', '15', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1879', '中国', '重庆市', '长寿区', '11', '21', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1880', '中国', '重庆市', '两江新区', '10', '17', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1881', '中国', '重庆市', '九龙坡区', '9', '20', '10', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1882', '中国', '重庆市', '云阳县', '8', '25', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1883', '中国', '重庆市', '忠县', '7', '20', '13', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1884', '中国', '重庆市', '渝北区', '7', '16', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1885', '中国', '重庆市', '丰都县', '7', '10', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1886', '中国', '重庆市', '沙坪坝区', '7', '8', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1887', '中国', '重庆市', '渝中区', '6', '20', '14', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1888', '中国', '重庆市', '开州区', '5', '20', '14', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1889', '中国', '重庆市', '大足区', '5', '14', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1890', '中国', '重庆市', '石柱县', '6', '14', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1891', '中国', '重庆市', '铜梁区', '5', '9', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1892', '中国', '重庆市', '巫溪县', '4', '13', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1893', '中国', '重庆市', '巫山县', '4', '10', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1894', '中国', '重庆市', '荣昌区', '4', '9', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1895', '中国', '重庆市', '巴南区', '4', '6', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1896', '中国', '重庆市', '永川区', '1', '5', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1897', '中国', '重庆市', '高新区', '3', '4', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1898', '中国', '重庆市', '璧山区', '2', '9', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1899', '中国', '重庆市', '大渡口区', '2', '7', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1900', '中国', '重庆市', '彭水县', '2', '2', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1901', '中国', '重庆市', '江津区', '1', '4', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1902', '中国', '重庆市', '涪陵区', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1903', '中国', '重庆市', '酉阳县', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1904', '中国', '重庆市', '万盛经开区', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1905', '中国', '重庆市', '梁平区', '0', '4', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1906', '中国', '重庆市', '黔江区', '0', '2', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1907', '中国', '重庆市', '城口县', '0', '2', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1908', '中国', '重庆市', '武隆区', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1909', '中国', '重庆市', '秀山县', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1910', '中国', '北京市', '海淀区', '61', '61', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1911', '中国', '北京市', '朝阳区', '58', '58', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1912', '中国', '北京市', '西城区', '53', '53', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1913', '中国', '北京市', '丰台区', '37', '40', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1914', '中国', '北京市', '大兴区', '37', '39', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1915', '中国', '北京市', '昌平区', '29', '29', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1916', '中国', '北京市', '外地来京人员', '24', '26', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1917', '中国', '北京市', '通州区', '18', '19', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1918', '中国', '北京市', '房山区', '13', '16', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1919', '中国', '北京市', '石景山区', '13', '14', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1920', '中国', '北京市', '东城区', '11', '12', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1921', '中国', '北京市', '顺义区', '10', '10', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1922', '中国', '北京市', '怀柔区', '7', '7', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1923', '中国', '北京市', '密云区', '7', '7', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1924', '中国', '北京市', '门头沟区', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1925', '中国', '北京市', '延庆区', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1927', '中国', '福建省', '福州', '35', '71', '36', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1928', '中国', '福建省', '莆田', '33', '55', '22', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1929', '中国', '福建省', '泉州', '30', '46', '16', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1930', '中国', '福建省', '厦门', '25', '35', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1931', '中国', '福建省', '宁德', '9', '26', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1932', '中国', '福建省', '南平', '12', '20', '8', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1933', '中国', '福建省', '漳州', '9', '20', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1934', '中国', '福建省', '三明', '9', '14', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1935', '中国', '福建省', '龙岩', '5', '6', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1936', '中国', '河北省', '唐山', '39', '56', '16', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1937', '中国', '河北省', '沧州', '23', '48', '22', '3', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1938', '中国', '河北省', '张家口', '10', '34', '24', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1939', '中国', '河北省', '邯郸', '14', '31', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1940', '中国', '河北省', '石家庄', '15', '28', '13', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1941', '中国', '河北省', '廊坊', '9', '30', '21', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1942', '中国', '河北省', '邢台', '9', '23', '13', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1943', '中国', '河北省', '秦皇岛', '5', '10', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1944', '中国', '河北省', '保定', '5', '32', '27', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1945', '中国', '河北省', '承德', '2', '7', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1946', '中国', '河北省', '衡水', '2', '8', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1947', '中国', '广西壮族自治区', '南宁', '30', '54', '24', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1948', '中国', '广西壮族自治区', '北海', '29', '44', '14', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1949', '中国', '广西壮族自治区', '河池', '18', '23', '4', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1950', '中国', '广西壮族自治区', '桂林', '16', '31', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1951', '中国', '广西壮族自治区', '柳州', '13', '24', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1952', '中国', '广西壮族自治区', '防城港', '13', '19', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1953', '中国', '广西壮族自治区', '来宾', '11', '11', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1954', '中国', '广西壮族自治区', '玉林', '7', '11', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1955', '中国', '广西壮族自治区', '钦州', '7', '8', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1956', '中国', '广西壮族自治区', '贵港', '5', '8', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1957', '中国', '广西壮族自治区', '贺州', '3', '4', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1958', '中国', '广西壮族自治区', '百色', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1959', '中国', '广西壮族自治区', '梧州', '0', '5', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1960', '中国', '上海市', '外地来沪人员', '40', '110', '69', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1961', '中国', '上海市', '浦东新区', '22', '60', '38', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1962', '中国', '上海市', '宝山区', '12', '21', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1963', '中国', '上海市', '徐汇区', '9', '18', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1964', '中国', '上海市', '松江区', '7', '14', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1965', '中国', '上海市', '静安区', '6', '16', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1966', '中国', '上海市', '普陀区', '5', '11', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1967', '中国', '上海市', '嘉定区', '6', '9', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1968', '中国', '上海市', '杨浦区', '5', '9', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1969', '中国', '上海市', '奉贤区', '6', '9', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1970', '中国', '上海市', '长宁区', '3', '13', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1971', '中国', '上海市', '闵行区', '4', '19', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1972', '中国', '上海市', '黄浦区', '3', '6', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1973', '中国', '上海市', '虹口区', '3', '7', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1974', '中国', '上海市', '崇明区', '2', '4', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1975', '中国', '上海市', '金山区', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1976', '中国', '上海市', '青浦区', '0', '5', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1978', '中国', '陕西省', '西安', '72', '120', '47', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1979', '中国', '陕西省', '汉中', '16', '26', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1980', '中国', '陕西省', '渭南', '11', '15', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1981', '中国', '陕西省', '安康', '11', '26', '15', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1982', '中国', '陕西省', '咸阳', '7', '17', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1983', '中国', '陕西省', '商洛', '3', '7', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1984', '中国', '陕西省', '宝鸡', '3', '13', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1985', '中国', '陕西省', '延安', '2', '8', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1986', '中国', '陕西省', '铜川', '2', '8', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1987', '中国', '陕西省', '榆林', '2', '3', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1988', '中国', '陕西省', '杨凌', '1', '1', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1989', '中国', '陕西省', '韩城', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1991', '中国', '云南省', '昆明', '29', '53', '24', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1992', '中国', '云南省', '昭通', '20', '25', '5', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1993', '中国', '云南省', '西双版纳', '11', '15', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1994', '中国', '云南省', '玉溪', '4', '14', '9', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1995', '中国', '云南省', '曲靖', '7', '13', '6', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1996', '中国', '云南省', '保山', '6', '9', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1997', '中国', '云南省', '红河州', '5', '8', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1998', '中国', '云南省', '大理州', '3', '13', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('1999', '中国', '云南省', '德宏州', '3', '5', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2000', '中国', '云南省', '楚雄州', '2', '4', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2001', '中国', '云南省', '文山州', '2', '2', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2002', '中国', '云南省', '普洱', '1', '4', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2003', '中国', '云南省', '丽江', '0', '7', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2004', '中国', '云南省', '临沧', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2005', '中国', '天津市', '宝坻区', '38', '55', '15', '2', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2006', '中国', '天津市', '河东区', '7', '15', '7', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2007', '中国', '天津市', '北辰区', '5', '6', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2008', '中国', '天津市', '南开区', '5', '6', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2009', '中国', '天津市', '河北区', '3', '12', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2010', '中国', '天津市', '宁河区', '4', '4', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2011', '中国', '天津市', '外地来津人员', '2', '6', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2012', '中国', '天津市', '东丽区', '2', '4', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2013', '中国', '天津市', '和平区', '2', '6', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2014', '中国', '天津市', '河西区', '2', '4', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2015', '中国', '天津市', '滨海新区', '2', '3', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2016', '中国', '天津市', '武清区', '1', '2', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2017', '中国', '天津市', '西青区', '0', '4', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2018', '中国', '天津市', '红桥区', '0', '2', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2019', '中国', '天津市', '津南区', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2020', '中国', '贵州省', '贵阳', '21', '36', '14', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2021', '中国', '贵州省', '遵义', '15', '32', '17', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2022', '中国', '贵州省', '毕节', '13', '23', '10', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2023', '中国', '贵州省', '黔南州', '10', '17', '7', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2024', '中国', '贵州省', '黔东南州', '6', '10', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2025', '中国', '贵州省', '六盘水', '3', '10', '6', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2026', '中国', '贵州省', '安顺', '3', '4', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2027', '中国', '贵州省', '铜仁', '1', '10', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2028', '中国', '贵州省', '黔西南州', '0', '4', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2029', '中国', '海南省', '三亚', '29', '54', '24', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2030', '中国', '海南省', '海口', '21', '39', '18', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2031', '中国', '海南省', '儋州', '4', '15', '11', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2032', '中国', '海南省', '昌江', '5', '7', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2033', '中国', '海南省', '万宁', '4', '13', '9', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2034', '中国', '海南省', '澄迈', '4', '9', '4', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2035', '中国', '海南省', '陵水', '3', '4', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2036', '中国', '海南省', '临高', '2', '6', '4', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2037', '中国', '海南省', '保亭', '2', '3', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2038', '中国', '海南省', '乐东', '2', '2', '0', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2039', '中国', '海南省', '琼海', '1', '6', '4', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2040', '中国', '海南省', '文昌', '0', '3', '3', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2041', '中国', '海南省', '东方', '1', '3', '2', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2042', '中国', '海南省', '定安', '0', '3', '2', '1', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2043', '中国', '海南省', '琼中', '0', '1', '1', '0', '2020-02-20 20:45:52');
INSERT INTO `dailydata` VALUES ('2044', '中国', '山西省', '晋中', '18', '36', '18', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2045', '中国', '山西省', '太原', '6', '19', '13', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2046', '中国', '山西省', '晋城', '7', '10', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2047', '中国', '山西省', '长治', '7', '8', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2048', '中国', '山西省', '大同', '6', '12', '6', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2049', '中国', '山西省', '运城', '3', '19', '16', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2050', '中国', '山西省', '朔州', '5', '8', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2051', '中国', '山西省', '忻州', '3', '7', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2052', '中国', '山西省', '阳泉', '2', '4', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2053', '中国', '山西省', '临汾', '1', '2', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2054', '中国', '山西省', '吕梁', '0', '6', '6', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2055', '中国', '内蒙古自治区', '包头', '9', '11', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2056', '中国', '内蒙古自治区', '鄂尔多斯', '6', '11', '5', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2057', '中国', '内蒙古自治区', '巴彦淖尔', '8', '8', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2058', '中国', '内蒙古自治区', '锡林郭勒盟', '8', '9', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2059', '中国', '内蒙古自治区', '呼和浩特', '5', '7', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2060', '中国', '内蒙古自治区', '通辽', '7', '7', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2061', '中国', '内蒙古自治区', '赤峰', '6', '9', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2062', '中国', '内蒙古自治区', '呼伦贝尔', '6', '7', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2063', '中国', '内蒙古自治区', '乌兰察布', '2', '3', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2064', '中国', '内蒙古自治区', '乌海市', '2', '2', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2065', '中国', '内蒙古自治区', '兴安盟', '1', '1', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2066', '中国', '辽宁省', '盘锦', '6', '11', '5', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2067', '中国', '辽宁省', '大连', '10', '19', '9', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2068', '中国', '辽宁省', '沈阳', '13', '28', '15', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2069', '中国', '辽宁省', '葫芦岛', '7', '12', '4', '1', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2070', '中国', '辽宁省', '铁岭', '6', '7', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2071', '中国', '辽宁省', '锦州', '5', '12', '7', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2072', '中国', '辽宁省', '阜新', '5', '8', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2073', '中国', '辽宁省', '鞍山', '4', '4', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2074', '中国', '辽宁省', '丹东', '2', '7', '5', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2075', '中国', '辽宁省', '朝阳', '3', '6', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2076', '中国', '辽宁省', '本溪', '0', '3', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2077', '中国', '辽宁省', '辽阳', '0', '3', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2078', '中国', '辽宁省', '营口', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2079', '中国', '新疆维吾尔自治区', '乌鲁木齐', '15', '23', '8', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2080', '中国', '新疆维吾尔自治区', '伊犁州', '12', '18', '6', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2081', '中国', '新疆维吾尔自治区', '兵团第四师', '10', '10', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2082', '中国', '新疆维吾尔自治区', '兵团第九师', '4', '4', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2083', '中国', '新疆维吾尔自治区', '巴州', '3', '3', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2084', '中国', '新疆维吾尔自治区', '兵团第十二师', '3', '3', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2085', '中国', '新疆维吾尔自治区', '昌吉州', '2', '4', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2086', '中国', '新疆维吾尔自治区', '吐鲁番市', '2', '3', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2087', '中国', '新疆维吾尔自治区', '兵团第八师石河子市', '2', '4', '1', '1', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2088', '中国', '新疆维吾尔自治区', '兵团第六师五家渠市', '2', '2', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2089', '中国', '新疆维吾尔自治区', '兵团第七师', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2090', '中国', '新疆维吾尔自治区', '阿克苏地区', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2091', '中国', '吉林省', '长春', '24', '45', '21', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2092', '中国', '吉林省', '四平市', '7', '15', '7', '1', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2093', '中国', '吉林省', '辽源', '6', '7', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2094', '中国', '吉林省', '公主岭', '4', '6', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2095', '中国', '吉林省', '吉林市', '1', '5', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2096', '中国', '吉林省', '通化', '3', '4', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2097', '中国', '吉林省', '延边', '1', '5', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2098', '中国', '吉林省', '松原', '0', '2', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2099', '中国', '吉林省', '白城', '1', '1', '0', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2100', '中国', '吉林省', '梅河口', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2101', '中国', '宁夏回族自治区', '吴忠', '19', '28', '9', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2102', '中国', '宁夏回族自治区', '银川', '6', '33', '27', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2103', '中国', '宁夏回族自治区', '固原', '2', '5', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2104', '中国', '宁夏回族自治区', '中卫', '0', '3', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2105', '中国', '宁夏回族自治区', '宁东', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2106', '中国', '宁夏回族自治区', '石嘴山', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2107', '中国', '甘肃省', '兰州', '10', '36', '24', '2', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2108', '中国', '甘肃省', '平凉', '5', '9', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2109', '中国', '甘肃省', '甘南', '4', '8', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2110', '中国', '甘肃省', '白银', '2', '4', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2111', '中国', '甘肃省', '天水', '0', '12', '12', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2112', '中国', '甘肃省', '定西', '1', '9', '8', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2113', '中国', '甘肃省', '庆阳', '1', '3', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2114', '中国', '甘肃省', '陇南', '0', '4', '4', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2115', '中国', '甘肃省', '临夏', '0', '3', '3', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2116', '中国', '甘肃省', '张掖', '0', '2', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2117', '中国', '甘肃省', '金昌', '0', '1', '1', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2118', '中国', '青海省', '西宁', '1', '15', '14', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2119', '中国', '青海省', '海北州', '1', '3', '2', '0', '2020-02-20 20:45:53');
INSERT INTO `dailydata` VALUES ('2120', '中国', '西藏自治区', '拉萨', '0', '1', '1', '0', '2020-02-20 20:45:53');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  `party` varchar(255) DEFAULT NULL,
  `motto` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `experience` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('2', '钟南山', '共产党员', ' “任何人敬业都需要有兴趣爱好作为动力，但兴趣不是天生的，大多是后天培养的。”', '1936-10-20', '福建厦门人', '中国工程院院士，著名呼吸病学专家', 'https://dss0.bdstatic.com/6Ox1bjeh1BF3odCf/it/u=1606822891,1765888325&fm=74&app=80&f=JPEG&size=f121,140?sec=1880279984&t=41d8d1c02e94cb4ece1b51b0611dbbbd', '这次抗击非典如果没有钟南山院士，结果可能就不会是这样。（中共中央政治局原常委、全国人大常委会原委员长张德江） [10] \r\n他投身呼吸系统疾病的临床、教学和科研工作50年，是推进中国呼吸病学发展迈向国际前沿的学科带头人之一。在非典疫情中，率先带领团队投入救治行动，确立广东病原学，组织广东非典防治研究，获国际上最高存活率。在甲流防治中，成功抢救多例重症甲流患者，参与制定卫生部治疗方案。（中国科协） [31] \r\n钟南山是一个真实、普通、甚至是平凡的中国医生。他跟所有有责任感的医生一样，几十年如一日，每周坚持出门诊看病人，每周坚持查房，一直到现在76岁了，还是如此。他说，这已经是一个习惯了！（南方日报）\r\n钟南山不仅医术精湛，医德高尚，他尊重科学，实事求是，敢医敢言的道德风骨和学术勇气更令人景仰。他勇敢地否定了卫生部所属国家疾病预防控制中心关于“典型衣原体是非典型肺炎病因”的观点，为广东卫生行政部门及时制定救治方案提供了决策论据，使广东成为全球非典病人治愈率最高、死亡率最低的地区之一。他最早制定出《非典型肺炎临床诊断标准》。他带领课题组，在全世界率先探索出了一套富有明显疗效的防治经验。这套经验被世界卫生组织的专家组认为对全世界抗击非典型肺炎有指导意义。（央视国际） [18] \r\n他是中国工程院院士，然而，在那些抗击非典的日子里，他成了一名骁勇的战士。抗击非典，也就是一场与死神争夺生命的战争。钟南山以自己的精湛医术和坚强斗志，成为了“非典”战场的不倒红旗。（搜狐新闻） [10] \r\n在这场关系着人类共同命运的殊死斗争中，钟南山以其战士的勇敢无畏、学者的铮铮风骨和悬壶济世的仁心仁术，挺身而出，冒死犯险，力挽狂澜，作出了杰出的贡献，从而赢得了世人由衷的敬重。他的名字，他所代表的精神，已经成为广东抗非斗争一面飘扬的旗帜。那一刻的悲壮，无啻于“向我开炮”的呼叫。他和同事们用生命、热血换来的防治非典的宝贵经验，不仅为广东、为中国，同时也是为全人类作出了重大贡献。（人民网） [32] \r\n钟南山在抗非斗争中面对种种困难和压力，他是智慧而刚毅的；面对同事和病人，他却是博爱和仁厚的。（广西大学社会科学与管理学院吴学东） [33] \r\n2003年抗击“非典”中，钟南山不顾生命危险救治危重病人，奔赴疫区指导医疗救治工作，倡导与国际卫生组织合作，主持制定我国“非典”等急性传染病诊治指南，为战胜“非典”疫情作出重要贡献。主动承担突发公共卫生事件代言人角色，向公众普及卫生知识，积极建言献策推动公共卫生应急体系建设，为夺取应对甲型流感、H7N9禽流感等突发公共卫生事件的胜利发挥了重要作用。 [22]');
INSERT INTO `doctor` VALUES ('3', '李兰娟', '院士、权威专家、学术带头人', '“这次疫情结束以后，希望国家逐步给年青一代树立正确的人生导向和正确的人生价值观！把高薪高福利高地位留给德才兼备的科研、军事技术人员，让孩子们明白真正偶像的含义！加强管控娱乐圈某些“明星”动辄上千万的片酬！只有少年强则国强，为祖国未来发展培养自己的国之栋梁！”', '1947-09-13', '浙江省绍兴市', '感染病（传染病）学家、中国人工肝开拓者', 'https://bkimg.cdn.bcebos.com/pic/c2cec3fdfc039245c797795a8894a4c27d1e2540?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg', '1947年9月13日，李兰娟出生于浙江省绍兴县夏履镇夏履桥村。\r\n1960年7月，李兰娟从绍兴夏履中心小学毕业后，被保送到绍兴三中 [5]  。\r\n1963年，李兰娟被浙江省杭州市第一中学（现浙江省杭州高级中学）录取。高中毕业后，她回到夏履镇做教师，并在省中医院学了针灸。之后，大队筹办农村合作医疗，大队支部书记请她去做赤脚医生，李兰娟的从医之路从此开启 [5]  。\r\n1970年，李兰娟被大队推荐到浙江医科大学学习 [5]  。\r\n1972年4月，在校期间的李兰娟加入中国共产党。\r\n1973年6月，李兰娟从浙江医科大学毕业后，在浙江医科大学附属第一医院担任主治医师（至1993年10月）。\r\n1974年9月—1975年6月，李兰娟在浙江医科大学基础医学系学习。\r\n1983年9月—1984年1月，李兰娟在浙江省卫生英语进修学校英语口语班学习。\r\n1984年8月，李兰娟在中国丹麦培训中心学习了两个月的微生物学。\r\n1986年，李兰娟申请到了人工肝治疗重型肝炎的青年科研基金，开始进行人工肝技术的研究。\r\n1993年10月—1996年10月，李兰娟担任浙江医科大学附属第一医院副院长。\r\n1996年10月，李兰娟担任浙江大学医学院附属一院教授。\r\n1996年11月—2002年6月，担任卫生部传染病重点实验室副主任。\r\n1998年3月—2008年3月，李兰娟担任浙江省卫生厅厅长、党组书记。\r\n2002年6月—2007年6月，李兰娟担任卫生部传染病重点实验室主任。\r\n2002年，担任肝衰竭与人工肝学组组长，主持制定了中国《人工肝支持系统的治疗指南》。\r\n2003年，在抗击“非典”的工作中，李兰娟对浙江省“非典”防治提出并采取了一系列创新性措施。\r\n2005年，李兰娟当选中国工程院院士，隶属于医药卫生学部（感染性疾病与传染病学） [3]  。\r\n2014年，获得何梁何利基金科学与技术进步奖；\r\n2016年，获得第十一届光华工程科技奖 [6]  。\r\n2018年1月，李兰娟团队获2017度国家科学技术进步奖特等奖 [7]  。\r\n2020年2月11日，李兰娟院士进入湖北省人民医院东院区ICU，分析了每一位患者的病情，并给出治疗方案。她的防护服上，写有“武汉加油”几个大字 [8] 。');
INSERT INTO `doctor` VALUES ('4', '李文亮', '眼科医生', '\"吹哨人\"说，天快亮了，我要走了，带着一张训诫书，那是我此生唯一的行囊。', '1985-06-18', '辽宁省锦州市北镇市', '眼科医生', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike116%2C5%2C5%2C116%2C38/sign=6a9cce649d45d688b70fbaf6c5ab167b/0e2442a7d933c89578229f2cde1373f08202000c.jpg', '2004年参加高考，武汉大学临床医学七年制专业毕业后，先在厦门工作了三年，2014年回到武汉，在武汉市中心医院工作至今。 [4] \r\n2019年12月30日，向外界发出防护预警，而被称为疫情“吹哨人”。 [1] \r\n2020年1月8日，李文亮在接诊时遇到不明原因的病毒性肺炎患者并受到感染。 [4] \r\n2020年1月10日，李文亮出现咳嗽发热等症状，随后病情变得严重。2月1日上午10时41分，李文亮在自己的微博上公布了其确诊新型冠状病毒肺炎的消息。此外，他的多名同事和父母也感染了新型冠状病毒肺炎。 [5-6] \r\n2020年2月6日21时24分，《中国新闻周刊》第一次打通武汉市中心医院重症监护室电话时，对方说正在抢救，直到23时56分最后一次致电，仍在抢救中。武汉协和医院一名医生表示，李文亮是于今晚21时30分左右停止心跳，但用上了ECMO（人工膜肺）进行抢救。 [7] \r\n2020年2月7日凌晨2点58分，武汉中心医院眼科医生李文亮在抗击新型冠状病毒感染的肺炎疫情工作中不幸感染，经全力抢救无效去世。 [3] ');

-- ----------------------------
-- Table structure for increase
-- ----------------------------
DROP TABLE IF EXISTS `increase`;
CREATE TABLE `increase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `confirmPeople` int(11) DEFAULT NULL,
  `doubtPeople` int(11) DEFAULT NULL,
  `updatetime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of increase
-- ----------------------------
INSERT INTO `increase` VALUES ('1', '2003', '15203', '2020-02-03');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `timelength` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('1', '防疫公益宣传片《疫情面前 保护好自己》 - 人民拍客', '讲科普、做提示，围绕防疫主题，传播公益爱心贴士，积极做到合理引导，传递健康声音，增强群众自我防护意识，传递信心和力量。（编排：王鑫；参演：李甜、由彩琳、孙璟璟、王春侠、张欣欣、吴芸芸、高雅、任雁、王林煦、江丹）', '宣传片', '/video/4.mp4', '1:00', '2020-02-21 11:34:33', 'http://flv3.people.com.cn/dev1/mvideo/images/2020/02/05/20200205_1494_vjdk_spri_50_586.jpg');
INSERT INTO `knowledge` VALUES ('2', '新型冠状病毒的防疫动画宣传片（一）_新闻中心_洛阳网', '新型冠状病毒的防疫动画宣传片。', '动画片', '/video/5.mp4', '2:14', '2020-02-21 11:39:26', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=426753837,149785939&fm=11&gp=0.jpg');
INSERT INTO `knowledge` VALUES ('3', '防疫宣传片 疾控_日照网', '新型冠状病毒的防疫动画宣传片。', '宣传片', '/video/6.mp4', '0:27', '2020-02-21 11:42:45', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=788967259,4206087156&fm=11&gp=0.jpg');
INSERT INTO `knowledge` VALUES ('4', '新型冠状病毒的防疫动画宣传片（三）_新闻中心_洛阳网', '新型冠状病毒的防疫动画宣传片。', '动画片', '/video/7.mp4', '0:38', '2020-02-21 11:49:55', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1370445996,2000040170&fm=11&gp=0.jpg');
INSERT INTO `knowledge` VALUES ('5', '新型冠状病毒的防疫动画宣传片（二）_新闻中心_洛阳网', '新型冠状病毒的防疫动画宣传片。', '动画片', '/video/8.mp4', '0:45', '2020-02-21 11:51:15', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2018699033,1294697144&fm=26&gp=0.jpg');
INSERT INTO `knowledge` VALUES ('6', '新型冠状病毒的防疫动画宣传片（四）_新闻中心_洛阳网', '新型冠状病毒的防疫动画宣传片。', '动画片', '/video/9.mp4', '0:32', '2020-02-21 12:03:26', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1812030665,1375504910&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pubDateStr` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `infoSource` varchar(255) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('72', '3分钟前', '天津市新增确诊病例3例，新增出院病例2例', '2020年2月18日0－24时，天津市报告新型冠状病毒肺炎新增确诊病例3例，新增危重型病例0例，新增重型病例0例，新增死亡病例0例，新增出院病例2例。其中：新增确诊病例中宝坻区3例。', '天津卫健委', 'http://wsjk.tj.gov.cn/art/2020/2/19/art_87_71167.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('73', '27分钟前', '陕西新增2例新冠肺炎，确诊病例累计242例', '截至2月19日9时，陕西新增2例新冠肺炎确诊病例，新增疑似病例19例。新增确诊病例中，西安市1例、汉中市1例。陕西累计报告新冠肺炎确诊病例242例（89例治愈出院）。', '陕西卫健委', 'http://sxwjw.shaanxi.gov.cn/art/2020/2/19/art_9_68128.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('74', '31分钟前', '浙江省新增确诊病例1例，新增出院病例30例', '2020年2月18日0-24时，浙江省报告新型冠状病毒肺炎新增确诊病例1例，新增出院病例30例。截至2月18日24时，浙江省累计报告新型冠状病毒肺炎确诊病例1173例，现有重症病例63例（其中危重22例），累计出院544例。', '浙江卫健委', 'https://www.zjwjw.gov.cn/art/2020/2/19/art_1202101_41943016.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('75', '33分钟前', '上海无新增确诊病例', '2020年2月18日12—24时，上海市排除新型冠状病毒肺炎疑似病例26例；无新增确诊病例。截至2月18日24时，上海市已累计排除疑似病例1880例，发现确诊病例333例。\n                        ', '上海卫健委', 'http://wsjkw.sh.gov.cn/xwfb/20200219/645a012cb78a4c109ace96293ecd0e2e.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('76', '33分钟前', '江西省报新增确诊病例1例，新增治愈52例  ', '2020年2月18日0-24时，江西省报告新型冠状病毒肺炎新增确诊病例1例，新增治愈出院病例52例。截至2月18日24时，江西省现有住院确诊病例571例。累计报告新型冠状病毒肺炎确诊病例934例，其中治愈出院病例362例，死亡病例1例。', '江西卫健委', 'http://hc.jiangxi.gov.cn/doc/2020/02/19/139117.shtml', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('77', '34分钟前', '宁夏新增确诊病例1例，新增出院病例7例', '2020年2月18日0-24时，全区新增新型冠状病毒肺炎确诊病例1例（同心县1例），新增出院病例7例。截至2月18日24时，全区现有确诊病例29例，累计出院病例42例；现有疑似病例25例（较17日减少2例）。', '宁夏卫健委', 'http://wsjkw.nx.gov.cn/info/1262/14472.htm', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('78', '35分钟前', '广东新增确诊病例3例，新增出院41例', '截至2月18日24时，全省累计报告新冠肺炎确诊病例1331例。18日当天全省新增确诊病例3例，为惠州市3例。新增出院41例，累计出院571例。新增出院病例中，8例为重型病例治愈出院，其他为普通型或者轻型治愈出院。新增死亡病例1例，为珠海市1例，累计死亡5例。另有疑似病例1例。有2543 名密切接触者正在接受医学观察。', '广东卫健委', 'http://wsjkw.gd.gov.cn/xxgzbdfk/yqtb/content/post_2900972.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('79', '36分钟前', '内蒙古自治区新增确诊病例2例，新增出院病例1例', '2020年2月18日9时至19日8时，内蒙古自治区报告新增新冠肺炎确诊病例2例，新增疑似病例3例，新增出院病例1例，排除疑似病例1例。', '内蒙古卫健委', 'http://wjw.nmg.gov.cn/doc/2020/02/19/292632.shtml', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('80', '38分钟前', ' 北京市新增6例新冠肺炎确诊病例，23例治愈出院 ', '2月18日0时至24时，本市新增6例新冠肺炎确诊病例，本市累计确诊病例393例。其中出院145例，死亡4例。', '北京卫健委', 'http://wjw.beijing.gov.cn/xwzx_20031/xwfb/202002/t20200219_1657553.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('81', '44分钟前', '江苏新增2例新型冠状病毒肺炎确诊病例', '2020年2月18日0-24时，江苏省报告新型冠状病毒肺炎新增确诊病例2例，均为普通型病例。新增出院病例33例。', '江苏卫健委', 'http://wjw.jiangsu.gov.cn/art/2020/2/19/art_7290_8976979.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('82', '44分钟前', '安徽省新增确诊4例，新增治愈出院病例68例', '2020年2月18日0-24时，安徽省报告新增确诊病例4例，无新增疑似病例，新增治愈出院病例68例。累计报告确诊病例986例，累计治愈出院病例361例，累计死亡病例6例，累计医学观察密切接触者24600人，尚在医学观察3602人。', '安徽卫健委', 'http://wjw.ah.gov.cn/news_details_55120.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('83', '45分钟前', '新疆（含兵团）新增确诊0例，新增死亡0例，新增治愈出2例', '2020年2月18日0-24时，新疆（含兵团）报告新型冠状病毒肺炎新增确诊病例0例，新增死亡病例0例，新增治愈出院病例2例。截至2月18日24时，新疆（含兵团）累计报告新型冠状病毒肺炎确诊病例76例（新疆维吾尔自治区52例、新疆生产建设兵团24例），累计死亡病例1例，累计治愈出院病例14例。', '新疆卫健委', 'http://www.xjhfpc.gov.cn/info/2070/18750.htm', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('84', '45分钟前', '辽宁省无新增确诊病例，新增12例治愈出院病例', '2020年2月18日0时至24时，辽宁省无新增新型冠状病毒肺炎确诊病例。新增12例治愈出院病例，其中大连市4例、本溪市2例、阜新市3例、辽阳市1例、葫芦岛市2例。全省累计报告新型冠状病毒肺炎确诊病例121例，治愈出院55例，死亡1例。     ', '辽宁卫健委', 'http://wsjk.ln.gov.cn/wst_zdzt/xxgzbd/yqtb/202002/t20200219_3744182.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('85', '48分钟前', '贵州省无新增确诊病例,新增治愈出院病例3例', '2020年2月18日12—24时，全省新型冠状病毒肺炎无新增确诊病例,新增治愈出院病例3例（遵义市3例）。截至2月18日24时，全省累计报告新型冠状病毒肺炎病例146例，治愈出院69例，轻症及普通型67例，重症4例，危重症4例，死亡2例。\n         ', '贵州卫健委', 'http://www.gzhfpc.gov.cn/ztzl_500663/xxgzbdgrdfyyqfk/yqdt/202002/t20200219_50042146.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('86', '58分钟前', '四川新增确诊病例6例，新增治愈14例', '2月18日0-24时，我省新型冠状病毒肺炎新增确诊病例6例，新增治愈出院病例14例，新增疑似病例40例，无新增死亡病例。截至2月19日0时，我省累计报告新型冠状病毒肺炎确诊病例514例，涉及21个市（州）。现有疫情县（市、区）98个（增加龙马潭区1个，减少九寨沟县、九龙县、新龙县、冕宁县等4个）。', '四川卫健委', 'http://wsjkw.sc.gov.cn/scwsjkw/gzbd01/2020/2/19/6634b956576942cc91356ceec1a1f692.shtml', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('87', '58分钟前', '青海省无新增确诊病例和疑似病例', '2020年2月18日0-24时，青海省报告新型冠状病毒肺炎新增确诊病例0例，新增重症病例0例，新增死亡病例0例，新增出院病例2例。当日无新增确诊病例和疑似病例。截至2月18日24时，青海省累计报告新型冠状病毒肺炎确诊病例18例，其中：重症病例1例，死亡病例0例，出院病例15例。', '青海卫健委', 'https://wsjkw.qinghai.gov.cn/ztbd/yqjk/yqtb/2020/02/19/1582072145467.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('88', '11小时前', '甘肃无新增新型冠状病毒肺炎确诊病例累计91例', '2月17日20时至2月18日20时，甘肃省无新增新型冠状病毒肺炎确诊病例。新增出院4例。截至2月18日20时，甘肃累计报告新型冠状病毒肺炎确诊病例91例。累计治愈出院62例，累计死亡病例2例。\n				', '甘肃卫健委', 'http://wsjk.gansu.gov.cn/single/11218/84225.html', '2020-02-19 09:40:16');
INSERT INTO `news` VALUES ('140', '1小时前', '湖北3月部分考试推迟', '湖北省推迟原定于3月份进行的以下报名及考试组织工作：1.2月20日至3月4日高等教育自学考试2020年4月份考试的报名;2.3月14日至15日高等教育自学考试计算机化考试；3.3月19日至22日湖北省英语口语等级（三级）考试；4.3月21日湖北省成人学士学位外语考试；新的报名、考试时间将根据情况另行通知。教育部考试中心已就3月份有关全国性考试作出推迟安排，湖北省遵照执行。', '人民网', 'http://m.weibo.cn/2286908003/4473646225213739', '2020-02-19 13:03:55');
INSERT INTO `news` VALUES ('141', '2小时前', '江西省疫情防控从“胶着对垒”转向“持续向好”            ', '　2月18日，江西省疫情防控应急指挥部综合组组长、省卫生健康委副主任龚建平在省新冠肺炎疫情防控工作新闻发布会（第十一场）上，通报了江西省最新疫情防治情况。\n', '江西卫健委', 'http://hc.jiangxi.gov.cn/doc/2020/02/19/139133.shtml', '2020-02-19 13:03:55');
INSERT INTO `news` VALUES ('142', '2小时前', '公安部要求严禁过度执法粗暴执法', '针对当前个别地方在疫情防控工作中存在的简单粗暴等问题，18日，国务委员、公安部党委书记、部长赵克志对公安民警依法开展疫情防控工作提出明确要求。他强调，要坚持严格规范公正文明执法，严禁过度执法、粗暴执法。\n', '人民日报', 'http://m.weibo.cn/2803301701/4473627565411919', '2020-02-19 13:03:55');
INSERT INTO `news` VALUES ('145', '5小时前', '钻石公主号2名新冠肺炎感染者死亡', '据日本广播协会电视台20日报道，2名在“钻石公主”号邮轮上感染冠肺炎的患者死亡。这首次出现在“钻石公主”号邮轮感染新冠肺炎后死亡的病例。截至目前，日本国内新冠肺炎死亡病例增至3例。\n', '人民日报', 'http://m.weibo.cn/2803301701/4473995094751309', '2020-02-20 17:19:20');
INSERT INTO `news` VALUES ('146', '6小时前', '全国13地新增病例为0', '2月19日0-24时，上海、江苏、辽宁、福建、山西、贵州、宁夏、云南、青海、新疆、西藏报告无新增新冠肺炎确诊病例；19日8时—20日8时，内蒙古报告无新增确诊病例；18日20时至19日20时，甘肃报告无新增确诊病例。且其余省区市新增确诊病例均为个位数。\n', '人民日报', 'http://m.weibo.cn/2803301701/4473991953264899', '2020-02-20 17:19:20');
INSERT INTO `news` VALUES ('147', '6小时前', '湖北以外新增病例16连降', '据国家卫健委数据统计，2月19日0—24时，全国除湖北以外地区新增确诊病例45例，连续第16日呈下降态势。前几日这一数据分别为：890例（3日）、731例（4日）、707例（5日)、696例（6日）、558例（7日）、509例（8日）、444例（9日）、381例（10日）、377例（11日）、312例（12日）、267例（13日）、221例（14日）、166例（15日）、115例（16日），79例（17日），56例（18日）。\n', '人民网', 'http://m.weibo.cn/2286908003/4473983589954353', '2020-02-20 17:19:20');
INSERT INTO `news` VALUES ('148', '6小时前', '全国新增394例新冠肺炎，累计确诊新冠肺炎74576例', '2月19日0—24时，31个省（自治区、直辖市）和新疆生产建设兵团报告新增确诊病例394例，新增死亡病例114例，新增疑似病例1277例。截至2月19日24时，据31个省（自治区、直辖市）和新疆生产建设兵团报告，现有确诊病例56303例，累计治愈出院病例16155例，累计死亡病例2118例，累计报告确诊病例74576例，现有疑似病例4922例。累计追踪到密切接触者589163人，尚在医学观察的密切接触者126363人。', '人民日报', 'http://m.weibo.cn/2803301701/4473982336318492', '2020-02-20 17:19:20');
INSERT INTO `news` VALUES ('149', '6小时前', '韩国累计确诊82例新冠肺炎', '据韩国卫生部门消息：截至当地时间20日上午9时，韩国新型冠状病毒感染者人数已达82人。新增的31例确诊患者中，有30人来自韩国南部的大邱市及周边的庆尚北道地区。经初步流行病学调查，18日该地区出现首例确诊病例，此后新增的确诊感染者大部分都与其有关联。', '央视新闻', 'http://m.weibo.cn/2656274875/4473980846903958', '2020-02-20 17:19:20');
INSERT INTO `news` VALUES ('170', '1小时前', '疑似或确诊孕产妇产检定点医院', '2月20日，国家卫健委公布各省（区、市）新型冠状病毒感染疑似或确诊孕产妇产检和住院分娩定点医院。\n', '人民日报', 'http://m.weibo.cn/2803301701/4474110862123362', '2020-02-20 20:43:23');
INSERT INTO `news` VALUES ('171', '1小时前', '湖北省内企业不早于3月10日24时前复工', '湖北发布通告：①省内各类企业先按不早于3月10日24时前复工。涉及保障疫情防控必需、公共事业运行必需、群众生活必需及其他涉及重要国计民生的相关企业除外 ②湖北省内学校延期开学，具体开学时间将经评估后公布③广大居民尽量减少出行，不参加聚集性活动。', '央视新闻', 'http://m.weibo.cn/2656274875/4474101017939775', '2020-02-20 20:43:23');
INSERT INTO `news` VALUES ('172', '2小时前', '29名外国公民在华确诊', '截至19日18时，外国公民在华确诊患新冠肺炎的病例有29例，其中在湖北是10例。其中，18人已经治愈出院，2例死亡，9人正在接受隔离治疗。中国政府高度重视在华外国公民的生命和安全，对在华感染新冠肺炎的外国公民，我们会一视同仁进行及时有效的救治。', '央视新闻', 'http://m.weibo.cn/2656274875/4474096693876136', '2020-02-20 20:43:23');
INSERT INTO `news` VALUES ('173', '3小时前', '贵州省新增治愈出院病例1例', '2020年2月20日0—12时，全省新型冠状病毒肺炎无新增确诊病例,新增治愈出院病例1例，其中：遵义市1例。', '贵州卫健委', 'http://www.gzhfpc.gov.cn/ztzl_500663/xxgzbdgrdfyyqfk/yqdt/202002/t20200220_50351377.html', '2020-02-20 20:43:23');
INSERT INTO `news` VALUES ('174', '6小时前', '上海新增1例新型冠状病毒肺炎确诊病例', '2020年2月20日0—12时，上海市排除新型冠状病毒肺炎疑似病例31例；新增治愈出院13例，其中1例为7月龄婴儿；新增确诊病例1例，为确诊病例密切接触者。 \n                        ', '上海卫健委', 'http://wsjkw.sh.gov.cn/xwfb/20200220/43a5c5294ea84850bd1b4b3a4b866b63.html', '2020-02-20 20:43:23');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `province_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京', '1');
INSERT INTO `province` VALUES ('2', '上海', '1');
INSERT INTO `province` VALUES ('3', '天津', '1');
INSERT INTO `province` VALUES ('4', '重庆', '1');
INSERT INTO `province` VALUES ('5', '河北', '1');
INSERT INTO `province` VALUES ('6', '山西', '1');
INSERT INTO `province` VALUES ('7', '陕西', '1');
INSERT INTO `province` VALUES ('8', '山东', '1');
INSERT INTO `province` VALUES ('9', '河南', '1');
INSERT INTO `province` VALUES ('10', '辽宁', '1');
INSERT INTO `province` VALUES ('11', '吉林', '1');
INSERT INTO `province` VALUES ('12', '黑龙江', '1');
INSERT INTO `province` VALUES ('13', '江苏', '1');
INSERT INTO `province` VALUES ('14', '浙江', '1');
INSERT INTO `province` VALUES ('15', '安徽', '1');
INSERT INTO `province` VALUES ('16', '江西', '1');
INSERT INTO `province` VALUES ('17', '福建', '1');
INSERT INTO `province` VALUES ('18', '湖北', '1');
INSERT INTO `province` VALUES ('19', '湖南', '1');
INSERT INTO `province` VALUES ('20', '四川', '1');
INSERT INTO `province` VALUES ('21', '贵州', '1');
INSERT INTO `province` VALUES ('22', '云南', '1');
INSERT INTO `province` VALUES ('23', '广东', '1');
INSERT INTO `province` VALUES ('24', '海南', '1');
INSERT INTO `province` VALUES ('25', '甘肃', '1');
INSERT INTO `province` VALUES ('26', '青海', '1');
INSERT INTO `province` VALUES ('27', '台湾', '1');
INSERT INTO `province` VALUES ('28', '内蒙古', '1');
INSERT INTO `province` VALUES ('29', '新疆', '1');
INSERT INTO `province` VALUES ('30', '西藏', '1');
INSERT INTO `province` VALUES ('31', '广西', '1');
INSERT INTO `province` VALUES ('32', '宁夏', '1');
INSERT INTO `province` VALUES ('33', '香港', '1');
INSERT INTO `province` VALUES ('34', '澳门', '1');

-- ----------------------------
-- Table structure for provincedata
-- ----------------------------
DROP TABLE IF EXISTS `provincedata`;
CREATE TABLE `provincedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) NOT NULL,
  `currentConfirmedCount` int(11) NOT NULL,
  `confirmedCount` int(11) NOT NULL,
  `curedCount` int(11) NOT NULL,
  `deadCount` int(11) NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `province` (`province`)
) ENGINE=InnoDB AUTO_INCREMENT=2696 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provincedata
-- ----------------------------
INSERT INTO `provincedata` VALUES ('907', '湖北省', '49498', '62031', '10504', '2029', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('908', '广东省', '685', '1332', '642', '5', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('909', '河南省', '611', '1265', '635', '19', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('910', '浙江省', '541', '1175', '633', '1', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('911', '安徽省', '507', '987', '474', '6', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('912', '江西省', '500', '934', '433', '1', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('913', '湖南省', '372', '1010', '634', '4', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('914', '黑龙江省', '328', '476', '136', '12', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('915', '四川省', '300', '520', '217', '3', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('916', '江苏省', '280', '631', '351', '0', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('917', '山东省', '288', '546', '254', '4', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('918', '重庆市', '281', '560', '274', '5', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('919', '北京市', '238', '395', '153', '4', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('920', '福建省', '166', '293', '126', '1', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('921', '河北省', '133', '307', '169', '5', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('922', '广西壮族自治区', '153', '245', '90', '2', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('923', '上海市', '133', '334', '199', '2', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('924', '陕西省', '126', '245', '118', '1', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('925', '云南省', '93', '173', '79', '1', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('926', '天津市', '68', '130', '59', '3', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('927', '贵州省', '72', '146', '72', '2', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('928', '海南省', '78', '168', '86', '4', '2020-02-20 20:45:52');
INSERT INTO `provincedata` VALUES ('929', '山西省', '58', '131', '73', '0', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('930', '内蒙古自治区', '60', '75', '15', '0', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('931', '辽宁省', '61', '121', '59', '1', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('932', '香港', '59', '67', '6', '2', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('933', '新疆维吾尔自治区', '55', '76', '20', '1', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('934', '吉林省', '47', '91', '43', '1', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('935', '宁夏回族自治区', '27', '71', '44', '0', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('936', '甘肃省', '23', '91', '66', '2', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('937', '台湾', '21', '24', '2', '1', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('938', '澳门', '4', '10', '6', '0', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('939', '青海省', '2', '18', '16', '0', '2020-02-20 20:45:53');
INSERT INTO `provincedata` VALUES ('940', '西藏自治区', '0', '1', '1', '0', '2020-02-20 20:45:53');

-- ----------------------------
-- Table structure for rumor
-- ----------------------------
DROP TABLE IF EXISTS `rumor`;
CREATE TABLE `rumor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtitle` varchar(255) DEFAULT NULL,
  `rexplain` varchar(255) DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `rdesc` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rumor
-- ----------------------------
INSERT INTO `rumor` VALUES ('3', '华南海鲜市场供货商徐翠芹发文忏悔', '谣言', '//jiaozhen-70111.picnjc.qpic.cn/5ztswpcdUUpmbYrr5cqSw5?imageView2/2/w/150/h/90', '这是个老旧谣言...', '腾讯新闻旗下专业事实查证平台', '2020-02-17');
INSERT INTO `rumor` VALUES ('4', '在口罩中间垫上餐巾纸可以有效阻断新冠病毒', '伪科学', 'https://p.qpic.cn/jiaozhen/0/74a22927629b4cdc7d1d152d63831090/0?imageView2/2/w/150/h/90', '垫餐巾纸并不能有效阻断新冠病毒。餐巾纸的主要原材料是木浆纤维...', '黄晨', '2020-02-17');
INSERT INTO `rumor` VALUES ('5', '新型冠状病毒会通过眼结膜传染', '尚无定论', 'https://p.qpic.cn/jiaozhen/0/01394b66e367fd7b47c6810be1ab382a/0?imageView2/2/w/150/h/90', '武汉大学人民医院陈长征研究组于预印本网站medRxiv（未经同行评...', '上海报业集团旗下新媒体平台', '2020-02-17');
INSERT INTO `rumor` VALUES ('6', '别吃淡水鱼！确认粪口传播，很多地方在鱼塘洗便桶', '谣言', '//jiaozhen-70111.picnjc.qpic.cn/jS4N8yAiZqAJ46FkoDPdHc?imageView2/2/w/150/h/90', '最近在感染者粪便中分离出了活体新冠病毒...', '美国普渡大学农业与生物系食品工程专业博士', '2020-02-17');
INSERT INTO `rumor` VALUES ('7', '鱼腥草可以预防和治疗新型冠状病毒肺炎', '伪科学', '//jiaozhen-70111.picnjc.qpic.cn/ec8b371318f79ea4e121e42da9b34c9c?imageView2/2/w/150/h/90', '部分研究表明，鱼腥草具有抗病毒、抗菌、抗炎、解热等效果。但是...', '药理学硕士，知贝儿科药师', '2020-02-17');
INSERT INTO `rumor` VALUES ('8', '灵芝可以预防新型冠状病毒', '尚无定论', '//jiaozhen-70111.picnjc.qpic.cn/hxVUtGUAosUAqFnQd9SBGN?imageView2/2/w/150/h/90', '目前只是基于一些初步的细胞实验和动物实验进行的演绎...', '美国普渡大学农业与生物系食品工程专业博士', '2020-02-17');
INSERT INTO `rumor` VALUES ('9', '成都、宁波、福州等地学校将于3月2日开学', '谣言', '//jiaozhen-70111.picnjc.qpic.cn/hUaSMXFGJRFnDG9mKwiMg?imageView2/2/w/150/h/90', '对于上述内容，红星新闻记者向成都市教育局求证了解到...', '成都传媒集团旗下新媒体平台', '2020-02-16');
INSERT INTO `rumor` VALUES ('10', '“追殡葬车哭着喊妈妈”的女孩去世了', '谣言', 'https://p.qpic.cn/jiaozhen/0/a7198cb85b5310bd8d5e7a88dfaf7fb0/0?imageView2/2/w/150/h/90', '记者采访到当时视频的拍摄者，拍摄者称今日联系过女孩...', '综合类大型城市日报', '2020-02-16');
INSERT INTO `rumor` VALUES ('11', '燕窝可以提升免疫系统，预防新型冠状病毒', '伪科学', 'https://p.qpic.cn/jiaozhen/0/eac581e61731a9b49c5cfbcd5a6e9984/0?imageView2/2/w/150/h/90', '“燕窝它是水解的”是一个莫名其妙的说法...', '美国普渡大学农业与生物系食品工程专业博士', '2020-02-16');
INSERT INTO `rumor` VALUES ('12', '武汉病毒所女研究生黄燕玲是新冠肺炎零号病人', '谣言', '//jiaozhen-70111.picnjc.qpic.cn/e6n1NXgYZyWWQDDhKzc6uj?imageView2/2/w/150/h/90', '黄燕玲2015年毕业后就离开了武汉病毒研究所...', '腾讯新闻旗下专业事实查证平台', '2020-02-16');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wang', '123456', 'user:add');
INSERT INTO `user` VALUES ('2', 'zz', '123456', 'user:update');
