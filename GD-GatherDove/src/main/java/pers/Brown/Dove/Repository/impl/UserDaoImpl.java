package pers.Brown.Dove.Repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pers.Brown.Dove.Domain.User;
import pers.Brown.Dove.Repository.UserDao;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	public DataSource datasource;

	@Autowired
	public JdbcTemplate jdbcTemplate;

	// ------- Constants (static final) ----------------------------------------
	// ------- Static Variables (static) ---------------------------------------
	// ------- Instance Variables (private) ------------------------------------
	// ------- Constructors ----------------------------------------------------
	// ------- Instance Methods (public) ---------------------------------------
	@Override
	public void register(User user) {
		String sql = "insert into users values(?,?,?,?,?,?)";

		this.jdbcTemplate.update(sql,
				new Object[] { user.getUserName(), user.getPassWord(), user.getFirstName(), user.getLastName(),
						user.getEmail(), user.getPhone() });

	}

	@Override
	public User findUserByUserNameAndPassword(String userName, String password) {
		// TODO Auto-generated method stub
		String sql = "Select * from users where userName =" + userName + "and passWord =" + password;
	}
	// ------- Instance Methods (protected) ------------------------------------

	// ------- Instance Methods (private) --------------------------------------

	// ------- Static Methods --------------------------------------------------

	// ------- Optional Inner Class ------------------------------------------

}
