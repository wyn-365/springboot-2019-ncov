package com.example.springboot.model;

import java.util.List;

/**
 * @author 王一宁
 * @date 2020/2/17 13:36
 */
public class Country extends Common{

    private String name;

    public Country(int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount, String name, List<Province> provinceList) {
        super(currentConfirmedCount, confirmedCount, curedCount, deadCount);
        this.name = name;
        this.provinceList = provinceList;
    }

    @Override
    public String toString() {
        return "China{" +
                "name='" + name + '\'' +
                ", provinceList=" + provinceList +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Country(String name, List<Province> provinceList) {
        this.name = name;
        this.provinceList = provinceList;
    }

    private List<Province> provinceList;

    public Country(int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount, List<Province> provinceList) {
        super(currentConfirmedCount, confirmedCount, curedCount, deadCount);
        this.provinceList = provinceList;
    }

    public Country(List<Province> provinceList) {
        this.provinceList = provinceList;
    }

    public List<Province> getProvinceList() {
        return provinceList;
    }

    public void setProvinceList(List<Province> provinceList) {
        this.provinceList = provinceList;
    }

}
