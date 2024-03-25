package com.example.tp1;

import java.io.*;
import java.util.ArrayList;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/Home")
public class Home extends HttpServlet {
    private ArrayList<String[]> visiteurs = new ArrayList<>();
    private String message;

    @Override
    public void init() {
        visiteurs.add(new String[]{"ali@gmail.com", "1234"});
        visiteurs.add(new String[]{"mohamed@yahoo.fr", "1234"});
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        for (String[] visiteur : visiteurs) {
            if (visiteur[0].equals(email) && visiteur[1].equals(password)) {
                response.sendRedirect("calculator.jsp");
                return;
            }
        }

        response.sendRedirect("index.html");
    }

    public void destroy() {
    }
}