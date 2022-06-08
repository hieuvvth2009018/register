package com.example.Register.t2009m1helloworld.controller;

import com.example.Register.t2009m1helloworld.entity.Product;
import com.example.Register.t2009m1helloworld.model.MysqlProduct;
import com.example.Register.t2009m1helloworld.model.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateProductServlet extends HttpServlet {
    private ProductModel productModel;
    @Override
    public void init() throws ServletException {
        productModel = new MysqlProduct();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/products/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String thumbnail = req.getParameter("thumbnail");
        Double price  = Double.parseDouble(req.getParameter("price"));
        String manufactureEmail = req.getParameter("manufactureEmail");
        String manufacturePhone = req.getParameter("manufacturePhone");
        String description = req.getParameter("description");
        String detail = req.getParameter("detail");
        Product product = new Product(name, description, detail, price, thumbnail, manufactureEmail, manufacturePhone);

    }
}
