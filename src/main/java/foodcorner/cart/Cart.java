package foodcorner.cart;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import foodcorner.product.Product;

@Entity
@Table
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long cartid;
	private long cartproductid;
	private long cartquantity;
	private String cartshipaddr;
	private String cartbilladdr;
	private String cartuseremail;
	//private String imageUrl;

	/*@Transient
	private MultipartFile image;
*/
	@Transient
	private Product product;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	
	public long getCartid() {
		return cartid;
	}

	public void setCartid(long cartid) {
		this.cartid = cartid;
	}

	public long getCartproductid() {
		return cartproductid;
	}

	public void setCartproductid(long cartproductid) {
		this.cartproductid = cartproductid;
	}

	public String getCartshipaddr() {
		return cartshipaddr;
	}

	public void setCartshipaddr(String cartshipaddr) {
		this.cartshipaddr = cartshipaddr;
	}

	public String getCartbilladdr() {
		return cartbilladdr;
	}

	public void setCartbilladdr(String cartbilladdr) {
		this.cartbilladdr = cartbilladdr;
	}

	public String getCartuseremail() {
		return cartuseremail;
	}

	public void setCartuseremail(String cartuseremail) {
		this.cartuseremail = cartuseremail;
	}

	public long getCartquantity() {
		return cartquantity;
	}

	public void setCartquantity(long cartquantity) {
		this.cartquantity = cartquantity;
	}

	public Cart(long cartid, long cartproductid, String cartshipaddr, String cartbilladdr, String cartuseremail,
			long cartquantity) {
		super();
		this.cartid = cartid;
		this.cartproductid = cartproductid;
		this.cartshipaddr = cartshipaddr;
		this.cartbilladdr = cartbilladdr;
		this.cartuseremail = cartuseremail;
		this.cartquantity = cartquantity;
	}

	public Cart() {
		super();
	}

}
