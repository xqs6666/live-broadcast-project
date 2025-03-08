package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class LiveStream {
    private Long id;         // 直播间ID（与主播ID相同）
    private Long anchorId;   // 关联主播表
    private String title;    // 直播间标题
    private Boolean isLive;  // 是否正在直播
    private LocalDateTime startTime; // 直播开始时间
}
