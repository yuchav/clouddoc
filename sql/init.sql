SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `app_clouddoc`
--

-- --------------------------------------------------------

--
-- 表的结构 `Config`
--

CREATE TABLE IF NOT EXISTS `Config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `Config`
--

INSERT INTO `Config` (`id`, `name`, `value`) VALUES
(1, 'QINIU_ACCESS_KEY', ''),
(2, 'QINIU_SECRET_KEY', ''),
(3, 'QINIU_UP_HOST', 'http://upload.qiniu.com'),
(4, 'QINIU_RS_HOST', 'http://rs.qbox.me'),
(5, 'QINIU_RSF_HOST', 'http://rsf.qbox.me'),
(6, 'BUCKET', 'pchou002');

-- --------------------------------------------------------

--
-- 表的结构 `UploadFile`
--

CREATE TABLE IF NOT EXISTS `UploadFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `owner_account_id` int(11) DEFAULT NULL,
  `file_name` varchar(500) DEFAULT NULL,
  `order_x` int(11) DEFAULT NULL,
  `is_processing` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `mod_time` datetime DEFAULT NULL,
  `is_dir_viewable` int(11) DEFAULT NULL,
  `bucket` varchar(500) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `persistent_id` varchar(500) DEFAULT NULL,
  `mime_type` varchar(1000) DEFAULT NULL,
  `key_orignal` varchar(500) DEFAULT NULL,
  `key_preview` varchar(500) DEFAULT NULL,
  `key_thumb` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=143 ;