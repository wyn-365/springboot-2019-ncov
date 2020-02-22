package com.example.springboot.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.springboot.mapper.GetRealTimeDataMapper;
import com.example.springboot.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/17 21:15
 */
@Service
@Component
public class GetRealTimeDataToMySql {
    @Autowired
    GetRealTimeDataService getRealTimeDataService;
    @Autowired
    GetRealTimeDataMapper getRealTimeDataMapper;

    //定时每天更新数据库的数据方法，查询api放入数据库
    //@Scheduled(fixedDelay = 100000) //测试100s执行一次
    @Scheduled(cron="0 0 8,9,10,11,12,16,18,20 * * ?")
    public void insertData(){
        //返回的jsonString数据
        String data = getRealTimeDataService.getRealTimeData();
        //1.解析jsonStringdata fastJson解析json数据
        JSONObject json = JSON.parseObject(data);
        List newsList = (List) json.get("newslist");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (Object list : newsList) {//第一层循环拿到各个实时疫情新闻
            JSONObject json2 = JSON.parseObject(String.valueOf(list));
            System.out.println("拿到的新闻是："+json2.get("news"));
            List news = (List) json2.get("news");
            String date = sdf.format(new Date());
            for (Object list2: news){
                JSONObject json3 = JSON.parseObject(String.valueOf(list2));
                System.out.println("疫情信息标题是："+json3.get("title"));
                News news1 = new News();
                news1.setTitle((String) json3.get("title"));
                news1.setPubDateStr((String) json3.get("pubDateStr"));
                news1.setSummary((String) json3.get("summary"));
                news1.setInfoSource((String) json3.get("infoSource"));
                news1.setSourceUrl((String) json3.get("sourceUrl"));
                news1.setDatetime(date);

                getRealTimeDataMapper.insertData(news1);
            }
        }
    }
}
