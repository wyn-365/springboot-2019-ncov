package com.example.springboot.model;

import java.util.Date;

/**
 * @author 王一宁
 * @date 2020/2/17 17:19
 */
public class ProvinceData {

    private int currentConfirmedCount;//现存确诊
    private int confirmedCount;//累计确诊
    private int curedCount;//治愈人数
    private int deadCount;//死亡人数
    private String province;
    private String updatetime;

    public ProvinceData() {
    }

    @Override
    public String toString() {
        return "ProvinceData{" +
                "currentConfirmedCount=" + currentConfirmedCount +
                ", confirmedCount=" + confirmedCount +
                ", curedCount=" + curedCount +
                ", deadCount=" + deadCount +
                ", province='" + province + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }

    public int getCurrentConfirmedCount() {
        return currentConfirmedCount;
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

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public ProvinceData(int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount, String province, String updatetime) {
        this.currentConfirmedCount = currentConfirmedCount;
        this.confirmedCount = confirmedCount;
        this.curedCount = curedCount;
        this.deadCount = deadCount;
        this.province = province;
        this.updatetime = updatetime;
    }
}
