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
import model.Category;
import model.DBConnect;


/**
 *
 * @author son22
 */
public class CategoryDAO extends DBConnect{

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "Select * from Category where status = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = Category.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .build();

                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    

    
    
    
}