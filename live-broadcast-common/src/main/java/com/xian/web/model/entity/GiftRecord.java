package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class GiftRecord {
    private Long id;        // 礼物记录ID
    private Long userId;    // 赠送礼物的用户ID
    private Long anchorId;  // 接收礼物的主播ID
    private Long giftId;    // 礼物ID
    private Integer quantity; // 礼物数量
    private LocalDateTime sendTime; // 赠送时间
}
