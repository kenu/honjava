package meals;

public class TestApi {

	public static void main(String[] args) {
		try {
			String API_KEY = "826987b674924d20afe96832e9daa5be";
			String url = "https://open.neis.go.kr/hub/mealServiceDietInfo?key=" + API_KEY
					+ "&ATPT_OFCDC_SC_CODE=B10&SD_SCHUL_CODE=7010916&type=json"
					+ "&MLSV_FROM_YMD=20240501&MLSV_TO_YMD=20240630";
			String result = JsonParserExample.fetchUrlContent(url);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}