package sec03.verify.exam02;

public class Exercise13 {
	public static void main(String[] args) {
		LoginResult result = LoginResult.FAIL_PASSWORD;
		if(result == LoginResult.SUCCESS) {
			System.out.println("로그인 성공");
		} else if(result == LoginResult.FAIL_ID) {
			System.out.println("아이디가 존재하지 않음");
		} else if(result == LoginResult.FAIL_PASSWORD) {
			System.out.println("비밀번호가 틀림");
		}
	}
}


