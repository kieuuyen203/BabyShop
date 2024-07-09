/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import model.DBConnect;

/**
 *
 * @author Admin
 */
public class BlogDAO extends DBConnect {

    /**
     * private int blogId; private String title; private String description;
     * private String heading; private String image; private int createDate;
     * private int updateDate;
     *
     * @author Admin
     * @param index
     * @param pageSize
     * @return
     */
    public List<Blog> getAllBlog(int index, int pageSize) {
        List<Blog> list = new ArrayList<>();
        try {
            // Tạo câu SQL với phân trang sử dụng OFFSET và FETCH
            String sql = "SELECT [blogId], [title], [description], [heading], [image], [createDate], [updatedDate] "
                    + "FROM [dbo].[Blog] "
                    + "ORDER BY [blogId] "
                    + // Sắp xếp theo blogId để đảm bảo độ ổn định trong phân trang
                    "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * pageSize); // Offset: vị trí bắt đầu lấy dữ liệu
            ps.setInt(2, pageSize); // Số lượng bản ghi cần lấy

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog();
                b.setBlogId(rs.getInt("blogId"));
                b.setTitle(rs.getString("title"));
                b.setDescription(rs.getString("description"));
                b.setHeading(rs.getString("heading"));
                b.setImage(rs.getString("image"));
                b.setCreateDate(rs.getString("createDate"));
                b.setUpdateDate(rs.getString("updatedDate"));
                list.add(b);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In lỗi ra để debug
            // Hoặc có thể xử lý lỗi khác tùy theo yêu cầu
        }
        return list;
    }

    public Blog getBlogById(int blogId) {
        Blog b = null;
        String sql = "SELECT [blogId], [title], [description], [heading], [image], [createDate], [updatedDate] "
                + "FROM [dbo].[Blog] "
                + "WHERE [blogId] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, blogId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b = new Blog();
                b.setBlogId(rs.getInt("blogId"));
                b.setTitle(rs.getString("title"));
                b.setDescription(rs.getString("description"));
                b.setHeading(rs.getString("heading"));
                b.setImage(rs.getString("image"));
                b.setCreateDate(rs.getString("createDate"));
                b.setUpdateDate(rs.getString("updatedDate"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In lỗi ra để debug
            // Hoặc có thể xử lý lỗi khác tùy theo yêu cầu
        }
        return b;
    }

    public int getTotalBlog() {
        String sql = "select COUNT(*) from Blog ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }

    public int getCountBlogSearch(String textSearch) {

        String[] keywords = textSearch.split("\\s+");

        // Xây dựng điều kiện tìm kiếm trong SQL
        StringBuilder conditionBuilder = new StringBuilder();
        for (String keyword : keywords) {
            if (!keyword.isEmpty()) {
                if (conditionBuilder.length() > 0) {
                    conditionBuilder.append(" OR ");
                }
                conditionBuilder.append("n.Title LIKE ?");
            }
        }
        String sql = "select COUNT(*)"
                + "From blog n\n"
                + "WHERE " + conditionBuilder.toString() + "";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }

    public List<Blog> getBlogByTittle(String textSearch, int index, int pageSize) {
        List<Blog> list;
        list = new ArrayList<>();

        // Tách chuỗi thành mảng các từ khóa
        String[] keywords = textSearch.split("\\s+");

        // Xây dựng điều kiện tìm kiếm trong SQL
        StringBuilder conditionBuilder = new StringBuilder();
        for (String keyword : keywords) {
            if (!keyword.isEmpty()) {
                if (conditionBuilder.length() > 0) {
                    conditionBuilder.append(" OR ");
                }
                conditionBuilder.append("n.Title LIKE ?");
            }
        }

        String sql = "Select n.blogId, n.Title, n.Description, n.heading, n.image, n.CreatedBy, n.CreatedOn, n.ModifiedBy, n.ModifiedOn \n"
                + "From blog \n"
                + "WHERE " + conditionBuilder.toString() + " "
                + "Order By n.BlogId OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * pageSize);
            ps.setInt(2, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog();
                b.setBlogId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setDescription(rs.getString(3));
                b.setHeading(rs.getString(4));
                b.setImage(rs.getString(5));
                b.setCreateDate(rs.getString(6));
                b.setUpdateDate(rs.getString(7));
                list.add(b);
            }

        } catch (SQLException e) {
            System.out.println("SQL Query: " + sql);
            e.printStackTrace();
        }
        return list;
    }

    public void delete(int id) {
        String sql = "DELETE FROM Blog WHERE blogId = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
            stm.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

  public List<Blog> getBlogNew() {
    List<Blog> list = new ArrayList<>();
    String sql = "select top 3 * from Blog \n"
            + "order by CreateDate desc ";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            Blog b = new Blog();
            b.setBlogId(rs.getInt(1));
            b.setTitle(rs.getString(2));
            b.setDescription(rs.getString(3));
            b.setHeading(rs.getString(4));
            b.setImage(rs.getString(5));
            b.setCreateDate(rs.getString(6));
            b.setUpdateDate(rs.getString(7));
            list.add(b);
        }
        return list; // Move this outside the while loop
    } catch (SQLException e) {
        System.out.println(e);
    }
    return null;
}



    public void addBlog(Blog b) {
        String sql = "INSERT INTO [dbo].[Blog] ([title], [description], [heading], [image], [createDate]) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, b.getTitle());
            st.setString(2, b.getDescription());
            st.setString(3, b.getHeading());
            st.setString(4, b.getImage());
            st.setString(5, b.getCreateDate());
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }


    public void updateBlog(Blog b) {

        String sql = "UPDATE [dbo].[Blog]\n"
                + "   SET [Title] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[heading] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[UpdatedDate] = ?\n"
                + " WHERE blogId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, b.getTitle());
            st.setString(2, b.getDescription());
            st.setString(3, b.getHeading());
            st.setString(4, b.getImage());
            st.setString(5, b.getUpdateDate());
            st.setInt(6, b.getBlogId());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        List<Blog> blogs = new BlogDAO().getBlogNew();
            
            // Display the results
            if (blogs != null) {
                for (Blog blog : blogs) {
                    System.out.println("Blog ID: " + blog.getBlogId());
                    System.out.println("Title: " + blog.getTitle());
                    System.out.println("Description: " + blog.getDescription());
                    System.out.println("Heading: " + blog.getHeading());
                    System.out.println("Image: " + blog.getImage());
                    System.out.println("Update Date: " + blog.getUpdateDate());
                    System.out.println("----------------------------");
                }
            } else {
                System.out.println("No blogs found.");
            }

        } 
    }

