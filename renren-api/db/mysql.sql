-- 用户表
create table `tb_user` (
  `user_id` bigint not null auto_increment,
  `username` varchar(50) not null comment '用户名',
  `mobile` varchar(20) not null comment '手机号',
  `password` varchar(64) comment '密码',
  `create_time` datetime comment '创建时间',
  primary key (`user_id`),
  unique index (`username`)
) engine=innodb default charset=utf8 comment='用户';

-- 用户token表
create table `tb_token` (
  `user_id` bigint not null,
  `token` varchar(100) not null comment 'token',
  `expire_time` datetime comment '过期时间',
  `update_time` datetime comment '更新时间',
  primary key (`user_id`),
  unique index (`token`)
) engine=innodb default charset=utf8 comment='用户token';

-- 账号：13612345678  密码：admin
insert into `tb_user` (`username`, `mobile`, `password`, `create_time`) values ('mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');

-- 帖子表
create table tb_post (
    id bigint not null auto_increment,
    user_id bigint not null comment '发布用户id',
    content varchar(1000) comment '内容',
    images varchar(1024) comment '图片',
    topic_id bigint comment '对应的话题id',
    dept_id bigint not null comment '所能看到的部门id',
    status tinyint not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id)
) engine=innodb default charset=utf8 comment='帖子表';

-- 话题表
create table tp_topic (
    id bigint not null auto_increment,
    title varchar(30) not null comment '标题',
    content varchar(1000) comment '内容',
    image varchar(255) comment '主图',
    dept_id bigint not null comment '所能看到的部门id',
    status tinyint not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id),
    unique index (title)
) engine=innodb default charset=utf8 comment='话题表';

-- 评论表
create table tb_comment (
    id bigint not null auto_increment,
    post_id bigint not null comment '帖子id',
    user_id bigint not null comment '用户id',
    reply_user_id bigint comment '如果这是一条回复 reply_user_id 就是回复了谁的用户id',
    content varchar(100) not null comment '内容',
    status tinyint not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id)
) engine=innodb default charset=utf8 comment='话题表';

-- 用户关注表
create table tb_attention (
    id bigint not null auto_increment,
    user_id bigint not null comment '用户id',
    attention_user_id bigint not null comment '关注用户id',
    status tinyint not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id)
) engine = innodb default charset = utf8 comment = '用户关注表';

--

create table tb_anonymous (
    id bigint not null auto_increment,
    name varchar(20) not null comment '名称',
    type tinyint(2) not null comment '类型',
    create_user_id bigint not null comment '创建者id，-1为系统创建',
    image varchar(100) not null comment '图片',
    status tinyint(2) not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id),
    unique index (name)
) engine = innodb default charset = utf8 comment = '匿名用户表';


create table tb_user (
    user_id bigint not null auto_increment,
    username varchar(50) comment '用户名称',
    image varchar(100) comment '头像',
    password varchar(20) comment '密码',
    name varchar(8) comment '姓名',
    account varchar(20) comment '学号,登录账号',
    attest_image varchar(100) comment '认证图片，学生证照片',
    dept_id bigint not null comment '部门id',
    grade tinyint(2) not null default 0 comment '等级',
    verify_admin_id bigint not null comment '审核管理员id',
    status tinyint(2) not null default 0 comment '状态 0：正常 1：禁止 2：删除 -1:待认证',
    create_date datetime not null default now() comment '创建时间',
    primary key (user_id),
    unique index (username),
    unique index (name),
    unique index (account)
) engine = innodb default charset = utf8 comment = '用户表';

drop table tb_wechat;

create table tb_wechat (
    id bigint not null auto_increment,
    wechat_id varchar(64) not null comment '微信号',
    user_id bigint not null comment '用户id或者公众号id',
    name varchar(64) comment '微信昵称',
    image varchar(100) comment '微信头像',
    type tinyint(2) not null comment '0:普通用户 1：公众号',
    status tinyint(2) not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (id),
    unique index (wechat_id)
) engine = innodb default charset = utf8 comment = '微信表';


create table tb_public (
    public_id bigint not null auto_increment,
    name varchar(50) comment '名称',
    image varchar(100) comment '头像',
    password varchar(20) comment '密码',
    account varchar(20) comment '登录账号',
    dept_id bigint not null comment '部门id',
    create_admin_id bigint not null comment '创建管理员id',
    status tinyint(2) not null default 0 comment '状态 0：正常 1：禁止 2：删除',
    create_date datetime not null default now() comment '创建时间',
    primary key (public_id),
    unique index (name)
) engine = innodb default charset = utf8 comment = '公众号表';


create table tb_public_user (
    id bigint not null auto_increment,
    user_id bigint not null comment '用户id',
    public_id bigint not null comment '公众号id',
    primary key (id)
) engine = innodb default charset = utf8 comment = '公众用户关联号';



