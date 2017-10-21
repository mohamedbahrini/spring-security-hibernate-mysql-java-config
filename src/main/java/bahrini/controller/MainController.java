package bahrini.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import bahrini.entity.UserInfo;
import bahrini.service.IUserService;

@Controller
public class MainController {

    @Autowired
    private IUserService service;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String denied() {
        return "denied";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        return "login";
    }

    @RequestMapping(value = "/inscription", method = RequestMethod.GET)
    public String inscription() {
        return "inscription";
    }

    @RequestMapping(value = "/inscription", method = RequestMethod.POST)
    public String signup(@RequestParam(value = "mail", required = false) String email,
                         @RequestParam(value = "password", required = false) String password,
                         @RequestParam(value = "role", required = false) String role,
                         @RequestParam(value = "country", required = false) String country,
                         @RequestParam(value = "fullname", required = false) String fullname) {

        UserInfo userInfo = new UserInfo();

        userInfo.setUserName(email);
        userInfo.setCountry(country);
        userInfo.setRole(role);
        userInfo.setFullName(fullname);
        userInfo.setPassword(password);
        userInfo.setEnabled((short)1);

        service.saveUser(userInfo);

        return "redirect:/login";
    }

}
