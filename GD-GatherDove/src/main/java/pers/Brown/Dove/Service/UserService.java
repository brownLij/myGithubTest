package pers.Brown.Dove.Service;

import pers.Brown.Dove.Domain.User;

public interface UserService {

	void register(User aUser);

	String checkUserExist(String userName, String passWord);

}
