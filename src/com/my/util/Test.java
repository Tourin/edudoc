package com.my.util;

import java.util.LinkedList;

import com.my.util.diff_match_patch.Diff;

public class Test {

	public static void main(String argsp[]) {
		String a = "1234567890";
		String b = "123a457890";
		diff_match_patch dmp = new diff_match_patch();
		LinkedList<Diff> dflist = dmp.diff_main(a, b);
		String text = "";
		for (Diff myDiff : dflist) {
			if (myDiff.operation != diff_match_patch.Operation.EQUAL) {
				text += myDiff.text;
			}
		}
		System.out.println(text);
	}
}
