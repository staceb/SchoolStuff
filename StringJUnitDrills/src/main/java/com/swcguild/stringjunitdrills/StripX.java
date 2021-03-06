/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.stringjunitdrills;

/**
 *
 * @author apprentice
 */
public class StripX {
//Given a string, if the first or last chars are 'x', return the string without those 'x' chars, and otherwise return the string unchanged. 
//StripX("xHix") -> "Hi"
//StripX("xHi") -> "Hi"
//StripX("Hxix") -> "Hxi"

    public String StripX(String str) {
        StringBuilder build = new StringBuilder();
        build.append(str);

        if (Character.toString(build.charAt(0)).equals("x")) {
            build.deleteCharAt(0);
        }
        if (Character.toString(build.charAt(build.length() - 1)).equals("x")) {
            build.deleteCharAt(build.length() - 1);
        }
        return build.toString();
    }   
}
