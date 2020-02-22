package com.example.springboot.model;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/17 13:35
 */
public class Province {
    private List<City> cityList;
    private String name;

    public Province(List<City> cityList, String name) {
        this.cityList = cityList;
        this.name = name;
    }

    public List<City> getCityList() {
        return cityList;
    }

    public void setCityList(List<City> cityList) {
        this.cityList = cityList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Province{" +
                "cityList=" + cityList +
                ", name='" + name + '\'' +
                '}';
    }
}
