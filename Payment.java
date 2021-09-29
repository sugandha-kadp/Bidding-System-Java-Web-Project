package com.payment;

public class Payment {
	private int pid;
	private String itemNumber;
	private String crdHolderName;
	private String crdNumber;
	private String crdExpMonth;
	private String crdExpYear;
	private String amount;
	private String date;
	
	public Payment(int pid, String itemNumber, String crdHolderName, String crdNumber, String crdExpMonth,
			String crdExpYear, String amount, String date) {
		
		this.pid = pid;
		this.itemNumber = itemNumber;
		this.crdHolderName = crdHolderName;
		this.crdNumber = crdNumber;
		this.crdExpMonth = crdExpMonth;
		this.crdExpYear = crdExpYear;
		this.amount = amount;
		this.date = date;
	}

	public int getPid() {
		return pid;
	}

	public String getItemNumber() {
		return itemNumber;
	}

	public String getCrdHolderName() {
		return crdHolderName;
	}

	public String getCrdNumber() {
		return crdNumber;
	}

	public String getCrdExpMonth() {
		return crdExpMonth;
	}

	public String getCrdExpYear() {
		return crdExpYear;
	}

	public String getAmount() {
		return amount;
	}

	public String getDate() {
		return date;
	}
	
}
