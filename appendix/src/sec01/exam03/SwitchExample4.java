package sec01.exam03;

import java.util.Date;

public class SwitchExample4 {
	public static void method1(Object obj) {
		switch(obj) {
			//obj가 Integer 타입일 경우
			case Integer i -> System.out.println(i);
			//obj가 String 타입일 경우
			case String s -> System.out.println("\"" + s + "\"");
			//obj가 null이거나 그 이외의 타입일 경우
			case null, default ->  System.out.println("unknown");
		}
	}	
	
	public static void main(String[] args) {
		method1(10);					//매개값은 Integer 객체로 자동 박싱
		method1("10");				//매개값은 Strng 객체
		method1(null);				//매개값이 null
		method1(new Date());		//매개값은 Date 객체
	}
}
