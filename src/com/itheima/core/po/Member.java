/**
 * FileName: Member
 * Author:   wlc
 * Date:     2019/6/14 下午10:37
 * Description: 会员持久化类
 */
package com.itheima.core.po;

import java.util.Date;

public class Member {
    private int id;
    private String member_code;
    private String member_password;
    private String member_name;
    private String member_gender;
    private String member_create_code;  // 创建人id
    private Integer member_status;
    private String member_email;
    private String member_phone;
    private String member_address;
    private Date member_createtime;    // 创建时间
    private String member_photo_path;    // 创建时间
    private String member_photo_name;    // 创建时间
    private Integer start;            // 起始行
    private Integer rows;             // 所取行数

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMember_code() {
        return member_code;
    }

    public void setMember_code(String member_code) {
        this.member_code = member_code;
    }

    public String getMember_password() {
        return member_password;
    }

    public void setMember_password(String member_password) {
        this.member_password = member_password;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_gender() {
        return member_gender;
    }

    public void setMember_gender(String member_gender) {
        this.member_gender = member_gender;
    }

    public String getMember_create_code() {
        return member_create_code;
    }

    public void setMember_create_code(String member_create_code) {
        this.member_create_code = member_create_code;
    }

    public Integer getMember_status() {
        return member_status;
    }

    public void setMember_status(Integer member_status) {
        this.member_status = member_status;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(String member_phone) {
        this.member_phone = member_phone;
    }

    public String getMember_address() {
        return member_address;
    }

    public void setMember_address(String member_address) {
        this.member_address = member_address;
    }

    public Date getMember_createtime() {
        return member_createtime;
    }

    public void setMember_createtime(Date member_createtime) {
        this.member_createtime = member_createtime;
    }

    public String getMember_photo_path() {
        return member_photo_path;
    }

    public void setMember_photo_path(String member_photo_path) {
        this.member_photo_path = member_photo_path;
    }

    public String getMember_photo_name() {
        return member_photo_name;
    }

    public void setMember_photo_name(String member_photo_name) {
        this.member_photo_name = member_photo_name;
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
