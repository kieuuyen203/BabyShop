package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.DBConnect;
import model.User;

public class UserDAO extends DBConnect {

    public User login(String email, String password) {
        String sql = "select * from dbo.[User]\n"
                + "where email = ? and [password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return u;

            }
        } catch (Exception e) {
        }
        return null;
    }

    public User checkUserExist(String email) {
        String sql = "select * from dbo.[User]\n"
                + "where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return u;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void register(User us) {
        String sql = "INSERT INTO [dbo].[user]\n"
                + "           ([fullName]\n"
                + "           ,[password]\n"
                + "           ,[avatar]\n"
                + "           ,[gender]\n"
                + "           ,[email]\n"
                + "           ,[mobile]\n"
                + "           ,[address]\n"
                + "           ,[status]\n"
                + "           ,[role_id]\n"
                + "           ,[verificationToken])\n"
                + "     VALUES (?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, us.getFullName());
            st.setString(2, us.getPassword());
            st.setNull(3, java.sql.Types.VARCHAR);
            st.setBoolean(4, us.isGender());
            st.setString(5, us.getEmail());
            st.setString(6, us.getMobile()); // Assuming mobile is not provided by GoogleAccount
            st.setNull(7, java.sql.Types.VARCHAR); // Assuming address is not provided by GoogleAccount
            st.setBoolean(8, us.isStatus()); // Assuming user is active by default
            String roleString = "1"; // Giá trị role_id dưới dạng chuỗi
            int roleId = Integer.parseInt(roleString); // Chuyển đổi chuỗi thành số nguyên
            st.setInt(9, roleId); // Gán giá trị role_id
            st.setString(10, us.getVerificationToken());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public User getUser(int userId, String old_pass) {
        try {
            String sql = "select * from [User] where userId = ? and password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, old_pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getUserByEmail(String email) {
        try {
            String sql = "select * from [User] where email = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getUserById(int uid) {
        try {
            String sql = "select * from [User] where userId = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, uid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        String sql = "select * from [User]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void createNewUser(String fname, String password, String email, String phone, String address, String status, String role_id, String gender) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([fullName]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[mobile]\n"
                + "           ,[address]\n"
                + "           ,[status]\n"
                + "           ,[role_id]\n"
                + "		   ,[gender])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fname);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, phone);
            st.setString(5, address);
            st.setString(6, status);
            st.setString(7, role_id);
            st.setString(8, gender);
            st.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public String getAuthorById(int author_id) {
        String sql = "select * from [User] where userId = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, author_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                return rs.getString(2);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<User> getAllCustomer() {
        List<User> list = new ArrayList<>();
        String sql = "select * from [User] where role_id = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<User> getAllEmployees() {
        List<User> list = new ArrayList<>();
        String sql = "select * from [User] where role_id = 3";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String getUrlImageById(int id) {
        String sql = "SELECT [avatar]\n"
                + "  FROM [BaBy_Shop_Online].[dbo].[User]\n"
                + "  Where userId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void UpdateStatusUser(int status, int user_Id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [status] = ?\n"
                + " WHERE userId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, status);
            st.setInt(2, user_Id);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean findByUser(User us) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void editUserProfile(String uname, String uavatar, String ugender, String umobile, String uaddress, int uid) {
        String sql = "update dbo.[User]\n"
                + "set [fullName] = ?,\n"
                + "avatar = ?,\n"
                + "gender = ?,\n"
                + "mobile = ?,\n"
                + "[address] = ?\n"
                + "where userId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, uavatar);
            st.setString(3, ugender);
            st.setString(4, umobile);
            st.setString(5, uaddress);
            st.setInt(6, uid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updatePassword(String email, String newPassword) {
        String sql = "UPDATE [dbo].[User] SET [password] = ? WHERE email = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void changePassword(int userId, String new_pass1) {
        try {
            String sql = "UPDATE [dbo].[User]\n"
                    + "   SET \n"
                    + "      [password] = ?\n"
                    + " WHERE userId = ?\n";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, new_pass1);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User findByToken(String token) {
        String sql = "SELECT * FROM [dbo].[User] WHERE verificationToken = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, token);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = User.builder()
                        .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .verificationToken(rs.getString(11))
                        .build();
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<User> getAllUser(int index, int pageSize) {
        List<User> list = new ArrayList<>();
         // Tạo câu SQL với phân trang sử dụng OFFSET và FETCH
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "      ,[userId]\n"
                    + "      ,[fullName]\n"
                    + "      ,[password]\n"
                    + "      ,[avatar]\n"
                    + "      ,[gender]\n"
                    + "      ,[email]\n"
                    + "      ,[mobile]\n"
                    + "      ,[address]\n"
                    + "      ,[status]\n"
                    + "      ,[role_id]"
                    + "ORDER BY [userId] "
                    + // Sắp xếp theo blogId để đảm bảo độ ổn định trong phân trang
                    "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

           
        try {
             PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * pageSize); // Offset: vị trí bắt đầu lấy dữ liệu
            ps.setInt(2, pageSize); // Số lượng bản ghi cần lấy
           ResultSet rs = ps.executeQuery();
            while (rs.next()) {
           User u = User.builder()
                    .user_Id(rs.getInt(1))
                        .fullName(rs.getString(2))
                        .password(rs.getString(3))
                        .avatar(rs.getString(4))
                        .gender(rs.getBoolean(5))
                        .email(rs.getString(6))
                        .mobile(rs.getString(7))
                        .address(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .role_Id(rs.getString(10))
                        .build();
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void activateUser(User user) {
        String sql = "UPDATE [dbo].[User] SET [status] = 'true' WHERE email = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editRole(User user) {
        String sql = "UPDATE [dbo].[User] SET [role_id] = ? WHERE email = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getRole_Id());
            ps.setString(2, user.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
