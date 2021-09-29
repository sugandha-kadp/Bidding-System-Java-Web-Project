package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/WonListServlet")
public class WonListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
			List<WonList> wonDetails = PaymentDBUtill.getWonItemDetails();
			request.setAttribute("wonDetails", wonDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			RequestDispatcher dis = request.getRequestDispatcher("WonList.jsp");
			dis.forward(request, response);
			

		}
	
	}

