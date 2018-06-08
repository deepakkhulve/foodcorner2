package foodcorner.categories;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import foodcorner.product.Product;

@Repository
@Transactional
public class CategoriesDAOImpl implements CategoriesDao
{
	Categories CategoriesOb;
	
	@Autowired
	SessionFactory sessionFactory;
	
	//// INSERT CATEGORIES ////


	public void insert(Categories c) 
	{
		this.sessionFactory.getCurrentSession().save(c);
		// TODO Auto-generated method stub
		
	}
	
	//// UPDATE CATEGORIES ////


	public void update(Categories c) 
	{
		this.sessionFactory.getCurrentSession().update(c);
		// TODO Auto-generated method stub
		
	}
	
	//// DELETE CATEGORIES ////


	public void delete(long id) {
		sessionFactory.getCurrentSession().createQuery("delete from Categories where id=:id").setLong("id", id).executeUpdate();
	}
	
	
	//// GET CATEGORIES ////


	public Categories getCategories(long id) 
	{
		List<Categories> allCategories = getCategories();
		for(Categories ob:allCategories)
		{
			if(ob.getId() == id)
			{
				CategoriesOb = new Categories(ob.getId(), ob.getName(), ob.getDescription());
			}
		}
		return CategoriesOb;
		// TODO Auto-generated method stub
	}

	public List<Categories> getCategories() 
	{
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Categories").list();
	}

	
	
	

}
