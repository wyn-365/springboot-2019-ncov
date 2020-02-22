package com.example.springboot.mapper;

import com.example.springboot.model.Knowledge;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/21 11:06
 */
@Mapper
public interface KnowledgeMapper {

    @Select("select * from knowledge order by updatetime desc")
    List<Knowledge> findKnowledge();

    @Select("select * from knowledge where id = #{id}")
    Knowledge findknowledgeById(Integer id);
}
