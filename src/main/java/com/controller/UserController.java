package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("allUser")
    public String allUsers(Model model) {
        List<User> list = userService.queryAllUser();
        model.addAttribute("list", list);
        return "allUser";
    }

    @RequestMapping("toAddUser")
    public String toAddUser() {
        return "addUser";
    }

    @RequestMapping("addUser")
    public String addUser(User user) {
        userService.addUser(user);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/delUser/{userId}")
    public String deleteUser(@PathVariable("userId") int id) {
        userService.deleteUserById(id);
        return "redirect:/user/allUser";
    }

    @RequestMapping("toUpdateUser")
    public String toUpdateUser(Model model, int id) {
        model.addAttribute("user", userService.queryById(id));
        return "updatePaper";
    }

    @RequestMapping("updateUser")
    public String updateUser(Model model, User user) {
        userService.updateUser(user);
        user = userService.queryById(user.getUser_id());
        model = model.addAttribute("user", user);
        return "redirect:/user/allUser";
    }


}
