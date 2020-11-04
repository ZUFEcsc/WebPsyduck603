package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String url = "JDBC:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
		String uname = "root";
		String upass = "123456";
		
		String sql = "INSERT into t_user(uname,upass,sex,major,birth) values('girl','123','女','软件工程','2000-11-11')";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(url,uname,upass);
			
			Statement st = conn.createStatement();
			
			st.execute(sql);
			
			st.close();
			
			conn.close();
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
	}

}
