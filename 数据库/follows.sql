create table follows
(
    id         bigint auto_increment comment '关注ID'
        primary key,
    user_id    bigint                              not null comment '用户ID',
    anchor_id  bigint                              not null comment '主播ID',
    created_at timestamp default CURRENT_TIMESTAMP null comment '关注时间',
    constraint user_id
        unique (user_id, anchor_id),
    constraint follows_ibfk_1
        foreign key (user_id) references users (id)
            on delete cascade,
    constraint follows_ibfk_2
        foreign key (anchor_id) references anchors (id)
            on delete cascade
)
    comment '关注表';

create index anchor_id
    on follows (anchor_id);

INSERT INTO `live-broadcast`.follows (id, user_id, anchor_id, created_at) VALUES (1, 1, 1, '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.follows (id, user_id, anchor_id, created_at) VALUES (2, 2, 1, '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.follows (id, user_id, anchor_id, created_at) VALUES (3, 1, 2, '2025-03-09 03:21:43');
