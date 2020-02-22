package com.example.springboot.model;

import java.util.Date;

/**
 * @author 王一宁
 * @date 2020/2/17 16:15
 */
public class Data {
    private String country_id;//国家代码
    private String province_id;//省份州代码
    private String city_id;//城市代码
    private String updatetime;//数据更新时间
    private int currentConfirmedCount;//现存确诊
    private int confirmedCount;//累计确诊
    private int curedCount;//治愈人数
    private int deadCount;//死亡人数
    public Data(){

    }

    public Data(String country_id, String province_id, String city_id, String updatetime, int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount) {
        this.country_id = country_id;
        this.province_id = province_id;
        this.city_id = city_id;
        this.updatetime = updatetime;
        this.currentConfirmedCount = currentConfirmedCount;
        this.confirmedCount = confirmedCount;
        this.curedCount = curedCount;
        this.deadCount = deadCount;
    }

    public String getCountry_id() {
        return country_id;
    }

    public void setCountry_id(String country_id) {
        this.country_id = country_id;
    }

    public String getProvince_id() {
        return province_id;
    }

    public void setProvince_id(String province_id) {
        this.province_id = province_id;
    }

    public String getCity_id() {
        return city_id;
    }

    public void setCity_id(String city_id) {
        this.city_id = city_id;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public int getCurrentConfirmedCount() {
        return currentConfirmedCount;
    }

    @Override
    public String toString() {
        return "Data{" +
                "country_id='" + country_id + '\'' +
                ", province_id='" + province_id + '\'' +
                ", city_id='" + city_id + '\'' +
                ", updatetime='" + updatetime + '\'' +
                ", currentConfirmedCount=" + currentConfirmedCount +
                ", confirmedCount=" + confirmedCount +
                ", curedCount=" + curedCount +
                ", deadCount=" + deadCount +
                '}';
    }

    public void setCurrentConfirmedCount(int currentConfirmedCount) {
        this.currentConfirmedCount = currentConfirmedCount;
    }

    public int getConfirmedCount() {
        return confirmedCount;
    }

    public void setConfirmedCount(int confirmedCount) {
        this.confirmedCount = confirmedCount;
    }

    public int getCuredCount() {
        return curedCount;
    }

    public void setCuredCount(int curedCount) {
        this.curedCount = curedCount;
    }

    public int getDeadCount() {
        return deadCount;
    }

    public void setDeadCount(int deadCount) {
        this.deadCount = deadCount;
    }

    public Data(String country_id, String province_id, String city_id, String updatetime) {
        this.country_id = country_id;
        this.province_id = province_id;
        this.city_id = city_id;
        this.updatetime = updatetime;
    }
}
