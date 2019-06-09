package com.service;

import com.pojo.User;

import java.util.List;

public interface UserService {
    /**
     * 用户注册
     * @param user
     * @return
     */
    int addUser(User user);

    /**
     * 删除用户
     * @param id
     * @return
     */
    int deleteUserById(int id);

    /**
     * 更新用户
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     *查询一个用户
     * @param id
     * @return
     */
    User queryById(int id);

    /**
     * 查询所有用户
     * @return
     */
    List<User> queryAllUser();


}
