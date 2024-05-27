package sec01.exam03;

public class SwitchExample2 {
	public static void main(String[] args) {
		method1();
		method2();
	}

	//전통적 방식
	public static void method1() {
		String grade = "B";
		
		//Switch 바깥쪽에 변수 선언
		int score;
		
		switch (grade) {
			case "A":
				//변수에 값 대입
				score = 100;
				break;
			case "B":
				int result = 100 - 20;
				//변수에 값 대입
				score = result;
				break;
			default:
				//변수에 값 대입
				score = 60;
		}
		System.out.println("score: " + score);

	}

	//Java 13부터 사용 가능한 방식
	public static void method2() {
		String grade = "B";
		
		//변수를 선언하고 switch문이 리턴하는 값으로 초기화
		int score = switch(grade) {
			case "A" -> 100;
			case "B" -> {
				int result = 100 - 20;
				yield result;
			}
			default -> 60;
		};
		System.out.println("score: " + score);
	}
}
