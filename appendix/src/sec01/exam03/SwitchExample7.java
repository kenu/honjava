package sec01.exam03;

public class SwitchExample7 {
	private static void method1(Object obj) {
		switch (obj) {
			case String s:
				System.out.println("String: " + s);
				break; 	// 생략하면 컴파일 에러 생김(다음 case 레이블로 통과 금지)
			case Integer i:
				System.out.println("Integer: " + i);
			case null, default:
				System.out.println("null or unknown");
		}
	}

	private static void method2(Object obj) {
		switch (obj) {
			case String s -> System.out.println("String: " + s);
			case Integer i -> System.out.println("Integer: " + i);
			case null, default -> System.out.println("null or unknown");
		}
	}
	
	public static void main(String[] args) {
		method1("a"); 
		System.out.println();
		
		method1(1);
		System.out.println();
		
		method2(1);
	}
}
 