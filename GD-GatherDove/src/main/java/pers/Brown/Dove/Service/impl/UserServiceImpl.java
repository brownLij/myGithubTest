package pers.Brown.Dove.Service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.Brown.Dove.Domain.User;
import pers.Brown.Dove.Repository.UserDao;
import pers.Brown.Dove.Service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;

	// ------- Constants (static final) ----------------------------------------

	// ------- Static Variables (static) ---------------------------------------

	// ------- Instance Variables (private) ------------------------------------

	// ------- Constructors ----------------------------------------------------

	// ------- Instance Methods (public) ---------------------------------------
	@Transactional
	public void register(User user) {
		this.userDao.register(user);

	}

	@Override
	public String checkUserExist(String userName, String passWord) {
		// TODO Auto-generated method stub
		User user = this.userDao.findUserByUserNameAndPassword(userName, passWord);
		return user == null ? "1" : "0";
	}
	// ------- Instance Methods (protected) ------------------------------------

	// ------- Instance Methods (private) --------------------------------------

	// ------- Static Methods --------------------------------------------------

	// ------- Optional Inner Class ------------------------------------------

}
