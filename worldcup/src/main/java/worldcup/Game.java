package worldcup;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Game {
	public List<String> init() {
		List<String> list = new ArrayList<>();
		for (int i = 1; i <= 20; i++) {
			list.add(String.valueOf(i));
		}
		Collections.shuffle(list);
		return list;
	}
}