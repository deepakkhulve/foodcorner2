package foodcorner.users;

import java.util.List;

import foodcorner.users.Users;

public interface UsersDao 

{
	void insert(Users u);
	void update(Users u);
	void delete(long uid);
	
	Users getUsers(long uid);
	List<Users> getUsers();
	

}
