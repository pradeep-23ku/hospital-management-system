package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;




@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		String specName=req.getParameter("specName");
		
	SpecialistDao dao= new SpecialistDao(DBConnect.getConn());
	boolean f=dao.addSpeciallist(specName);
	
	HttpSession session=req.getSession();
	
	
	if(f) {
		
		
		session.setAttribute("succMsg", "Specialist Added");
		res.sendRedirect("admin/index.jsp");
		
		
	} else {
		

		session.setAttribute("errorMsg", "Something wrong on server");
		res.sendRedirect("admin/index.jsp");
	}
	
	
	
		
	}
	
	
	
	

}
