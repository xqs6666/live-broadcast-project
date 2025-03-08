package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class Anchor {
    private Long id;          // 主播ID
    private Long userId;      // 关联的用户ID
    private String description; // 主播简介
    private LocalDateTime createdAt; // 申请成为主播的时间
}
