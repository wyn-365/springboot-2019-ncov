package com.example.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling//开启定时
public class Springboot2019NcovApplication {

    public static void main(String[] args) {
        SpringApplication.run(Springboot2019NcovApplication.class, args);
    }

}
