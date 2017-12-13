package pers.Brown.Dove.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pers.Brown.Dove.Domain.User;
import pers.Brown.Dove.Service.UserService;

@Controller
public class RegistrationController {

	@Autowired
	public UserService userService;

	// ------- Constants (static final) ----------------------------------------

	// ------- Static Variables (static) ---------------------------------------

	// ------- Instance Variables (private) ------------------------------------

	// ------- Constructors ----------------------------------------------------

	// ------- Instance Methods (public) ---------------------------------------
	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public ModelAndView userRegister(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") User user) {

		this.userService.register(user);

		return new ModelAndView("signIn", "firstname", user.getFirstName());

	}

	@RequestMapping(value = "/login")
	public String userLogIn(HttpServletRequest request, HttpServletResponse response) {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		return this.userService.checkUserExist(userName, passWord);
	}
	// ------- Instance Methods (protected) ------------------------------------

	// ------- Instance Methods (private) --------------------------------------

	// ------- Static Methods --------------------------------------------------

	// ------- Optional Inner Class ------------------------------------------

}
