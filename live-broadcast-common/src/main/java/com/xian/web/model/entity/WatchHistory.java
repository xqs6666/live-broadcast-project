package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class WatchHistory {
    private Long id;         // 观看记录ID
    private Long userId;     // 观看用户ID
    private Long liveStreamId; // 观看的直播间ID
    private LocalDateTime watchTime; // 观看时间
}
