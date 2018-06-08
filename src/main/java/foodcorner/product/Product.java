package foodcorner.product;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table
public class Product 
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private long pid;
	private String pname;
	private String pprice;
	private String pdescription;
	private String pquantity;
	private String pbrand;

	private String imageUrl;
	
	@Transient
	private MultipartFile image;
	
	public String getQuantity() {
		return pquantity;
	}
	public void setQuantity(String pquantity) {
		this.pquantity = pquantity;
	}
	public String getBrand() {
		return pbrand;
	}
	public void setBrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public long getId() {
		return pid;
	}
	public void setId(long pid) {
		this.pid = pid;
	}
	public String getName() {
		return pname;
	}
	public void setName(String pname) {
		this.pname = pname;
	}
	public String getPrice() {
		return pprice;
	}
	public void setPrice(String pprice) {
		this.pprice = pprice;
	}
	public String getDescription() 
	{
		return pdescription;
	}
	public void setDescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public Product() 
	{
		super();
	}
	public Product(long pid, String pname, String pprice, String pdescription, String pbrand, String pquantity) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.pdescription = pdescription;
		this.pbrand= pbrand;
		this.pquantity =pquantity;
	}
	
	
	

}
