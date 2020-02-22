package com.example.springboot.controller;

import com.example.springboot.mapper.KnowledgeMapper;
import com.example.springboot.mapper.ProvinceDataMapper;
import com.example.springboot.model.*;
import com.example.springboot.service.GetDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/17 11:50
 */
@Controller
public class IndexController {
    @Autowired
    GetDataService getDataService;
    @Autowired
    ProvinceDataMapper provinceDataMapper;
    @Autowired
    KnowledgeMapper knowledgeMapper;
    /**
     * 加载数据，跳转index页面
     * @return
     */
    @RequestMapping(value = {"/"})
    public String toIndex(Model model,Model model2
    ,Model model3 //当前北京数据
    ,Model model4 //当前北京数据
    ,Model model5 //当前北京数据
    ,Model model6 //当前北京数据
    ,Model model7 //当前北京数据
    ,Model model8 //当前北京数据
    ,Model model9 //当前北京数据
    ,Model model10 //当前北京数据
    ,Model model11 //当前北京数据
    ,Model model12 //当前北京数据
    ,Model model13 //当前北京数据
    ,Model model14 //当前北京数据
    ,Model model15 //当前北京数据
    ,Model model16 //当前北京数据
    ,Model model17 //当前北京数据
    ,Model model18 //当前北京数据
    ,Model model19 //当前北京数据
    ,Model model20 //当前北京数据
    ,Model model21 //当前北京数据
    ,Model model22 //当前北京数据
    ,Model model23 //当前北京数据
    ,Model model24 //当前北京数据
    ,Model model25 //当前北京数据
    ,Model model26 //当前北京数据
    ,Model model28 //当前北京数据
    ,Model model29 //当前北京数据
    ,Model model30 //当前北京数据
    ,Model model31 //当前北京数据
    ,Model model32 //当前北京数据
    ,Model model33 //当前北京数据
    ,Model model34 //当前北京数据
    ,Model model35 //当前北京数据
    ,Model model36 //当前北京数据
    ,Model model37 //当前北京数据
    ,Model model38  //求和数据
    ,Model model39  //求和数据
    ,Model model40  //求和数据
    ,Model model41  //求和数据
    ,Model model42  //更新时间
    ){
        //加载个省份数据
        List<ProvinceData> provinceList = provinceDataMapper.getProvinceData();
        /**
         * sum函数求各个省份数据和
         */
        int getCurrentConfirmedSum = provinceDataMapper.getCurrentConfirmedSum();
        System.out.println("今日全国现存确诊数据："+getCurrentConfirmedSum);
        int getConfirmedSum = provinceDataMapper.getConfirmedSum();
        int getCuredSum = provinceDataMapper.getCuredSum();
        int getDeadSum = provinceDataMapper.getDeadSum();

        String updateTime = provinceDataMapper.getTime();
        System.out.println(updateTime);

        //存储值
        model38.addAttribute("getCurrentConfirmedSum",getCurrentConfirmedSum);
        model39.addAttribute("getConfirmedSum",getConfirmedSum);
        model40.addAttribute("getCuredSum",getCuredSum);
        model41.addAttribute("getDeadSum",getDeadSum);
        model42.addAttribute("updateTime",updateTime);

        model.addAttribute("provinceList",provinceList);
        for (ProvinceData provinceData:provinceList){
            if (provinceData.getProvince().equals("北京市")) {
                model3.addAttribute("beijingshi",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("河南省")) {
                model37.addAttribute("henan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("天津市")) {
                model4.addAttribute("tianjin",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("上海市")) {
                model5.addAttribute("shanghai",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("重庆市")) {
                model6.addAttribute("chongqing",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("河北省")) {
                model7.addAttribute("hebei",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("云南省")) {
                model8.addAttribute("yunnan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("辽宁省")) {
                model9.addAttribute("liaoning",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("黑龙江省")) {
                model10.addAttribute("heilongjiang",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("湖南省")) {
                model11.addAttribute("hunan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("安徽省")) {
                model12.addAttribute("anhui",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("山东省")) {
                model13.addAttribute("shandong",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("新疆维吾尔自治区")) {
                model14.addAttribute("xinjiang",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("江苏省")) {
                model15.addAttribute("jiangsu",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("浙江省")) {
                model16.addAttribute("zhejiang",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("江西省")) {
                model17.addAttribute("jiangxi",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("湖北省")) {
                model18.addAttribute("hubei",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("广西壮族自治区")) {
                model19.addAttribute("guangxi",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("甘肃省")) {
                model20.addAttribute("gansu",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("山西省")) {
                model21.addAttribute("shanxi",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("内蒙古自治区")) {
                model22.addAttribute("neimenggu",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("陕西省")) {
                model23.addAttribute("shanxi2",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("吉林省")) {
                model24.addAttribute("jilin",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("福建省")) {
                model25.addAttribute("fujian",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("贵州省")) {
                model26.addAttribute("guizhou",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("广东省")) {
                model36.addAttribute("guangdong",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("青海省")) {
                model28.addAttribute("qinghai",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("西藏自治区")) {
                model29.addAttribute("xizang",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("四川省")) {
                model30.addAttribute("sichuan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("宁夏回族自治区")) {
                model31.addAttribute("ningxia",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("海南省")) {
                model32.addAttribute("hainan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("台湾")) {
                model33.addAttribute("taiwan",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("香港")) {
                model34.addAttribute("xianggang",provinceData.getCurrentConfirmedCount());
            }
            if (provinceData.getProvince().equals("澳门")) {
                model35.addAttribute("aomen",provinceData.getCurrentConfirmedCount());
            }

        }


        //加载各个市区的数据
        List<Data> cityList = provinceDataMapper.getCityData();
        model2.addAttribute("cityList",cityList);
        return "index";
    }


    /**
     * 跳转大数据图页面 getBigData
     * @param model
     * @return
     */
    @RequestMapping(value = {"/getBigDataUI"})
    public String getBigDataUI(Model model){
        return "bigdataui";
    }

    @RequestMapping(value = {"/knowledge"})
    public String knowledge(Model model){
        List<Knowledge> knowledgeList = knowledgeMapper.findKnowledge();
        model.addAttribute("knowledgeList",knowledgeList);
        return "knowledge";
    }

    @RequestMapping("/findknowledgeById/{id}")
    public String findknowledgeById(@PathVariable("id") Integer id, Model model){
        Knowledge knowledge = knowledgeMapper.findknowledgeById(id);
        model.addAttribute("knowledge",knowledge);
        return "knowledgeinfo";
    }


    //ajax加载数据
    @RequestMapping(value = {"/getData"})
    @ResponseBody
    public String index(Model model){
        //1.获取疫情API数据
        String data = getDataService.getData();
        model.addAttribute("data",data);
        System.out.println("进来了");
        //2.存入数据库
        return "index";
    }

    //跳转查询周边疫情轨迹页面
    @RequestMapping("/getSurrounding")
    public String getSurrounding(){
        return "getsurrounding";
    }




    @RequestMapping("/realTimeUI")
    public String realTimeUI(){
        return "news";
    }
}
