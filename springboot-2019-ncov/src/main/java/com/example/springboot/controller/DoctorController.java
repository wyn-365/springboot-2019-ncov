package com.example.springboot.controller;

import com.example.springboot.mapper.DoctorMapper;
import com.example.springboot.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/19 13:26
 */
@Controller
public class DoctorController {

    @Autowired
    DoctorMapper doctorMapper;

    @RequestMapping("/toDoctor")
    public String toDoctor(Model model){
        List<Doctor> doctorList = doctorMapper.findAll();
        model.addAttribute("doctorList",doctorList);
        return "doctor";
    }

    @RequestMapping("/findDoctorById/{id}")
        public String findDoctorById(@PathVariable("id") Integer id, Model model){
        Doctor doctor = doctorMapper.findDoctorById(id);
        model.addAttribute("doctor",doctor);
        return "doctorinfo";
        }

}
