package controller;

import java.util.Calendar;
import java.util.Random;

public class RandomGenerate {
	private static String Name;

	private static int anArray[];
	private static String unique;
	private static int presentyear;

	public static String generateID(String ownerid) {
		list();

		Name = ownerid.toUpperCase();

		Calendar c = Calendar.getInstance();
		int year = c.getWeekYear();

		String s = Integer.toString(year);
		char ch = s.charAt(s.length() - 1);
		String str = Character.toString(ch);
		
		int factarray = factorialNo(randomFill());
String fact=Integer.toString(factarray);
		char first = Name.charAt(0);
		char last = Name.charAt(Name.length() - 1);
		unique=fact+first+last+str;
		return unique;
	}

	private static int factorialNo(int randam) {
		int j = 0;
		int fact = 1;
		int factNo = randam;
		String s = null;
		for (int i = 1; i < factNo; i++) {
			fact = fact * i;
			s = Integer.toString(fact);
		}
		if (s.length() < 2) {
			String s1 = s + 0;
			int in = Integer.parseInt(s1);
			return in;
		} else

		if (s.length() > 2) {
			String s1 = s.substring(0, 2);
			int in1 = Integer.parseInt(s1);
			return in1;
		}

		else

			return fact;
	}

	private static int[] list() {
		anArray = new int[10];
		for (int i = 0; i <= anArray.length - 1; i++) {
			anArray[i] = i + 1;

		}
		return anArray;
	}

	private static int randomFill() {

		int rnd = new Random().nextInt(anArray.length);
		return anArray[rnd];

	}

}
