package me.raozk.chinese.dao;

import me.raozk.chinese.model.User;

/**
 * Created by rzk on 15-12-1.
 */
public interface UserDao extends BaseDao<User>{

    public User getUserByUsername(String username);

}
