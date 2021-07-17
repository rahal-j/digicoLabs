package com.oderPalcement.digico.dtoToEntityMapper;

import com.oderPalcement.digico.dto.UserDto;
import com.oderPalcement.digico.entity.User;

public class UserDtoToEntityMapper {

    public static User getUserEntity(UserDto userDto,User user){
        user.setUserId(user.getUserId() !=null? user.getUserId() : userDto.getUserId());
        user.setFirstName(userDto.getFirstName());
        user.setLastName(userDto.getLastName());
        user.setEmail(userDto.getEmail());

        user.setUsername(userDto.getUsername());
        user.setAddress(userDto.getAddress());
        user.setPassword(userDto.getPassword());
        user.setNic(userDto.getNic());
        user.setTelephone(userDto.getTelephone());
        user.setTerms(userDto.getTerms());

        return user;

    }






}
