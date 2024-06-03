package dice;

public class Car {
	public int accelerate(int num) {
		return num + 10;
	}
	
	public static void main(String[] args) {
		Bugatti bugatti = new Bugatti();
		System.out.println(bugatti.accelerate(60));
	}
}

class Bugatti extends Car {
	@Override
	public int accelerate(int num) {
		return num + 100;
	}
}