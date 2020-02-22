package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/17 13:37
 */
public class Common {

    private int currentConfirmedCount;//现存确诊
    private int confirmedCount;//累计确诊
    private int curedCount;//治愈人数
    private int deadCount;//死亡人数

    public Common(int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount) {
        this.currentConfirmedCount = currentConfirmedCount;
        this.confirmedCount = confirmedCount;
        this.curedCount = curedCount;
        this.deadCount = deadCount;
    }

    public Common() {
    }

    public int getCurrentConfirmedCount(Object currentConfirmedCount) {
        return this.currentConfirmedCount;
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

    @Override
    public String toString() {
        return "Common{" +
                "currentConfirmedCount=" + currentConfirmedCount +
                ", confirmedCount=" + confirmedCount +
                ", curedCount=" + curedCount +
                ", deadCount=" + deadCount +
                '}';
    }
}
