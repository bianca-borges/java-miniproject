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
import com.java.borgeshotel.dao.*;
import com.java.borgeshotel.model.*;

@WebServlet("/ShowMenuItemListAdmin")
public class ShowMenuItemListAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ShowMenuItemListAdminServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MenuItemDao menuItemDao=new MenuItemDaoCollectionImpl();
		
		ArrayList<MenuItem> menuItemlist= menuItemDao.getMenuItemListAdmin();
		request.setAttribute("x",menuItemlist);
		RequestDispatcher rd=request.getRequestDispatcher("/menu-item-list-admin.jsp");
		rd.forward(request, response);
	}

}