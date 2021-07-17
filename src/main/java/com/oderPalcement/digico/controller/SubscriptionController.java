package com.oderPalcement.digico.controller;

import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.dto.SubscriptionDto;
import com.oderPalcement.digico.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequestMapping("subscription")
@Controller
public class SubscriptionController {


    @Autowired
 private SubscriptionService subscriptionService;



    @GetMapping("/insertPage")
    public String getInsertPage(){return "subscription_form";}


    @PostMapping("/save")
    @ResponseBody
    public ResponseDto saveSubscription(@RequestBody SubscriptionDto subscriptionDto){
        return subscriptionService.addSubscription(subscriptionDto);
    }




}
