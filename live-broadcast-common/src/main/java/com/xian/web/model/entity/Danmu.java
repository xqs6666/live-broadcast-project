package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class Danmu {
    private Long id;         // 弹幕ID
    private Long userId;     // 发送弹幕的用户ID
    private Long liveStreamId; // 直播间ID
    private String content;  // 弹幕内容
    private LocalDateTime sendTime; // 发送时间
}
