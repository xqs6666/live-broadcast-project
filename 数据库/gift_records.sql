create table gift_records
(
    id          bigint auto_increment comment '记录ID'
        primary key,
    user_id     bigint                              not null comment '送礼用户ID',
    anchor_id   bigint                              not null comment '接收礼物的主播ID',
    gift_id     bigint                              not null comment '礼物ID',
    quantity    int                                 not null comment '礼物数量',
    total_price decimal(10, 2)                      not null comment '总金额',
    sent_at     timestamp default CURRENT_TIMESTAMP null comment '送礼时间',
    constraint gift_records_ibfk_1
        foreign key (user_id) references users (id)
            on delete cascade,
    constraint gift_records_ibfk_2
        foreign key (anchor_id) references anchors (id)
            on delete cascade,
    constraint gift_records_ibfk_3
        foreign key (gift_id) references gifts (id)
            on delete cascade
)
    comment '礼物打赏记录表';

create index anchor_id
    on gift_records (anchor_id);

create index gift_id
    on gift_records (gift_id);

create index user_id
    on gift_records (user_id);

INSERT INTO `live-broadcast`.gift_records (id, user_id, anchor_id, gift_id, quantity, total_price, sent_at) VALUES (1, 1, 1, 1, 3, 15.00, '2025-03-09 03:21:43');
INSERT INTO `live-broadcast`.gift_records (id, user_id, anchor_id, gift_id, quantity, total_price, sent_at) VALUES (2, 2, 2, 2, 1, 100.00, '2025-03-09 03:21:43');
