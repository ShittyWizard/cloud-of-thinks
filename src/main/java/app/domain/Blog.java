package app.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document
public class Blog {

    @Id
    public String id;

    private String text;
    private String author;
    private Date date;

    private String fileName;


    public Blog() {
    }

    public Blog(String text, String author) {
        this.text = text;
        this.author = author;
        this.date = new Date();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Date getDate() {
        return date;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString(){
        return String.format("Blog: %s; author: %s; date: %s", text, author, date);
    }
}
