package dice;

import java.util.Scanner;

public class Fibonacci {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			int num = scanner.nextInt();
			int result = fib(num);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 재귀
	private static int fib(int num) {
		System.out.println(num);
		if (num == 1) {
			return 1;
		}
		if (num == 2) {
			return 2;
		}
		return fib(num - 2) + fib(num -1);
	}
}
