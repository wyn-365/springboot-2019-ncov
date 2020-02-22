package com.example.springboot.model;

import java.util.Date;

/**
 * @author 王一宁
 * @date 2020/2/21 11:03
 */
public class Knowledge {
    private int id;
    private String title;
    private String content;
    private String flag;
    private String video;
    private String img;
    private String timelength;
    private Date updatetime;

    @Override
    public String toString() {
        return "Knowledge{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", flag='" + flag + '\'' +
                ", video='" + video + '\'' +
                ", img='" + img + '\'' +
                ", timelength='" + timelength + '\'' +
                ", updatetime=" + updatetime +
                '}';
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getTimelength() {
        return timelength;
    }

    public void setTimelength(String timelength) {
        this.timelength = timelength;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Knowledge() {
    }

    public Knowledge(int id, String title, String content, String flag, String video, String timelength, Date updatetime) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.flag = flag;
        this.video = video;
        this.timelength = timelength;
        this.updatetime = updatetime;
    }
}
