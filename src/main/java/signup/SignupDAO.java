package signup;

import databasemanager.DatabaseManager;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class SignupDAO {
    public String signupUser(SignupDTO dto) {
        String msg = "error::";

        Connection connection = null;
        PreparedStatement ps = null;

        try {
            connection = DatabaseManager.getInstance().getConnection();
            String sql = "insert into user (username, email, password, dob, gender) values (?, ?, ?, ?, ?)";
            ps = connection.prepareStatement(sql);

            ps.setString(1, dto.getUserName());
            ps.setString(2, dto.getEmail());
            ps.setString(3, dto.getPassword());
            ps.setString(4, dto.getDob());
            ps.setString(5, dto.getGender());

            ps.executeUpdate();

            msg = "success";

            return msg;

        } catch (Exception e){
            msg+=e.getMessage();
            e.printStackTrace();
            return msg;
        } finally {
            try{
                if (ps != null) {
                    ps.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }

            try {
                if (connection != null) {
                    DatabaseManager.getInstance().freeConnection(connection);
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
