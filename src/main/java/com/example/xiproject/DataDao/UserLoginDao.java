package com.example.xiproject.DataDao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.xiproject.Data.UserLogin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserLoginDao extends BaseMapper<UserLogin> {
}
