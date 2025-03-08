create table anchors
(
    id         bigint auto_increment comment '主播ID'
        primary key,
    username   varchar(50)                         not null comment '主播用户名',
    password   varchar(255)                        not null comment '密码（加密存储）',
    nickname   varchar(50)                         not null comment '主播昵称',
    avatar     varchar(255)                        null comment '头像URL',
    created_at timestamp default CURRENT_TIMESTAMP null comment '注册时间',
    constraint username
        unique (username)
)
    comment '主播表';

INSERT INTO `live-broadcast`.anchors (id, username, password, nickname, avatar, created_at) VALUES (1, 'anchor1', 'hashed_password_1', '主播A', 'avatar1.jpg', '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.anchors (id, username, password, nickname, avatar, created_at) VALUES (2, 'anchor2', 'hashed_password_2', '主播B', 'avatar2.jpg', '2025-03-09 03:21:43');
