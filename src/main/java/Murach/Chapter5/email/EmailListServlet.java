package Murach.Chapter5.email;

import java.io.*;
import java.util.Date;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Murach.Chapter7.business.UserEntity;
import Murach.Chapter7.data.UserDAO;

@WebServlet(name ="EmailList",value = "/emailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/Chapter5/indexChapter5.jsp";
        if (action.equals("join")) {
            url = "/Chapter5/indexChapter5.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            UserEntity user = new UserEntity();
            user.setLastname(lastName);
            user.setFirstname(firstName);
            user.setEmail(email);
            UserDAO.insertUser(user);

            // set User object in request object and set URL
            session.setAttribute("user", user);
            url = "/Chapter5/thanks.jsp";   // the "thanks" page
        }

        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        List<UserEntity> users =  UserDAO.getAll();
        session.setAttribute("users", users);

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}