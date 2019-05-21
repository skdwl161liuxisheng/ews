package com.isoft.dao.impl;

import com.isoft.dao.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository("userDao")
    public class UserDAOimpl implements UserDao{
    @Autowired
    SqlSessionFactory sessionFactoryBean;
    public String login(String uname, String upwd) {
        SqlSession sqlSession=sessionFactoryBean.openSession(true);//true
        String statement="com.isoft.mapping.userMapper.login";
        Map map=new HashMap();
        map.put("uname",uname);
        map.put("upwd",upwd);
        List<Map<String,Object>> list=sqlSession.selectList(statement,map);
        if(list.size()>0)
            return "success";
        else
            return "fault";
    }

    public boolean register(String r_uname,String r_upwd, String email) {

        System.out.println(email);
        return true;
    }


}
