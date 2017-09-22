package com.sxl.ssm.entity;

import com.sxl.ssm.util.Util;

import java.util.Map;

/**
 * Created by lixiaoshuai on 2017/8/23.
 *
 * @mail sxlshuai@foxmail.com
 */
public class Page {



    private int pageNumber = 0;
    private int pageSize = 10;
    private int offset ;
    private int limit;


    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }


    public  Page(Map<String,Object> map){

        if(Util.getNotNull(map.get("pageNo"))){
            this.setPageNumber(Integer.parseInt((String) map.get("pageNo")));
        }
        if(Util.getNotNull(map.get("limit"))){
            this.setLimit(Integer.parseInt((String) map.get("limit")));
        }
        if(Util.getNotNull(map.get("pageSize"))){
            this.setPageSize(Integer.parseInt((String) map.get("pageSize")));
        }
        if(Util.getNotNull(map.get("offset"))){
            this.setOffset(Integer.parseInt((String) map.get("offset")));
        }


    }



}
