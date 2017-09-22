package com.sxl.ssm.util;

/**
 * Created by lixiaoshuai on 2017/8/24.
 *
 * @mail sxlshuai@foxmail.com
 */
public class Util {


    /**
     * 非空校验
     * @param str
     * @return
     */
    public static boolean getNotNull(Object str){

        if(null!=str||!"".equals(str))

            return true;
        else
            return false;
    }
}
