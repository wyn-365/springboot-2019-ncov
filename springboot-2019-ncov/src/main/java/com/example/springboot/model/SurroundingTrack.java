package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/18 16:06
 */
public class SurroundingTrack {

    private String locale;
    private String address;

    public SurroundingTrack() {

    }

    @Override
    public String toString() {
        return "SurroundingTrack{" +
                "locale='" + locale + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public SurroundingTrack(String locale, String address) {
        this.locale = locale;
        this.address = address;
    }
}
