create table live_streams
(
    id         bigint auto_increment comment '直播间ID'
        primary key,
    anchor_id  bigint                                             not null comment '主播ID，关联主播表，每个主播只有一个直播间',
    title      varchar(255)                                       not null comment '直播间标题',
    stream_url varchar(255)                                       null comment '直播流地址（RTMP/HLS 地址）',
    status     enum ('live', 'offline') default 'offline'         null comment '直播状态：直播中/未开播',
    viewers    int                      default 0                 null comment '当前观看人数',
    created_at timestamp                default CURRENT_TIMESTAMP null comment '创建时间',
    updated_at timestamp                default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint anchor_id
        unique (anchor_id),
    constraint live_streams_ibfk_1
        foreign key (anchor_id) references anchors (id)
            on delete cascade
)
    comment '直播间表';

INSERT INTO `live-broadcast`.live_streams (id, anchor_id, title, stream_url, status, viewers, created_at, updated_at) VALUES (1, 1, '足球赛事直播', 'rtmp://live.example.com/stream1', 'live', 0, '2025-03-09 03:21:43', '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.live_streams (id, anchor_id, title, stream_url, status, viewers, created_at, updated_at) VALUES (2, 2, '篮球赛事解说', 'rtmp://live.example.com/stream2', 'offline', 0, '2025-03-09 03:21:43', '2025-03-09 03:21:43');
