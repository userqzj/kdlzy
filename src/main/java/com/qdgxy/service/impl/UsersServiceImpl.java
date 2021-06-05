package com.qdgxy.service.impl;

import com.qdgxy.dao.UsersDao;
import com.qdgxy.domain.User;
import com.qdgxy.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Resource
    private UsersDao usersDao;
    @Override
    public int addUsers(User user) {
        int nums=usersDao.addUsers(user);
        return nums;
    }

    @Override
    public int login(User user) {
        int nums=usersDao.login(user);
        return nums;
    }

    @Override
    public int countUser(User user) {
        int nums=usersDao.countUser(user);
        return nums;
    }

    @Override
    public List<User> queryUsers() {
        return  usersDao.queryUsers();

    }
}
