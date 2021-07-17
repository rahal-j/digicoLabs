package com.oderPalcement.digico.service;

import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.dto.UserDto;
import com.oderPalcement.digico.entity.User;

public interface UserService {


    ResponseDto addUser(UserDto userDto);


    User getUserFromUsernameAndPw(String username, String password);
}
