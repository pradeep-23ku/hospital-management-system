package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;


@WebServlet("/approve")
public class Approve extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		
		
		try {
			
			
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String comm=req.getParameter("comm");
			
			
			
			AppointmentDAO dao= new AppointmentDAO(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			
			if(dao.updateCommentStatus(id, did, comm)) {
				session.setAttribute("succMsg", "Approved ");
				res.sendRedirect("admin/patient.jsp");
				
			}else {
				session.setAttribute("errorMsg", "Something wrong on server");
				res.sendRedirect("admin/patient.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
	
	

}
