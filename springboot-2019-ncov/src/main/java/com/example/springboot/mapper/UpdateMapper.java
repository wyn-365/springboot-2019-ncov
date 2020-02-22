package com.example.springboot.mapper;

import com.example.springboot.model.Data;
import com.example.springboot.model.ProvinceData;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author 王一宁
 * @date 2020/2/17 17:41
 */
@Mapper
public interface UpdateMapper {

    @Insert("insert into provincedata(province,currentConfirmedCount,confirmedCount,curedCount,deadCount,updatetime) values(#{province},#{currentConfirmedCount},#{confirmedCount},#{curedCount},#{deadCount},#{updatetime}) ON DUPLICATE KEY UPDATE confirmedCount=#{confirmedCount},curedCount=#{curedCount},deadCount=#{deadCount},currentConfirmedCount=#{currentConfirmedCount},updatetime = #{updatetime}")
    void updateProvince(ProvinceData provinceData2);

    @Insert("insert into dailydata(country_id,province_id,city_id,currentConfirmedCount,confirmedCount,curedCount,deadCount,updatetime) values(#{country_id},#{province_id},#{city_id},#{currentConfirmedCount},#{confirmedCount},#{curedCount},#{deadCount},#{updatetime}) ON DUPLICATE KEY UPDATE confirmedCount=#{confirmedCount},curedCount=#{curedCount},deadCount=#{deadCount},currentConfirmedCount=#{currentConfirmedCount},updatetime = #{updatetime}")
    void updateCityData(Data data1);

}
