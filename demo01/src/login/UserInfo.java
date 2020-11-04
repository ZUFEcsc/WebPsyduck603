package login;

public class UserInfo {
	//用户登录业务逻辑
	static public boolean login(String uname,String upwd) {
		if("PsyDuck".equals(uname) && "123".equals(upwd))
			return true;
		else
			return false;
	}
}
