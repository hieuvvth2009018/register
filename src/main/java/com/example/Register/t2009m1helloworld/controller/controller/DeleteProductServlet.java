package com.example.Register.t2009m1helloworld.controller.controller;

import com.example.T2009m1_WCD_SEM4.controller.entity.Product;
import com.example.T2009m1_WCD_SEM4.controller.entity.entityEmun.ProductStatus;
import com.example.T2009m1_WCD_SEM4.controller.model.MysqlProduct;
import com.example.T2009m1_WCD_SEM4.controller.model.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteProductServlet extends HttpServlet {
    private ProductModel productModel;

    @Override
    public void init() throws ServletException {
        productModel = new MysqlProduct();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId =Integer.parseInt(req.getParameter("id"));
        Product product = productModel.findById(productId);
        product.setProductStatus(ProductStatus.DELETED);
    }
}
