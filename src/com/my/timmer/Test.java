package com.my.timmer;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {

	public static void main(String args[]) {
		String str = "<script language=\"javascript\">aaaaaaaaaaaa</script>";
		// Pattern pattern = Pattern
		// .compile("^<script language=\"javascript\">(.+?)</script>$");
		Pattern pattern = Pattern.compile("<.+?>", Pattern.DOTALL);
		Matcher matcher = pattern.matcher(str);
		String string = matcher.replaceAll("");
		// if (matcher.find()) {
		// System.out.println(matcher.group(1));
		// }
		System.out.println(string);
	}
}
