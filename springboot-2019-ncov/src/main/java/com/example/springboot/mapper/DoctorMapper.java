package com.example.springboot.mapper;

import com.example.springboot.model.Doctor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 14:35
 */
@Mapper
public interface DoctorMapper {
    @Select("select * from doctor")
    List<Doctor> findAll();

    @Select("select * from doctor where id = #{id}")
    Doctor findDoctorById(Integer id);
}
