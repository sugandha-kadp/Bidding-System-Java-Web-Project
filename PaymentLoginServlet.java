package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentLoginServlet")
public class PaymentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");		
		
		String bid = request.getParameter("bid");
		String pcode = request.getParameter("pcode");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtill.PaymentLoginValidate(bid,pcode);
		
		if(isTrue == true) {
			List <WonList> wonItemDetatils = PaymentDBUtill.GetPaymentLoginValidateDetails(bid,pcode);
			request.setAttribute("wonItemDetatils", wonItemDetatils);
			
			RequestDispatcher dis = request.getRequestDispatcher("WonItemProfile.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Bidder ID or Payment Code is incorect !. ');");
			out.println("location='PaymentLogin.jsp'");
			out.println("</script>");
			
		}

	}

}
