package sm.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {
	public static void main(String[] args) {
		String jdbcUrl  = "jdbc:oracle:thin:@localhost:1521:XE";
		String jdbcuser = "SM";
		String jdbcpass = "SM";
		try {
			Connection conn = DriverManager.getConnection(jdbcUrl,jdbcuser,jdbcpass);
			if(conn != null) {
				System.out.println("성");
			}
		}catch(SQLException sqle) {
			System.out.print("실"+sqle.getMessage());
		}
	}
}