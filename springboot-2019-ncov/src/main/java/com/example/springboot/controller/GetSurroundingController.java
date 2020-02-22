package com.example.springboot.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.springboot.model.SurroundingTrack;
import com.example.springboot.service.GetSurroundingTrack;
import javafx.beans.property.MapProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 王一宁
 * @date 2020/2/18 14:59
 */
@Controller
public class GetSurroundingController {

    @Autowired
    GetSurroundingTrack getSurroundingTrack;

    //查询周边疫情
    @RequestMapping("/getSurroundingController")
    public String getSurroundingController(String provincecitydistrict, Model model) {
        //拿到前台用户输入的省市区
        if (provincecitydistrict == null || "".equals(provincecitydistrict)) {
            model.addAttribute("msg", "对不起，您输入的城市格式不对哦");
            return "404";
        }
        if (provincecitydistrict.split(" ").length <= 2) {
            model.addAttribute("msg", "对不起，您输入的城市格式不对哦");
            return "404";
        }
        String[] strings = provincecitydistrict.split(" ");
        String province = strings[0];
        String city = strings[1];
        String district = strings[2];
        System.out.println(strings[2]);
        //查询
        String sourroundingTrack = getSurroundingTrack.getSourroundingTrack(province, city, district);
        JSONObject json = JSON.parseObject(sourroundingTrack);
        System.out.println("状态码" + json.get("code"));

        if (json.get("code") == "250") {
            model.addAttribute("msg", "对不起，未查询到你周边的疫情情况哦，或者您的地区未公布数据");
            return "404";
        }
        if (json.get("code") != "250") {
            List newsList = (List) json.get("newslist");
            //封装数据结果
            List<SurroundingTrack> listResult = new ArrayList<>();
            try{
                for (Object list : newsList) {
                    JSONObject json2 = JSON.parseObject(String.valueOf(list));
                    System.out.println("查询到的地区是：" + json2.get("locale"));
                    System.out.println("查询到的地址是：" + json2.get("address"));
                    SurroundingTrack suu = new SurroundingTrack();
                    suu.setLocale((String) json2.get("locale"));
                    suu.setAddress((String) json2.get("address"));
                    listResult.add(suu);
                }
            }catch (Exception e){

            }

            //放入页面
            model.addAttribute("listResult", listResult);
            //转发页面，给用答案
            return "searchresult";
        }

        return "searchresult";
    }
}
