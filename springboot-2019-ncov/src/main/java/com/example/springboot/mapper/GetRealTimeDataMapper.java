package com.example.springboot.mapper;

import com.example.springboot.model.News;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author 王一宁
 * @date 2020/2/17 21:41
 */
@Mapper
public interface GetRealTimeDataMapper {
    @Insert("insert into news(pubDateStr,title,summary,infoSource,sourceUrl,updatetime) values(#{pubDateStr},#{title},#{summary},#{infoSource},#{sourceUrl},#{updatetime}) ON DUPLICATE KEY UPDATE title = #{title}")
    void insertData(News news1);
}
