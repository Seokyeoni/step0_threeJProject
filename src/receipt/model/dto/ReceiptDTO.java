package receipt.model.dto;

public class ReceiptDTO {
	private int receiptId;
	private String personId;
	private String foodExp;
	private String transExp; 
	private String shopExp;
	private String leisureExp;
	private String teleExp;
	
	public ReceiptDTO(String foodExp, String transExp, String shopExp, String leisureExp,
			String teleExp) {
		super();
		this.personId = personId;
		this.foodExp = foodExp;
		this.transExp = transExp;
		this.shopExp = shopExp;
		this.leisureExp = leisureExp;
		this.teleExp = teleExp;
	}
	public ReceiptDTO(String personId, String foodExp, String transExp, String shopExp, String leisureExp,
			String teleExp) {
		super();
		this.personId = personId;
		this.foodExp = foodExp;
		this.transExp = transExp;
		this.shopExp = shopExp;
		this.leisureExp = leisureExp;
		this.teleExp = teleExp;
	}
	public ReceiptDTO(int receiptId, String personId, String foodExp, String transExp, String shopExp,
			String leisureExp, String teleExp) {
		super();
		this.receiptId = receiptId;
		this.personId = personId;
		this.foodExp = foodExp;
		this.transExp = transExp;
		this.shopExp = shopExp;
		this.leisureExp = leisureExp;
		this.teleExp = teleExp;
	}
	
	public int getReceiptId() {
		return receiptId;
	}
	public void setReceiptId(int receiptId) {
		this.receiptId = receiptId;
	}
	public String getPersonId() {
		return personId;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	public String getFoodExp() {
		return foodExp;
	}
	public void setFoodExp(String foodExp) {
		this.foodExp = foodExp;
	}
	public String getTransExp() {
		return transExp;
	}
	public void setTransExp(String transExp) {
		this.transExp = transExp;
	}
	public String getShopExp() {
		return shopExp;
	}
	public void setShopExp(String shopExp) {
		this.shopExp = shopExp;
	}
	public String getLeisureExp() {
		return leisureExp;
	}
	public void setLeisureExp(String leisureExp) {
		this.leisureExp = leisureExp;
	}
	public String getTeleExp() {
		return teleExp;
	}
	public void setTeleExp(String teleExp) {
		this.teleExp = teleExp;
	}
	
	@Override
	public String toString() {
		return "ReceiptDTO [receiptId=" + receiptId + ", personId=" + personId + ", foodExp=" + foodExp + ", transExp="
				+ transExp + ", shopExp=" + shopExp + ", leisureExp=" + leisureExp + ", teleExp=" + teleExp + "]";
	}
	
}
