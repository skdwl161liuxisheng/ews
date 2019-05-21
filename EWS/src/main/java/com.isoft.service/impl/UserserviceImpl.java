package com.isoft.service.impl;

import com.isoft.dao.UserDao;
import com.isoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserserviceImpl implements IUserService{
    @Autowired
    UserDao userDao;
    @Override
    public String login(String uname, String upwd) {
        String  str=userDao.login(uname,upwd);
        return str;
    }

    @Override
    public boolean register(String r_uname,String r_upwd, String email) {
        boolean temp=userDao.register(r_uname,r_upwd,email);
        return temp;
    }
}
