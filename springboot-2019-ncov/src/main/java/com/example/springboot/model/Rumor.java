package com.example.springboot.model;

/**
 * @author 王一宁
 * @date 2020/2/19 10:51
 */
public class Rumor {
    private int id;
    private String rtitle;
    private String rexplain;
    private String imgsrc;
    private String rdesc;
    private String author;
    private String rdate;

    public Rumor() {
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Rumor{" +
                "id=" + id +
                ", rtitle='" + rtitle + '\'' +
                ", rexplain='" + rexplain + '\'' +
                ", imgsrc='" + imgsrc + '\'' +
                ", rdesc='" + rdesc + '\'' +
                ", author='" + author + '\'' +
                ", rdate='" + rdate + '\'' +
                '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRtitle() {
        return rtitle;
    }

    public void setRtitle(String rtitle) {
        this.rtitle = rtitle;
    }

    public String getRexplain() {
        return rexplain;
    }

    public void setRexplain(String rexplain) {
        this.rexplain = rexplain;
    }

    public String getImgsrc() {
        return imgsrc;
    }

    public void setImgsrc(String imgsrc) {
        this.imgsrc = imgsrc;
    }

    public String getRdesc() {
        return rdesc;
    }

    public void setRdesc(String rdesc) {
        this.rdesc = rdesc;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getRdate() {
        return rdate;
    }

    public void setRdate(String rdate) {
        this.rdate = rdate;
    }

    public Rumor(int id, String rtitle, String rexplain, String imgsrc, String rdesc, String author, String rdate) {
        this.id = id;
        this.rtitle = rtitle;
        this.rexplain = rexplain;
        this.imgsrc = imgsrc;
        this.rdesc = rdesc;
        this.author = author;
        this.rdate = rdate;
    }
}
