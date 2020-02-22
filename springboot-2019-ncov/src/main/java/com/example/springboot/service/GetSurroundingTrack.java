package com.example.springboot.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

/**
 * @author 王一宁
 * @date 2020/2/18 14:50
 */
@Service
@Component
public class GetSurroundingTrack {

    //获取周边疫情轨迹，有的数据没有公开，无法查看
    public String getSourroundingTrack(String province,String city,String district){
        String httpUrl = "http://api.tianapi.com/txapi/ncovnearby/index?key=0570656d4b9d81137d7ce0c6d259fa43&province="+province+"&city="+city+"&district="+district;
        String jsonResult = request(httpUrl);
        System.out.println(jsonResult);
        return jsonResult;
    }

    public String request(String httpUrl) {
        BufferedReader reader = null;
        String result = null;
        StringBuffer sbf = new StringBuffer();
        try {
            URL url = new URL(httpUrl);
            HttpURLConnection connection = (HttpURLConnection) url
                    .openConnection();
            connection.setRequestMethod("GET");
            InputStream is = connection.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sbf.append(strRead);
                sbf.append("\r\n");
            }
            reader.close();
            result = sbf.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
