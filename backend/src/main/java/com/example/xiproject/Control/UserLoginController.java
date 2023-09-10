package com.example.xiproject.Control;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.xiproject.Control.utils.R;
import com.example.xiproject.Data.UserLogin;
import com.example.xiproject.Server.ServerInte;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.awt.print.Book;
import java.sql.Wrapper;

@RestController
@RequestMapping("/user")
public class UserLoginController {
    @Autowired
    private ServerInte serverInte;

    @GetMapping("{id}")
    public UserLogin getById(@PathVariable Integer id){
        return serverInte.getById(id);
    }

    @GetMapping("{user}/{password}")
    public Boolean Login(@PathVariable String user,@PathVariable String password)
    {

       UserLogin user1=serverInte.getOne(new QueryWrapper<UserLogin>().eq("user",user));
       if(user1!=null&&password.equals(user1.getPassword()))
            return true;
       else
           return false;
    }
}
