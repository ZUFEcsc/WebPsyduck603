package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.User;

public class DbUtilsTest {

	public static void main(String[] args) {

		String url = "JDBC:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
		String uname = "root";
		String upass = "123456";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(url,uname,upass);
			
			QueryRunner runner = new QueryRunner();
			
//			String sql = "INSERT into t_user(uname,upass,sex,major,birth) values('girl','123','女','软件s工程','2000-11-11')";
			String sql = "SELECT * FROM t_user";
			
			runner.execute(conn, sql);
			
			List<User> users= runner.query(conn, sql,new BeanListHandler<User>(User.class));
			
			for(User u:users) {
				System.out.println(u.getUname());
			}
			
			DbUtils.closeQuietly(conn);
;		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
