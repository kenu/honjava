package dice;

public class Overload {
	public int contain() {
		return 0;
	}

	public int contain(String hydra) {
		return 2;
	}

	public int contain(String ultra, int number) {
		return 4;
	}
	
	public static void main(String[] args) {
		Overload overload = new Overload();
		System.out.println(overload.contain());
		System.out.println(overload.contain("히드라"));
		System.out.println(overload.contain("울트라리스크", 2));
	}
}
