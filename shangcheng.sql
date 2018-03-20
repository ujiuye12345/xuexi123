-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 02 月 08 日 13:46
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `shangcheng`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `sex` char(2) NOT NULL COMMENT '0为男、1为女',
  `age` int(11) NOT NULL COMMENT '用户年龄',
  `photo` varchar(50) NOT NULL COMMENT '用户头像',
  `contact` char(11) NOT NULL COMMENT '用户手机号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `sex`, `age`, `photo`, `contact`) VALUES
(1, '123', '123', '1', 18, '头像', '666666'),
(2, 'aa', 'aa', '', 0, '', ''),
(3, '1111', '11', '', 0, '', ''),
(4, '1', '1', '', 0, '', ''),
(5, '2', '2', '', 0, '', ''),
(6, '杨文辉', 'xiaohui00', '', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `che`
--

CREATE TABLE IF NOT EXISTS `che` (
  `id` int(11) NOT NULL COMMENT '购物车id',
  `spid` int(11) NOT NULL COMMENT '商品id',
  `ypid` int(11) NOT NULL COMMENT '用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- --------------------------------------------------------

--
-- 表的结构 `dingdan`
--

CREATE TABLE IF NOT EXISTS `dingdan` (
  `id` int(11) NOT NULL,
  `yid` int(11) NOT NULL,
  `zonge` int(11) NOT NULL,
  `isfukuan` int(11) NOT NULL,
  `isfahuo` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dingdans`
--

CREATE TABLE IF NOT EXISTS `dingdans` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `danjia` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dizhi`
--

CREATE TABLE IF NOT EXISTS `dizhi` (
  `id` int(11) NOT NULL,
  `dizhi` varchar(80) NOT NULL,
  `yid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `firstlei`
--

CREATE TABLE IF NOT EXISTS `firstlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级主键id',
  `yilei` varchar(20) NOT NULL COMMENT '一级类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='一级类别表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `firstlei`
--

INSERT INTO `firstlei` (`id`, `yilei`) VALUES
(1, '手机');

-- --------------------------------------------------------

--
-- 表的结构 `lunbo`
--

CREATE TABLE IF NOT EXISTS `lunbo` (
  `id` int(11) NOT NULL,
  `tupian` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `rootadmin`
--

CREATE TABLE IF NOT EXISTS `rootadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `secondlei`
--

CREATE TABLE IF NOT EXISTS `secondlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级id',
  `leibie` varchar(20) NOT NULL COMMENT '二级类',
  `pid` int(11) NOT NULL COMMENT '一级类别的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='二级分类' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `secondlei`
--

INSERT INTO `secondlei` (`id`, `leibie`, `pid`) VALUES
(1, '小米', 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sname` varchar(50) NOT NULL COMMENT '商品名称',
  `sprice` int(11) NOT NULL COMMENT '价格',
  `shopphoto` varchar(900) NOT NULL COMMENT '商品图片',
  `zhizao` varchar(100) NOT NULL COMMENT '制造商',
  `fpid` int(11) NOT NULL COMMENT '一级类别的id',
  `spid` int(11) NOT NULL COMMENT '二级类别的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`id`, `sname`, `sprice`, `shopphoto`, `zhizao`, `fpid`, `spid`) VALUES
(1, '小米', 1000, '110', '杨文辉', 1, 1),
(2, '华为', 2000, '112', '张翔', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
