package com.payment;

public class WonList {

    private int wid;
    private String itemNumber;
    private String itemName;
    private String discription;
    private String price;
    private String bidderID;
    private String paymentCode;
    private String wonDate;
  
      

	public WonList(int wid, String itemNumber, String itemName, String discription, String price, String bidderID,
			String paymentCode, String wonDate) {
		
		this.wid = wid;
		this.itemNumber = itemNumber;
		this.itemName = itemName;
		this.discription = discription;
		this.price = price;
		this.bidderID = bidderID;
		this.paymentCode = paymentCode;
		this.wonDate = wonDate;
	}

	public int getWid() {
		return wid;
	}

	public String getItemNumber() {
		return itemNumber;
	}

	public String getItemName() {
		return itemName;
	}

	public String getDiscription() {
		return discription;
	}

	public String getPrice() {
		return price;
	}

	public String getBidderID() {
		return bidderID;
	}

	public String getPaymentCode() {
		return paymentCode;
	}

	public String getWonDate() {
		return wonDate;
	}

	
}	

