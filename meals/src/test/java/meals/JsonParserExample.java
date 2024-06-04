package meals;

import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class JsonParserExample {

	public static void main(String[] args) {
		String jsonString = Meals.getJsonString("20240605", "20240605");

		try {
			JSONObject jsonObject = new JSONObject(jsonString);
			JSONArray mealServiceDietInfoArray = jsonObject.getJSONArray("mealServiceDietInfo");

			for (int i = 0; i < mealServiceDietInfoArray.length(); i++) {
				JSONObject rowObject = mealServiceDietInfoArray.getJSONObject(i);

				showRows(rowObject);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	public static void showRows(JSONObject rowObject) {
		// row 정보 출력
		if (rowObject.has("row")) {
			JSONArray rowArray = rowObject.getJSONArray("row");
			for (int k = 0; k < rowArray.length(); k++) {
				JSONObject rowItem = rowArray.getJSONObject(k);
				String string = (String) rowItem.get("DDISH_NM");
				String output = string.replace("<br/>", "\n");
				System.out.println(output);
			}
		}
	}

	class Meals {
		public static String getJsonString(String from, String to) {
			String jsonString = TestData.getString();
			try {
				// https://open.neis.go.kr/portal/myPage/actKeyPage.do
				String API_KEY = "826987b674924d20afe96832e9daa5be";
				String url = "https://open.neis.go.kr/hub/mealServiceDietInfo?key=" + API_KEY
						+ "&ATPT_OFCDC_SC_CODE=B10&SD_SCHUL_CODE=7010916&type=json" + "&MLSV_FROM_YMD=" + from
						+ "&MLSV_TO_YMD=" + to;
				String result = fetchUrlContent(url);
				jsonString = result;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return jsonString;
		}

		public static String fetchUrlContent(String urlString) throws Exception {
			OkHttpClient client = new OkHttpClient();

			Request request = new Request.Builder().url(urlString).build();

			try (Response response = client.newCall(request).execute()) {
				if (!response.isSuccessful()) {
					throw new IOException("Unexpected code " + response);
				}

				return response.body().string();
			}
		}
	}

}
