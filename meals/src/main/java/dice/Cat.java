package dice;

public class Cat implements Animal {

	@Override
	public void move() {

	}

	@Override
	public int getLegs() {
		return this.legs;
	}

	@Override
	public String cry() {
		return "왜요?";
	}

}
