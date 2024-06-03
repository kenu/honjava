package sangil.java;

public class Calc {
	public int subtract(int i, int j) {
		return i - j;
	}

	public int sum(int i, int j) {
		return i + j;
	}

	public int multiply(int i, int j) {
		return i * j;
	}

	public int divide(int i, int j) {
		if (j == 0) {
			return 0;
		}
		return i / j;
	}
}
