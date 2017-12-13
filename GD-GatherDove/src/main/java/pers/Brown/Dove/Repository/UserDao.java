package pers.Brown.Dove.Repository;

import pers.Brown.Dove.Domain.User;

public interface UserDao {

	void register(User user);

	User findUserByUserNameAndPassword(String userName, String password);
}
