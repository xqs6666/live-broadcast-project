package com.xian.web.model.entity;

import lombok.Data;
import java.math.BigDecimal;

@Data
public class Gift {
    private Long id;         // 礼物ID
    private String name;     // 礼物名称
    private BigDecimal price; // 礼物价格
    private String imageUrl; // 礼物图片 URL
}
