package com.java.borgeshotel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.borgeshotel.dao.MenuItemDao;
import com.java.borgeshotel.dao.MenuItemDaoCollectionImpl;
import com.java.borgeshotel.model.MenuItem;

/**
 * Servlet implementation class ShowMenuItemListCustomerServlet
 */
@WebServlet("/ShowMenuItemListCustomer")
public class ShowMenuItemListCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMenuItemListCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MenuItemDao menuItemDao=new MenuItemDaoCollectionImpl();
		ArrayList<MenuItem> menuItemlist = null;
		menuItemlist = menuItemDao.getMenuItemListCustomer();
		
		request.setAttribute("x",menuItemlist);
		RequestDispatcher rd=request.getRequestDispatcher("/menu-item-list-customer.jsp");
		rd.forward(request, response);
	}

}