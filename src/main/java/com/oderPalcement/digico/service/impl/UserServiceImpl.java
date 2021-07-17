package com.oderPalcement.digico.service.impl;

import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.dto.UserDto;
import com.oderPalcement.digico.dtoToEntityMapper.UserDtoToEntityMapper;
import com.oderPalcement.digico.entity.User;
import com.oderPalcement.digico.enums.ResponseEnum;
import com.oderPalcement.digico.repository.UserDao;
import com.oderPalcement.digico.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    @Override
    public ResponseDto addUser(UserDto userDto){

        ResponseDto responseDto = new ResponseDto(ResponseEnum.FAIL.getCode(),"Transaction failed");
        try{


            User user = UserDtoToEntityMapper.getUserEntity(userDto,new User());
            userDao.save(user);
            responseDto.setCode(ResponseEnum.SUCCESS.getCode());
            responseDto.setMessage("User Save successful");

            return responseDto;

        }catch(Exception e){
            return responseDto;
        }

    }


    @Override
    public User getUserFromUsernameAndPw(String username, String password){

        User user = userDao.findByUsernameAndPassword(username,password);
        return user;


    }










}
