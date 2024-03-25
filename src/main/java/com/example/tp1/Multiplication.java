package com.example.tp1;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/Multiplication")
public class Multiplication extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("<html><body><h1>Multiplication Page</h1><p>Implement multiplication logic here.</p></body></html>");
    }
}
