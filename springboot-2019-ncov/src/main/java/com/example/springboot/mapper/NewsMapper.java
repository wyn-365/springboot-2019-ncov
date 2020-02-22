package com.example.springboot.mapper;

import com.example.springboot.model.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/18 11:52
 */
@Mapper
public interface NewsMapper {

    @Select("select * from news where to_days(updatetime) = to_days(now());")
    List<News> findAllToday();

    @Select("select * from news where id = #{id}")
    News findNewsById(Integer id);
}
