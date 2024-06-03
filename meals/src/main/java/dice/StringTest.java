package dice;

public class StringTest {

    public static void main(String[] args) {
        long start = System.nanoTime();
        useString();
        long lap1 = System.nanoTime();
        useStringBuffer();
        long lap2 = System.nanoTime();
        useStringBuilder();
        long lap3 = System.nanoTime();

        String result = "String: %d\nStringBuffer: %d\nStringBuilder: %d";
        System.out.printf(result, lap1 - start, lap2 - lap1, lap3 - lap2);

    }

    private static void useString() {
        String str = "";
        for (int i = 0; i < 100000; i++) {
            str += "a";
        }
        System.out.println(str.length());
    }

    private static void useStringBuffer() {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 100000; i++) {
            sb.append("a");
        }
        System.out.println(sb.length());
    }

    private static void useStringBuilder() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 100000; i++) {
            sb.append("a");
        }
        System.out.println(sb.length());
    }

}