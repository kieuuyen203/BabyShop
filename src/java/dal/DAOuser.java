package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.DBConnect;
import model.GoogleAccount;
import model.User;

/**
 * DAOuser class for interacting with the user table in the database.
 */
public class DAOuser extends DBConnect {

    public void saveGoogleAccount(User us) {
        String sql = "INSERT INTO [dbo].[user]\n"
                + "           ([fullName]\n"
                + "           ,[password]\n"
                + "           ,[avatar]\n"
                + "           ,[gender]\n"
                + "           ,[email]\n"
                + "           ,[mobile]\n"
                + "           ,[address]\n"
                + "           ,[status]\n"
                + "           ,[role_id])\n"
                + "     VALUES (?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, us.getFullName());
            st.setString(2, us.getPassword());
            st.setString(3, us.getAvatar()); // Assuming no avatar is provided
            st.setBoolean(4, us.isGender());
            st.setString(5, us.getEmail());
            st.setString(6, us.getMobile()); // Assuming mobile is provided
            st.setNull(7, java.sql.Types.VARCHAR); // Assuming no address is provided
            st.setBoolean(8, true); // Assuming user is active by default
            int roleId = Integer.parseInt(us.getRole_Id()); // Convert role_id from String to int
            st.setInt(9, roleId); // Set role_id
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Print the stack trace to debug any issues
        }
    }

    public User convert(GoogleAccount googleAccount) {
        User user = User.builder()
                .fullName(googleAccount.getName())
                .email(googleAccount.getEmail())
                .avatar(googleAccount.getPicture())
                .address("")
                .mobile("")
                .gender(true)
                .role_Id("1") // Sử dụng String cho role_id trong code
                .password("111111111") // Default password for Google users
                .build();
        return user;
    }
}
