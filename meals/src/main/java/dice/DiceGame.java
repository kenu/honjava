package dice;

import java.util.Random;
import java.util.Scanner;

public class DiceGame {
	public static void main(String[] args) {
		// 사용자 입력
		System.out.println("주사위 숫자를 맞춰보세요:");
		Scanner scanner = new Scanner(System.in);
		int userNum = scanner.nextInt();
		scanner.close();
		
		// 주사위 생성
		int num = new Random().nextInt(6) + 1;
		
		// 같은지 비교
		if (num == userNum) {
			System.out.println("맞췄습니다.");
		} else {
			System.out.printf("달라요. %d, %d", userNum, num);
		}
	}

}
