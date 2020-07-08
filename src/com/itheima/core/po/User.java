package com.itheima.core.po;

import java.io.Serializable;

/**
 * 管理员持久化类
 */
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer user_id;      //id
    private String user_code;     //账号
    private String user_name;     //名称
    private String user_password; //密码
    private Integer user_state;   //状态 1可用 0锁定
    private Integer user_power;   //权限 1所有权限
    private Integer start;            // 起始行
    private Integer rows;             // 所取行数

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_code() {
        return user_code;
    }

    public void setUser_code(String user_code) {
        this.user_code = user_code;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public Integer getUser_state() {
        return user_state;
    }

    public void setUser_state(Integer user_state) {
        this.user_state = user_state;
    }

    public Integer getUser_power() {
        return user_power;
    }

    public void setUser_power(Integer user_power) {
        this.user_power = user_power;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }
}
