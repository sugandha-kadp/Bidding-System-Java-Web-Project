package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/WonItemDetailsInsertServlet")
public class WonItemDetailsInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String wid = request.getParameter("wid");
		String itemNumber =request.getParameter("itemNumber");
		String itemName = request.getParameter("itemName");
		String discription = request.getParameter("discription");
		String price = request.getParameter("price");
		String bidderID = request.getParameter("bidderID");
		String paymentCode =  request.getParameter("paymentCode");
		String wonDate =  request.getParameter("wonDate");
		
		boolean isTrue;
		
		
		
		isTrue = PaymentDBUtill.insertWonItemDetails(itemNumber,itemName,discription,price,bidderID,paymentCode);
		
		if (isTrue == true) {
		try {
			
			List<WonList> wonDetails = PaymentDBUtill.getWonItemDetails();
			request.setAttribute("wonDetails", wonDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			RequestDispatcher dis = request.getRequestDispatcher("WonItemInsertSuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("WonItemInsertUnsuccess.jsp");
			dis.forward(request, response);
		
		}
	
	}

}
