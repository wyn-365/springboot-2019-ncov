package com.example.springboot.controller;

import com.example.springboot.mapper.NewsMapper;
import com.example.springboot.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/18 11:35
 */
@Controller
public class NewsController {

    @Autowired
    NewsMapper newsMapper;

    @RequestMapping("/toNews")
    public String toNews(Model model) {
        //1.查询数据库实施疫情新闻到news页面
        List<News> allToday = newsMapper.findAllToday();
        model.addAttribute("newsList",allToday);
        return "news";
    }

    @RequestMapping("/findNewsById/{id}")
    public String findNewsById(@PathVariable("id") Integer id, Model model){
        News news = newsMapper.findNewsById(id);
        model.addAttribute("news",news);
        return "newsinfo";
    }

}
