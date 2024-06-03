package sangil.java;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest {

	@Test
	public void shouldAnswerWithTrue() {
		assertTrue(true);
	}

	@Test
	public void add() {
		Calc calc = new Calc();
		assertEquals(3, calc.sum(1, 2));
	}
	@Test
	public void subtract() {
		Calc calc = new Calc();
		int result = calc.subtract(6, 3);
		assertEquals(3, result);
	}
	@Test
	public void multiply() {
		Calc calc = new Calc();
		int result = calc.multiply(6, 3);
		assertEquals(18, result);
	}
	
	@Test
	public void divide() {
		Calc calc = new Calc();
		int result = calc.divide(6, 3);
		assertEquals(2, result);
	}
	
	@Test
	public void divideBy0() {
		Calc calc = new Calc();
		int result = calc.divide(6, 0);
		assertEquals(0, result);
	}
	
}
