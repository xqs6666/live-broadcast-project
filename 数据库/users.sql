create table users
(
    id         bigint auto_increment comment '用户ID'
        primary key,
    username   varchar(50)                         not null comment '用户名',
    password   varchar(255)                        not null comment '密码（加密存储）',
    nickname   varchar(50)                         not null comment '用户昵称',
    avatar     varchar(255)                        null comment '头像URL',
    created_at timestamp default CURRENT_TIMESTAMP null comment '注册时间',
    constraint username
        unique (username)
)
    comment '用户表';

INSERT INTO `live-broadcast`.users (id, username, password, nickname, avatar, created_at) VALUES (1, 'user1', 'hashed_password_3', '观众1', 'avatar3.jpg', '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.users (id, username, password, nickname, avatar, created_at) VALUES (2, 'user2', 'hashed_password_4', '观众2', 'avatar4.jpg', '2025-03-09 03:21:43');
