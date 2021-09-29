package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentDetailsInsertServlet")
public class PaymentDetailsInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		String itemNumber =request.getParameter("itemNumber");
		String crdHolderName = request.getParameter("crdHolderName");
		String crdNumber = request.getParameter("crdNumber");
		String crdExpMonth = request.getParameter("crdExpMonth");
		String crdExpYear = request.getParameter("crdExpYear");
		String amount =  request.getParameter("amount");
		String date =  request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtill.insertPayment(itemNumber,crdHolderName,crdNumber,crdExpMonth,crdExpYear,amount);
		
		if (isTrue == true) {
		try {
			
			List<Payment> payDetails = PaymentDBUtill.getPaymentDetails(itemNumber);
			request.setAttribute("payDetails", payDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			RequestDispatcher dis = request.getRequestDispatcher("PaymentSuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("PaymentUnsuccess.jsp");
			dis.forward(request, response);
		
		}
	
	}

}
