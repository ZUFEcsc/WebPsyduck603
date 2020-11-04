package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.User;

public class UserService {
	
	//getcconn
	public static Connection getConn(){
		String url = "JDBC:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
		
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,"root","123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	//signin
	public static void Signup()
	{
		Connection conn = getConn();
	}
	
	//login
	public static User Login(String uname,String upass)
	{
		
		try {
			
			Connection conn = getConn();
			
			QueryRunner runner = new QueryRunner();
			
			String sql = "SELECT * FROM t_user WHERE uname=? AND upass=?";
			
			List<User> users= runner.query(conn, sql,new BeanListHandler<User>(User.class),uname,upass);
			
			DbUtils.closeQuietly(conn);
	
			if(users.size()>0)
			{
				return users.get(0);
			}
			else
			{
				return null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
