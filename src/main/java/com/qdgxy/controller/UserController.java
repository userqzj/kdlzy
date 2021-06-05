package com.qdgxy.controller;


import com.qdgxy.domain.User;
import com.qdgxy.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UsersService service;

    //注册用户
    @RequestMapping("/addUser.do")
    public ModelAndView addUser(User user){
        ModelAndView mv=new ModelAndView();
        //判断是否重复ID
        int num1=service.countUser(user);
        if (num1>0){
            mv.setViewName("error");
            return mv;
        }
        String tips="注册失败";
        //调用service处理user
        int nums=service.addUsers(user);
        if (nums>0){
            //注册成功
            tips="用户"+user.getUsername()+"注册成功";
        }
        //添加数据
        mv.addObject("tips",tips);
        //指定结果页面
        mv.setViewName("result");
        return mv;
    }

    //登录操作
    @RequestMapping("/login.do")
    public ModelAndView login(User user){
        ModelAndView mv=new ModelAndView();
        String tips="登录失败";
        int nums=service.login(user);
        if (nums>0){
            //登录成功
            tips="欢迎你"+user.getUsername();
            mv.addObject("tips",tips);
            mv.setViewName("loginresult");
        }else if (nums==0){
            mv.setViewName("faillogin");
        }
      return mv;
    }

    @RequestMapping("/queryUsers.do")
    @ResponseBody
    //处理查询 响应ajax
    public List<User> queryUsers(){
        List<User> users=service.queryUsers();
        return users;
    }
}
