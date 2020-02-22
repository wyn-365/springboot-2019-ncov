package com.example.springboot.controller;

import com.example.springboot.mapper.RumorMapper;
import com.example.springboot.model.Rumor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 10:29
 */
@Controller
public class RumorController {

    @Autowired
    RumorMapper rumorMapper;

    @RequestMapping("/findRumor")
    public String findRumor(Model model){

        //查询数据库谣言信息
        List<Rumor> rumorList = rumorMapper.findRumor();
        model.addAttribute("rumorList",rumorList);
        for (Rumor rumor:rumorList){
            System.out.println(rumor.getRdate());
        }
        return "rumor";
    }
}
