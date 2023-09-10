package com.example.DataDao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.Data.UserLogin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserLoginDao extends BaseMapper<UserLogin> {
}
