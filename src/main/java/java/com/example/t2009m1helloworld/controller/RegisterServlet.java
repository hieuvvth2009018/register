package java.com.example.t2009m1helloworld.controller;

import com.example.Register.t2009m1helloworld.Entity.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.com.example.t2009m1helloworld.Entity.Account;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String currentName = req.getParameter("currentName");
        req.setAttribute("currentName",currentName);
        req.getRequestDispatcher("/User/Register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String birthday = req.getParameter("birthday");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        Account account = new Account();
        account.setUsername(username);
        account.setFullName(fullName);
        account.setPassword(password);
        account.setEmail(email);
        account.setPhone(phone);
        account.setBirthday(birthday);
        req.setAttribute("account", account);
        req.getRequestDispatcher("/User/Register-success.jsp").forward(req, resp);
    }
}
