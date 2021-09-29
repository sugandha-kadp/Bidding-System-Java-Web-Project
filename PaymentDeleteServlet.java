package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentDeleteServlet")
public class PaymentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String pid=request.getParameter("pid");  
		boolean isTrue;
       
       isTrue = PaymentDBUtill.deletPayment(pid); 
       
       if(isTrue == true) {
    	   
    	   	RequestDispatcher dis = request.getRequestDispatcher("PaymentInsert.jsp");
			dis.forward(request, response);
       }
       else {
    	   
    	   	List<Payment> payDetails = PaymentDBUtill.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
    	   
    	   RequestDispatcher dis = request.getRequestDispatcher("PaymentSuccess.jsp");
    	   dis.forward(request, response);
       }
		
		
	}

}
