package controller;

import dao.AccountDao;
import model.Account;
import service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "loginServlet", value = "/logins")
public class LoginServlet extends HttpServlet {
    AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action2 = request.getParameter("action2");
        switch (action2) {
            case "login":
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                Account account2 = accountService.checkLogin(username, password);
                RequestDispatcher dispatcher;
                if (account2 == null) {
                    request.setAttribute("message", "Wrong password or email address!");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("account", account2);
                    response.sendRedirect("/products");
                }

                break;
            case "signup":
                String username_signup = request.getParameter("username_signup");
                String password_signup = request.getParameter("password_signup");

                Account account = new Account(username_signup, password_signup);
                System.out.println(account);
                accountService.save(account);
                request.setAttribute("message", "New account was created!");
                dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);

        }
    }
}
