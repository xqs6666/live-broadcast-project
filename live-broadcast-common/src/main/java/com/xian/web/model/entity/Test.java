package com.xian.web.model.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder

public class Test {
    @Schema(description = "直播间标题", example = "2023 世界杯决赛")
    private String title;

    @Schema(description = "主播 ID", example = "123")
    private Long anchorId;

    @Schema(description = "直播状态", example = "1")
    private Integer status;
}
