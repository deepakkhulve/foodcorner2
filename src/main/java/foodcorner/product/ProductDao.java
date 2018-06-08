package foodcorner.product;

import java.util.List;
import java.util.Locale.Category;

public interface ProductDao 
{
	void insert(Product p);
	void update(Product p);
	void delete(long pid);
	
	Product getProduct(long pid);
	List<Product> getProduct();
	

	

}
