package com.example.springboot.mapper;

import com.example.springboot.model.Data;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author 王一宁
 * @date 2020/2/17 16:24
 */
@Mapper
public interface DailyUpdateDataMapper {
    @Insert("insert into dailydata(country_id,province_id,city_id,currentConfirmedCount,confirmedCount,curedCount,deadCount) values(country_id=#{getcountry_id},province_id=#{province_id},city_id=#{city_id},currentConfirmedCount=#{currentConfirmedCount},confirmedCount=#{confirmedCount},curedCount=#{curedCount},deadCount=#{deadCount})")
    void update(Data data1);
}
