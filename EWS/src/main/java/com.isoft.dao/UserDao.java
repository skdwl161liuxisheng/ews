package com.isoft.dao;

public interface UserDao {
    String login(String uname,String upwd);
    boolean register(String r_uname ,String r_upwd , String email);
}
