package com.sxl.ssm.util;

import com.common.util.constant.ConstantUtil;

import java.security.SecureRandom;
import java.util.Random;

/**
 *
 * 数据生成工具类
 *
 * Created by lixiaoshuai on 2017/8/16.
 *
 * @mail sxlshuai@foxmail.com
 */
public class CreateDateUtil {


    String[] SYMBOLARRAY= {"!", "@", "#", "$", "%", "^", "&", "*", "(", ")",
            "-", "_", "=", "+", "\\", "|", "[", "]", ";", ":",
            "'", "\"", ",", "<", ".", ">", "/", "?" };
    public static final String[] NUMBERARRAY ={"0","1","2","3","4","5","6","7","8","9"};
    public static final String[] STINGARRAY ={"1", "2", "3", "4", "5", "6", "7", "8", "9", "0","a", "b",
            "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
            "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
            "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
            "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
            "Y", "Z"};



    public static String generateString(int len){



        Random rd = new Random();





        return rd.nextInt(len)+"";
    }

    public static void main(String[] args) {


        generateString(2);

        System.out.println(System.currentTimeMillis());
        System.out.println(generateRandomNumber(100));
        System.out.println(System.currentTimeMillis());
        System.out.println(generateRandomString(100));

        System.out.println(System.currentTimeMillis());
    }

    /**
     * 生成数字
     * @param length
     * @return
     */
    public static String generateRandomNumber(int length) {
        SecureRandom sr = new SecureRandom();
        StringBuffer aString = new StringBuffer();

        for (int i = 0 ; i<length ;i++){
            aString.append(sr.nextInt(10));
        }

        return aString.toString();
    }

    /**
     * 生成字母
     * @param length 长度
     * @return
     */
    public static String generateRandomString(int length) {
        SecureRandom sr = new SecureRandom();
        StringBuffer aString = new StringBuffer();

        for (int i = 0 ; i<length ;i++){
            aString.append(ConstantUtil.ALLCHAR.charAt(sr.nextInt(ConstantUtil.ALLCHAR.length())));
        }

        return aString.toString();
    }


}
