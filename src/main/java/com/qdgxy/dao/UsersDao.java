package com.qdgxy.dao;

import com.qdgxy.domain.User;

import java.util.List;

public interface UsersDao {
    int addUsers(User user);
    int login(User user);
    int countUser(User user);
    List<User> queryUsers();
}
