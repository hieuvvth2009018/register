package com.example.Register.t2009m1helloworld.model;


import java.util.List;

public interface UserModel {
    boolean save(User user);
    boolean update(int id, User updateUser);
    boolean delete(int id);
    List<User> findAll();
    User findById(int id);
}
