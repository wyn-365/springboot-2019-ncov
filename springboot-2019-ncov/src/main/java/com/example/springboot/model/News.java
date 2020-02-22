package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/17 21:34
 */
public class News {

    private int id;
    private String pubDateStr;
    private String title;
    private String summary;
    private String infoSource;
    private String sourceUrl;
    private String updatetime;

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", pubDateStr='" + pubDateStr + '\'' +
                ", title='" + title + '\'' +
                ", summary='" + summary + '\'' +
                ", infoSource='" + infoSource + '\'' +
                ", sourceUrl='" + sourceUrl + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public News(int id, String pubDateStr, String title, String summary, String infoSource, String sourceUrl, String updatetime) {
        this.id = id;
        this.pubDateStr = pubDateStr;
        this.title = title;
        this.summary = summary;
        this.infoSource = infoSource;
        this.sourceUrl = sourceUrl;
        this.updatetime = updatetime;
    }

    public String getPubDateStr() {
        return pubDateStr;
    }

    public void setPubDateStr(String pubDateStr) {
        this.pubDateStr = pubDateStr;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getInfoSource() {
        return infoSource;
    }

    public void setInfoSource(String infoSource) {
        this.infoSource = infoSource;
    }

    public String getSourceUrl() {
        return sourceUrl;
    }

    public void setSourceUrl(String sourceUrl) {
        this.sourceUrl = sourceUrl;
    }

    public String getDatetime() {
        return updatetime;
    }

    public void setDatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public News(String pubDateStr, String title, String summary, String infoSource, String sourceUrl, String updatetime) {
        this.pubDateStr = pubDateStr;
        this.title = title;
        this.summary = summary;
        this.infoSource = infoSource;
        this.sourceUrl = sourceUrl;
        this.updatetime = updatetime;
    }

    public News() {
    }
}
