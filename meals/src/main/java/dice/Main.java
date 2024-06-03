package dice;

class A {
	int a;
	int b;
}

public class Main {

	static void func1(A mm) {
		mm.a *= 10;
	}

	static void func2(A mm) {
		mm.a += mm.b;
	}

	public static void main(String args[]) {
		A m = new A();

		m.a = 100;
		func1(m);
		m.b = m.a;
		func2(m);

		System.out.printf("%d", m.a);
	}
}