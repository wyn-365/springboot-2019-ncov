package com.example.springboot.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.springboot.mapper.DailyUpdateDataMapper;
import com.example.springboot.mapper.UpdateMapper;
import com.example.springboot.model.Data;
import com.example.springboot.model.ProvinceData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/17 16:23
 */
@Service
@Component
public class DailyUpdateDataToMySql {

    @Autowired
    GetDataService getDataService;
    @Autowired
    DailyUpdateDataMapper dailyUpdateDataMapper;
    @Autowired
    UpdateMapper updateMapper;

    //定时每天更新数据库的数据方法，查询api放入数据库
    //测试100s执行一次
    //@Scheduled(fixedDelay = 6000)
    @Scheduled(cron="0 0 8,9,10,11,12,16,18,20 * * ?")
    public void insertData() throws Exception {
        //返回的jsonString数据
        String data = getDataService.getData();
        //1.解析jsonStringdata fastJson解析json数据
        JSONObject json = JSON.parseObject(data);
        List provinceList = (List) json.get("newslist");
        //2.创建一个装各个省份疫情的集合
        List<ProvinceData> provinceDataList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        for (Object list : provinceList){//第一层循环拿到各个省份
            JSONObject json2 = JSON.parseObject(String.valueOf(list));
            System.out.println("拿到的省份是："+json2.get("provinceName"));
            System.out.println("当前确诊是："+json2.get("currentConfirmedCount"));
            System.out.println("现存确诊是："+json2.get("confirmedCount"));
            System.out.println("治愈人数是："+json2.get("curedCount"));
            System.out.println("死亡人数是："+json2.get("deadCount"));
            String date = sdf.format(new Date());
            ProvinceData provinceData = new ProvinceData();
            provinceData.setProvince((String) json2.get("provinceName"));
            provinceData.setCurrentConfirmedCount((Integer) json2.get("currentConfirmedCount"));
            provinceData.setConfirmedCount((Integer) json2.get("confirmedCount"));
            provinceData.setCuredCount((Integer) json2.get("curedCount"));
            provinceData.setDeadCount((Integer) json2.get("deadCount"));
            provinceData.setUpdatetime(date);

            //3.吧一个个省份对象追加到ArrayList集合中,以便前台展示
            provinceDataList.add(provinceData);

            //4.将每一个对象插入到数据库
            updateMapper.updateProvince(provinceData);

            //5.第二层循环拿到各个城市的数据
            List cities = (List) json2.get("cities");
            for (Object list2: cities){
                JSONObject json3 = JSON.parseObject(String.valueOf(list2));
                System.out.println("城市的名字信息："+json3.get("cityName"));
                System.out.println("城市的现存确诊信息："+json3.get("currentConfirmedCount"));
                System.out.println("城市的确诊信息："+json3.get("confirmedCount"));
                System.out.println("城市的治愈信息："+json3.get("curedCount"));
                System.out.println("城市的死亡信息："+json3.get("deadCount"));
                //6.封装城市疫情对象数据
                Data data1 = new Data();
                data1.setCountry_id("中国");
                data1.setProvince_id((String) json2.get("provinceName"));
                data1.setCity_id((String) json3.get("cityName"));
                //转换时间格式为yyyy-MM-dd HH:mm:ss
                data1.setUpdatetime(sdf.format(new Date()));
                data1.setCurrentConfirmedCount((Integer) json3.get("currentConfirmedCount"));
                data1.setConfirmedCount((Integer) json3.get("confirmedCount"));
                data1.setCuredCount((Integer) json3.get("curedCount"));
                data1.setDeadCount((Integer) json3.get("deadCount"));
                updateMapper.updateCityData(data1);
            }

        }

    }

}
