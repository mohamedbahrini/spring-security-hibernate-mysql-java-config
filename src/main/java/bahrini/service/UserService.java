package bahrini.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import bahrini.dao.UserDAO;
import bahrini.entity.UserInfo;

@Service
public class UserService implements IUserService {
    @Autowired
    private UserDAO userDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public UserInfo getDataByUserName(String userName) {
        return userDAO.getActiveUser(userName);
    }

    @Override
    public void saveUser(UserInfo userInfo) {
        userInfo.setPassword(passwordEncoder.encode(userInfo.getPassword()));
        userDAO.saveUserInfos(userInfo);
    }
}

