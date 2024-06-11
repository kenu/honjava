package worldcup;

import java.util.ArrayList;
import java.util.List;

public class GameData {
	public static List<String> getLolList() {
		String[] lols = { "AATROX", "AHRI", "AKALI", "AKSHAN", "ALISTAR", "AMUMU", "ANIVIA", "ANNIE", "APHELIOS",
				"ASHE", "AURELION SOL", "AZIR", "BARD", "BEL'VETH", "BLITZCRANK", "BRAND", "BRAUM", "BRIAR", "CAITLYN",
				"CAMILLE", "CASSIOPEIA", "CHO'GATH", "CORKI", "DARIUS", "DIANA", "DR. MUNDO", "DRAVEN", "EKKO", "ELISE",
				"EVELYNN", "EZREAL", "FIDDLESTICKS", "FIORA", "FIZZ", "GALIO", "GANGPLANK", "GAREN", "GNAR", "GRAGAS",
				"GRAVES", "GWEN", "HECARIM", "HEIMERDINGER", "HWEI", "ILLAOI", "IRELIA", "IVERN", "JANNA", "JARVAN IV",
				"JAX", "JAYCE", "JHIN", "JINX", "K'SANTE", "KAI'SA", "KALISTA", "KARMA", "KARTHUS", "KASSADIN",
				"KATARINA", "KAYLE", "KAYN", "KENNEN", "KHA'ZIX", "KINDRED", "KLED", "KOG'MAW", "LEBLANC", "LEE SIN",
				"LEONA", "LILLIA", "LISSANDRA", "LUCIAN", "LULU", "LUX", "MALPHITE", "MALZAHAR", "MAOKAI", "MASTER YI",
				"MILIO", "MISS FORTUNE", "MORDEKAISER", "MORGANA", "NAAFIRI", "NAMI", "NASUS", "NAUTILUS", "NEEKO",
				"NIDALEE", "NILAH", "NOCTURNE", "NUNU & WILLUMP", "OLAF", "ORIANNA", "ORNN", "PANTHEON", "POPPY",
				"PYKE", "QIYANA", "QUINN", "RAKAN", "RAMMUS", "REK'SAI", "RELL", "RENATA GLASC", "RENEKTON", "RENGAR",
				"RIVEN", "RUMBLE", "RYZE", "SAMIRA", "SEJUANI", "SENNA", "SERAPHINE", "SETT", "SHACO", "SHEN",
				"SHYVANA", "SINGED", "SION", "SIVIR", "SKARNER", "SMOLDER", "SONA", "SORAKA", "SWAIN", "SYLAS",
				"SYNDRA", "TAHM KENCH", "TALIYAH", "TALON", "TARIC", "TEEMO", "THRESH", "TRISTANA", "TRUNDLE",
				"TRYNDAMERE", "TWISTED FATE", "TWITCH", "UDYR", "URGOT", "VARUS", "VAYNE", "VEIGAR", "VEL'KOZ", "VEX",
				"VI", "VIEGO", "VIKTOR", "VLADIMIR", "VOLIBEAR", "WARWICK", "WUKONG", "XAYAH", "XERATH", "XIN ZHAO",
				"YASUO", "YONE", "YORICK", "YUUMI", "ZAC", "ZED", "ZERI", "ZIGGS", "ZILEAN", "ZOE", "ZYRA" };
		List<String> lolList = new ArrayList<>();
		for (String lol : lols) {
			lolList.add(lol);
		}
		return lolList;
	}

	public static List<String> getOverList() {
		String[] overs = { "벤처", "D.VA", "겐지", "둠피스트", "라마트라", "라이프위버", "라인하르트", "레킹볼", "로드호그", "루시우", "리퍼", "마우가",
				"메르시", "메이", "모이라", "바스티온", "바티스트", "브리기테", "소전", "솔저: 76", "솜브라", "시그마", "시메트라", "아나", "애쉬", "에코",
				"오리사", "위도우메이커", "윈스턴", "일리아리", "자리야", "정커퀸", "정크랫", "젠야타", "캐서디", "키리코", "토르비욘", "트레이서", "파라", "한조" };
		List<String> overList = new ArrayList<>();
		for (String over : overs) {
			overList.add(over);
		}
		return overList;
	}

	public static List<String> getBurgerList() {
		String[] burgers = { "크리스피 치킨 버거", "베이컨 치킨 버거", "비프 앤 쉬림프 버거", "더블 비프 치즈 버거", "프랭크 버거", "비프 앤 치킨 버거",
				"K 불고기 버거", "K 핫불고기 버거", "K 불고기 치즈 버거", "치즈버거", "베이컨 치즈버거", "쉬림프 버거", "JG버거" };
		List<String> itemList = new ArrayList<>();
		for (String burger : burgers) {
			itemList.add(burger);
		}
		return itemList;
	}

	public static List<String> getww2List() {
		String[] ww2s = { "베니토 무솔리니" , "아돌프 히틀러" , "윈스턴 처칠" , "미치노미야 히로히토" , "프랭클린 D. 루스벨트"
				, "에르빈 롬멜" , "하인츠 구데리안" , "이오시프 스탈린" , "미하일 칼리닌" , "린 썬"
				, "알베르 르브룅" , "네빌 체임벌린" , "해리 S. 트루먼" , "드와이트 D. 아이젠하워"
				, "파울 요제프 괴벨스" , "앙드레 마지노" , "헬무트 라인베르거" , "필리프 페탱" , "아돌프 아이히만"
				, "나구모 주이치" };
		List<String> ww2List = new ArrayList<>();
		for (String ww2 : ww2s) {
			ww2List.add(ww2);
		}
		return ww2List;
	}
}
