package com.example.springboot.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.springboot.mapper.RumorMapper;
import com.example.springboot.model.Rumor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 10:36
 */
@Service
@Component
public class GetRumorToMysql {

    @Autowired
    GetRumorService getRumorService;
    @Autowired
    RumorMapper rumorMapper;
    //定时将谣言信息存入数据库
    //@Scheduled(fixedDelay = 100000)
    @Scheduled(cron="0 0 8,9,10,11,12,16,18,20 * * ?")
    public void insertData(){
        //获取到谣言
        String data = getRumorService.getRumor();
        //1.解析jsonStringdata fastJson解析json数据
        JSONObject json = JSON.parseObject(data);
        List newsList = (List) json.get("newslist");
        //拿到谣言列表
        for (Object list : newsList) {
            JSONObject json2 = JSON.parseObject(String.valueOf(list));
            System.out.println(json2.get("title"));

            Rumor rumor = new Rumor();
            rumor.setRtitle((String) json2.get("title"));
            rumor.setAuthor((String) json2.get("author"));
            rumor.setRdate((String) json2.get("date"));
            rumor.setRdesc((String) json2.get("desc"));
            rumor.setRexplain((String) json2.get("explain"));
            rumor.setImgsrc((String) json2.get("imgsrc"));

            rumorMapper.insertData(rumor);
        }
    }

}
