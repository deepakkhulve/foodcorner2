package foodcorner.users;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UsersDAOImpl implements UsersDao
{
	Users UsersOb;
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Users u) 
	{
		this.sessionFactory.getCurrentSession().save(u);
		// TODO Auto-generated method stub
	}

	public void update(Users u) 
	{
		
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().update(u);
	}

	public void delete(long uid)
	{
		sessionFactory.getCurrentSession().createQuery("delete from Users where id=:id").setLong("id", uid).executeUpdate();
		// TODO Auto-generated method stub
		
	}

	public Users getUsers(long uid) 
	{
		List<Users> allUsers = getUsers();
		for(Users ob:allUsers)
		{
			if(ob.getId() == uid)
			{
				UsersOb = new Users(ob.getId(), ob.getUsername(), ob.getEmail(), ob.getPassword(),ob.getPhone(), ob.getShipAddress(), ob.getBillAddress(), ob.getRole());
			}
			
		}
		return UsersOb;
	}

	public List<Users> getUsers() 
	{
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Users").list();
	}

}
