package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class PaymentDBUtill {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null ;
	private static ResultSet rs = null;
	
	
		//Insert Won Item Details.
		public static boolean insertWonItemDetails(String itemNumber, String itemName, String discription, String price,String bidderID,String paymentCode) {
	
		Date sdate = new java.util.Date();  
					
		boolean isSuccess = false;
		 try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "insert into wonlist values(0,'"+itemNumber+"','"+itemName+"','"+discription+"','"+price+"','"+bidderID+"','"+paymentCode+"','"+sdate+"')";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 isSuccess = true;				 
			 } else {
				 isSuccess =false;
			 }
		 }
		 catch (Exception e){
			 e.printStackTrace();			 
		 }	
		return isSuccess;		
		}

		//Get Won Item Details.	
		public static List<WonList> getWonItemDetails(){
			
	   
	    	
	    	ArrayList<WonList> won = new ArrayList<WonList>();
	    	
	    	try {
	    		
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	    		String sql = "select * from wonlist ";
	    		
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int wid = rs.getInt(1);
					String witemNumber=rs.getString(2);
					String itemName = rs.getString(3);
					String discription = rs.getString(4);
					String price = rs.getString(5);
					String bidderID = rs.getString(6);
					String paymentCode = rs.getString(7);
					String wonDate = rs.getString(8);
	    			
					WonList w = new WonList(wid,witemNumber,itemName,discription,price,bidderID,paymentCode,wonDate);
	    			won.add(w);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return won;	
	    }
		
		
		//Get Won Item Details.	
		public static List<Payment> getPaymentList(){
		
	    	ArrayList<Payment> plist = new ArrayList<Payment>();
	    	
	    	try {
	    		
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	    		String sql = "select * from payment ";
	    		
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int pid = rs.getInt(1);
					String pitemNumber=rs.getString(2);
					String crdHolderName = rs.getString(3);
					String crdNumber = rs.getString(4);
					String crdExpMonth = rs.getString(5);
					String crdExpYear = rs.getString(6);
					String amount = rs.getString(7);
					String date = rs.getString(8);
	    			
					Payment pl = new Payment(pid,pitemNumber,crdHolderName,crdNumber,crdExpMonth,crdExpYear,amount,date);
					plist.add(pl);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return plist;	
	    }
	

		//Payment Login Validation.
		public static boolean PaymentLoginValidate (String bid,String pcode){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = " select * from wonlist where bidderID = '"+bid+"' and paymentCode = '"+pcode+"'"; 
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
		
		//Get Payment Login Validation Details
		public static List<WonList> GetPaymentLoginValidateDetails(String bid,String pcode){
			ArrayList<WonList> won = new ArrayList<WonList>();
			
			try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = " select * from wonlist where bidderID = '"+bid+"' and paymentCode = '"+pcode+"'"; 
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int wid = rs.getInt(1);
				String itemNumber = rs.getString(2);
				String itemName = rs.getString(3);
				String discription = rs.getString(4);
				String price = rs.getString(5);
				String bidderID = rs.getString(6);
				String paymentCode = rs.getString(7);
				String wonDate = rs.getString(8);
				
				
				WonList w = new WonList(wid,itemNumber,itemName,discription,price,bidderID,paymentCode,wonDate);
				won.add(w);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
			return won; 
			
		}

		//Insert Payment Details.
		public static boolean insertPayment(String itemNumber, String crdHolderName, String crdNumber, String crdExpMonth,String crdExpYear,String amount) {

		Date sdate = new java.util.Date();  
					
		boolean isSuccess = false;
		 try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "insert into payment values(0,'"+itemNumber+"','"+crdHolderName+"','"+crdNumber+"','"+crdExpMonth+"','"+crdExpYear+"','"+amount+"','"+sdate+"')";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 isSuccess = true;				 
			 } else {
				 isSuccess =false;
			 }
		 }
		 catch (Exception e){
			 e.printStackTrace();			 
		 }	
		return isSuccess;		
		}

		
		//Get Payment Details.	
		public static List<Payment> getPaymentDetails(String itemNumber){
	    	
	   
	    	
	    	ArrayList<Payment> pay = new ArrayList<Payment>();
	    	
	    	try {
	    		
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	    		String sql = "select * from payment where itemNumber='"+itemNumber+"'";
	    		
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int pid = rs.getInt(1);
					String pitemNumber=rs.getString(2);
					String crdHolderName = rs.getString(3);
					String crdNumber = rs.getString(4);
					String crdExpMonth = rs.getString(5);
					String crdExpYear = rs.getString(6);
					String amount = rs.getString(7);
					String date = rs.getString(8);
	    			
					Payment p = new Payment(pid,pitemNumber,crdHolderName,crdNumber,crdExpMonth,crdExpYear,amount,date);
	    			pay.add(p);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return pay;	
	    }
		
		
		//Update Payment Details.	
		public static boolean updatePayment(String pid, String itemNumber, String crdHolderName, String crdNumber, String crdExpMonth, String crdExpYear, String amount, String date) {
			    	
			    	try {
			    		
			    		con = DBConnect.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "update payment set pid='"+pid+"',itemNumber='"+itemNumber+"',crdHolderName='"+crdHolderName+"',crdNumber='"+crdNumber+"',crdExpMonth='"+crdExpMonth+"',crdExpYear='"+crdExpYear+"',amount='"+amount+"',date='"+date+"'"
			    				+ "where pid='"+pid+"'";
			    		
			    		int rs = stmt.executeUpdate(sql);
			    		
			    		if(rs > 0) {
			    			isSuccess = true;
			    		}
			    		else {
			    			isSuccess = false;
			    		}
			    		
			    	}
			    	catch(Exception e) {
			    		e.printStackTrace();
			    	}
			    	
			    	return isSuccess;
			    }
			
		
		
		//Delete Payment Details.
		public static boolean deletPayment(String pid) {
			
			int convertedID = Integer.parseInt(pid);
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from payment where pid = '"+convertedID+"' ";
				
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
						
					 isSuccess = true;
				}
				else {
					
					isSuccess = false;
					
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
				
			}
			return isSuccess;
			}
		
		
}
	



