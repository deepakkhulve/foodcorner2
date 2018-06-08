package foodcorner.users;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Users 
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private long uid;
	private String uusername;
	private String uemail;
	private String upassword;
	private String uphone;
	private String ubaddress;
	private String usaddress;
	private String urole;
	
	private boolean active = true;

	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	/**
	 * @return the id
	 */
	public long getId() {
		return uid;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(long uid) {
		this.uid = uid;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return uusername;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String uusername) {
		this.uusername = uusername;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return uemail;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String uemail) {
		this.uemail = uemail;
	}
	/**
	 * @return the password
	 */
	public String getPassword() 
	{
		return upassword;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String upassword) {
		this.upassword = upassword;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return uphone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String uphone) {
		this.uphone = uphone;
	}
	/**
	 * @return the address
	 */
	public String getShipAddress() {
		return usaddress;
	}
	/**
	 * @param address the address to set
	 */
	public void setShipAddress(String usaddress) {
		this.usaddress = usaddress;
	}
	public String getBillAddress() {
		return ubaddress;
	}
	/**
	 * @param address the address to set
	 */
	public void setBillAddress(String ubaddress) {
		this.ubaddress = ubaddress;
	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return urole;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String urole) {
		this.urole = urole;
	}
	public Users() {
		super();
	}
	public Users(long uid, String uusername, String uemail, String upassword, String uphone, String usaddress, String ubaddress,
			String urole) {
		super();
		this.uid = uid;
		this.uusername = uusername;
		this.uemail = uemail;
		this.upassword = upassword;
		this.uphone = uphone;
		this.usaddress = usaddress;
		this.ubaddress = ubaddress;
		this.urole = urole;
	}
	
	

}
