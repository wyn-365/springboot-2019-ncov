package com.example.springboot.mapper;

import com.example.springboot.model.Rumor;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 11:01
 */
@Mapper
public interface RumorMapper {
    @Insert("insert into rumor(rtitle,rexplain,imgsrc,rdesc,author,rdate) values(#{rtitle},#{rexplain},#{imgsrc},#{rdesc},#{author},#{rdate})")
    void insertData(Rumor rumor);

    @Select("select * from rumor order by rdate desc limit 15")
    List<Rumor> findRumor();
}
