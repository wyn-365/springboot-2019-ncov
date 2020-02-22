package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/19 13:36
 */
public class Doctor {

    private int id;
    private String dname;
    private String party;
    private String motto;
    private String birth;
    private String address;
    private String profession;
    private String img;
    private String experience;

    @Override
    public String toString() {
        return "Doctor{" +
                "id=" + id +
                ", dname='" + dname + '\'' +
                ", party='" + party + '\'' +
                ", motto='" + motto + '\'' +
                ", birth='" + birth + '\'' +
                ", address='" + address + '\'' +
                ", profession='" + profession + '\'' +
                ", img='" + img + '\'' +
                ", experience='" + experience + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public Doctor(int id, String dname, String party, String motto, String birth, String address, String profession, String img, String experience) {
        this.id = id;
        this.dname = dname;
        this.party = party;
        this.motto = motto;
        this.birth = birth;
        this.address = address;
        this.profession = profession;
        this.img = img;
        this.experience = experience;
    }

    public String getName() {
        return dname;
    }

    public void setName(String dname) {
        this.dname = dname;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public Doctor() {
    }

    public Doctor(String dname, String party, String motto, String birth, String address, String profession, String img, String experience) {
        this.dname = dname;
        this.party = party;
        this.motto = motto;
        this.birth = birth;
        this.address = address;
        this.profession = profession;
        this.img = img;
        this.experience = experience;
    }
}
