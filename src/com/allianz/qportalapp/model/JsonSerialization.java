package com.allianz.qportalapp.model;

import org.json.JSONArray;
import org.json.JSONException;

import jdk.nashorn.internal.runtime.JSONFunctions;

public class JsonSerialization {

	public static void main(String args[]) throws JSONException{
		
		String []array1={"a","b","c"};
		System.out.println(array1);
		JSONArray jsonArray=new JSONArray(array1);
		System.out.println(jsonArray.toString());
		
		for(int i=0;i<jsonArray.length();i++){
			System.out.println(i+": "+jsonArray.getString(i));
		}
		
		String ss="'[a,b,c,d,ee,ggg]'";
		String wordArray[]=ss.split("\\W");
		
	for(int k=0;k<wordArray.length;k++){
		System.out.println(wordArray[k]);
	}
		
	}
}
