package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/17 13:36
 */
public class City extends Common{
    private String name;

    public City(int currentConfirmedCount, int confirmedCount, int curedCount, int deadCount, String name) {
        super(currentConfirmedCount, confirmedCount, curedCount, deadCount);
        this.name = name;
    }

    @Override
    public String toString() {
        return "City{" +
                "name='" + name + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public City(String name) {
        this.name = name;
    }
}
