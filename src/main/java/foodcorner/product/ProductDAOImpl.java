package foodcorner.product;

import java.util.List;
import java.util.Locale.Category;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import foodcorner.users.Users;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDao
{
	Product ProductOb;
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Product p) 
	{
		this.sessionFactory.getCurrentSession().save(p);
		// TODO Auto-generated method stub
		
	}

	public void update(Product p) 
	{
		this.sessionFactory.getCurrentSession().update(p);
		// TODO Auto-generated method stub
		
	}

	public void delete(long pid) 
	{
		sessionFactory.getCurrentSession().createQuery("delete from Product where id=:id").setLong("id", pid).executeUpdate();
		// TODO Auto-generated method stub
		
	}

	public Product getProduct(long pid) 
	{
		List<Product> allProduct = getProduct();
		for(Product ob:allProduct)
		{
			if(ob.getId() == pid)
			{
				return ob;
			}
			
		}
		return null;
		// TODO Auto-generated method stub
		
	}

	public List<Product> getProduct() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
	

}
