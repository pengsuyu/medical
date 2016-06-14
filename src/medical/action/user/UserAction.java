package medical.action.user;

public class UserAction {
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	public String execute() throws Exception {
	        // 只有用户名为wwfy，密码为123456方可成功登陆
	
	    if (username.equals("550548715@qq.com") && password.equals("000123")) {	
	        return "success";
	
	    } else {
	
	        return "error";
	
	    }
	
	}
}
