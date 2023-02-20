package com.controls;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
    public static boolean isLoggedIn = false;
    public static String password = "bhagyashree123";
    public static String email = "bhagyashree@flyaway.com";

    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter out = resp.getWriter();

        String email = req.getParameter("emailEntered");
        String pass = req.getParameter("passwordEntered");

        if (email.equals(Login.email) && pass.equals(Login.password)){
            isLoggedIn = true;
            out.println("You have LoggedIn");
            req.getRequestDispatcher("welcomeadmin.jsp").forward(req, resp);
            //resp.sendRedirect("/welcomeadmin.jsp");
        }
        else {
            isLoggedIn = false;
            out.println("Login Failed : Incorrect email or Password");
        }
        out.close();
    }
}