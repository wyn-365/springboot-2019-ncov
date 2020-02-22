package com.example.springboot.mapper;

import com.example.springboot.model.Data;
import com.example.springboot.model.ProvinceData;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 16:34
 */
@Mapper
public interface ProvinceDataMapper {
    @Select("select * from provincedata")
    List<ProvinceData> getProvinceData();

    @Select("select * from dailydata")
    List<Data> getCityData();

    @Select("select sum(currentConfirmedCount) from provincedata")
    int getCurrentConfirmedSum();

    @Select("select sum(confirmedCount) from provincedata")
    int getConfirmedSum();

    @Select("select sum(curedCount) from provincedata")
    int getCuredSum();

    @Select("select sum(deadCount) from provincedata")
    int getDeadSum();

    @Select("select updatetime from provincedata where province = '河北省'")
    String getTime();
}
