package com.example.ipr.controller;

import com.example.ipr.dto.InfoDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class InfoController {
    @Value("${spring.application.name}")
    private String appName;

    @GetMapping("/info")
    public ResponseEntity<InfoDto> getInfoV1() {
        return ResponseEntity.ok().body(InfoDto.builder().projectName(appName).apiVersion("1").build());
    }
}
