package com.java.borgeshotel.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.borgeshotel.dao.MenuItemDao;
import com.java.borgeshotel.dao.MenuItemDaoCollectionImpl;
import com.java.borgeshotel.model.MenuItem;


@WebServlet("/ShowEditMenuItem")
public class ShowEditMenuItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowEditMenuItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		long id =Long.parseLong( request.getParameter("id"));
		MenuItemDao  menuItemdao = new MenuItemDaoCollectionImpl();
		MenuItem menuItem = menuItemdao.getMenuItem(id);
	    request.setAttribute("x",menuItem);
		RequestDispatcher rd = request.getRequestDispatcher("/edit-menu-item.jsp");
		rd.forward(request,response);
	}

}