package login;

public class UserInfo {
	//�û���¼ҵ���߼�
	static public boolean login(String uname,String upwd) {
		if("PsyDuck".equals(uname) && "123".equals(upwd))
			return true;
		else
			return false;
	}
}
