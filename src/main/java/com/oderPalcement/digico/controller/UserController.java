package com.oderPalcement.digico.controller;

import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.dto.UserDto;
import com.oderPalcement.digico.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RequestMapping("user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;



    @GetMapping("/insertPage")
    public String getInsertPage(){

        return "user_form";
    }



    @PostMapping("/save")
    @ResponseBody
    public ResponseDto saveUser(@RequestBody UserDto userDto){
        return userService.addUser(userDto);

    }



}
