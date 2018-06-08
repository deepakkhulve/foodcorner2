package foodcorner.cart;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import foodcorner.cart.Cart;


@Repository
@Transactional
public class CartDaoImpl implements CartDao
{
	Cart CartOb;
	
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Cart ca) 
	{
		this.sessionFactory.getCurrentSession().save(ca);

		// TODO Auto-generated method stub
		
	}

	public void update(Cart ca) 
	{
		this.sessionFactory.getCurrentSession().update(ca);

		// TODO Auto-generated method stub
		
	}

	public void delete(long cartid) 
	{
		sessionFactory.getCurrentSession().createQuery("delete from Cart where id=:id").setLong("id", cartid).executeUpdate();

		// TODO Auto-generated method stub
		
	}

	public Cart getCart(long cartid) 
	{
		List<Cart> allCart = getCart();
		for(Cart ob:allCart)
		{
			if(ob.getCartid() == cartid)
			{
				CartOb = new Cart(ob.getCartid(), ob.getCartproductid(), ob.getCartshipaddr(), ob.getCartbilladdr(), ob.getCartuseremail(), ob.getCartquantity());
			}
		}
		return CartOb;
		// TODO Auto-generated method stub
	}

	public List<Cart> getCart() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();

		// TODO Auto-generated method stub
		
	}
	
	

}
