package jsp_hw.utils;

public class StringUtil {
    public static boolean isEmptyOrBlank(String s) {
        return s == null ||
               s.isEmpty() ||
               s.trim().length() == 0;
    }

}
