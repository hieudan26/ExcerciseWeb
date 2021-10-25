package Murach.Cart.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.List;

import Murach.Cart.business.ProductEntity;
import Murach.Cart.data.ProductDAO;

@WebServlet(name = "indexCart", value="/cartc7")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();


        List<ProductEntity> products = ProductDAO.getAll();
        session.setAttribute("products", products);

        String url = "/Cart/indexCart.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request,response);
    }
}