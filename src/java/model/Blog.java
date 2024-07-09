/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


/**
 *
 * @author Admin
 */

public class Blog {
      private int blogId;
    private String title;
    private String description;
    private String heading;
    private String image;
    private String createDate;
    private String updateDate;

    public Blog(int blogId, String title, String description, String heading, String image, String createDate, String updateDate) {
        this.blogId = blogId;
        this.title = title;
        this.description = description;
        this.heading = heading;
        this.image = image;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    public Blog() {
    }

    public int getBlogId() {
        return blogId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getHeading() {
        return heading;
    }

    public String getImage() {
        return image;
    }

    public String getCreateDate() {
        return createDate;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setHeading(String heading) {
        this.heading = heading;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
    
}
