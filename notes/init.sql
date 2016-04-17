CREATE TABLE `user_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '�û���',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '����',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `logout_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ע��ʱ��',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='�û���';

CREATE TABLE `user_extend` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `user_id` int(20) NOT NULL DEFAULT '0' COMMENT '�û�id',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '�ǳ�',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '����',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='�û���Ϣ��չ��';


CREATE TABLE `user_login` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `user_id` int(20) NOT NULL DEFAULT '0' COMMENT '�û�id',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '��¼ip',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='�û���¼��־��';