package com.example.ServerDao;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.Data.UserLogin;
import com.example.DataDao.UserLoginDao;
import com.example.Server.ServerInte;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Server extends ServiceImpl<UserLoginDao, UserLogin> implements ServerInte {
@Autowired
    private UserLoginDao userLoginDao;
}
