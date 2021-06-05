package com.qdgxy.service;

import com.qdgxy.domain.User;

import java.util.List;

public interface UsersService {
    int addUsers(User user);
    int login(User user);
    int countUser(User user);
    List<User> queryUsers();
}
