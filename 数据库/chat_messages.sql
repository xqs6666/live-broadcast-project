create table chat_messages
(
    id        bigint auto_increment comment '消息ID'
        primary key,
    stream_id bigint                              not null comment '直播间ID',
    user_id   bigint                              not null comment '发送者ID',
    message   text                                not null comment '消息内容',
    sent_at   timestamp default CURRENT_TIMESTAMP null comment '发送时间',
    constraint chat_messages_ibfk_1
        foreign key (stream_id) references live_streams (id)
            on delete cascade,
    constraint chat_messages_ibfk_2
        foreign key (user_id) references users (id)
            on delete cascade
)
    comment '聊天消息表';

create index stream_id
    on chat_messages (stream_id);

create index user_id
    on chat_messages (user_id);

INSERT INTO `live-broadcast`.chat_messages (id, stream_id, user_id, message, sent_at) VALUES (1, 1, 1, '主播牛逼！', '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.chat_messages (id, stream_id, user_id, message, sent_at) VALUES (2, 1, 2, '这场比赛好精彩！', '2025-03-09 03:21:43');
