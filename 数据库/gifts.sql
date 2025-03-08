create table gifts
(
    id        bigint auto_increment comment '礼物ID'
        primary key,
    name      varchar(50)    not null comment '礼物名称',
    price     decimal(10, 2) not null comment '礼物价格（单位：元）',
    image_url varchar(255)   null comment '礼物图标URL'
)
    comment '礼物表';

INSERT INTO `live-broadcast`.gifts (id, name, price, image_url) VALUES (1, '鲜花', 5.00, 'flower.png');
INSERT INTO `live-broadcast`.gifts (id, name, price, image_url) VALUES (2, '火箭', 100.00, 'rocket.png');
