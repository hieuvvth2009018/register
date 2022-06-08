package com.example.Register.t2009m1helloworld.controller.model;

import com.example.Register.t2009m1helloworld.controller.entity.Product;

import java.util.List;

public interface ProductModel {
    boolean save(Product product);
    boolean update(int id, Product product);
    boolean delete(int id);
    Product findById(int id);
    List<Product> findAll();
}
