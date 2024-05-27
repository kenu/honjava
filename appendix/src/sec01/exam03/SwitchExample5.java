package sec01.exam03;

public class SwitchExample5 {
	// 2와 b가 출력되지 않음
	// 이클립스의 컴파일 오류, 터미널에서 실행
	private static void method(Object obj) {
		int score = switch (obj) {
			case Integer i when i == 1 -> 90;
			case Integer i when i == 2 -> 80;
			case Integer i -> 70;
			case String s when s.equals("a") -> 90;
			case String s when s.equals("b") -> 80;
			case String s -> 70;
			case null, default -> 0;
		};
		System.out.println("score: " + score);
	}

	public static void main(String[] args) {
		method(1);
		method(2);
		method(3);
		method("a");
		method("b");
		method("c");
		method(null);
	}
}
