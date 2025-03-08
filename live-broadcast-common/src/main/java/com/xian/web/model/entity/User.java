package com.xian.web.model.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class User {
    private Long id;            // 用户ID
    private String username;    // 用户名（唯一）
    private String password;    // 加密密码
    private String nickname;    // 用户昵称
    private String avatar;      // 头像 URL
    private LocalDateTime createdAt; // 注册时间
}
