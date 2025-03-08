package com.xian.web.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
@Tag(name = "示例 API", description = "示例 API 接口")
public class TestController {

    @GetMapping
    @Operation(summary = "示例接口", description = "这是一个示例接口")
    public String test(){
        return "test";
    }
}
