package dice;

public class SynchronizedExample2 {

	// 동기화된 메소드
	public void printMessage() {
		System.out.println(Thread.currentThread().getName() + " is running");
	}

	public static void main(String[] args) {
		SynchronizedExample2 example = new SynchronizedExample2();

		// 스레드 생성 및 시작
		new Thread(() -> {
			for (int i = 0; i < 5; i++) {
				example.printMessage();
			}
		}, "Thread-1").start();

		new Thread(() -> {
			for (int i = 0; i < 5; i++) {
				example.printMessage();
			}
		}, "Thread-2").start();
	}
}
