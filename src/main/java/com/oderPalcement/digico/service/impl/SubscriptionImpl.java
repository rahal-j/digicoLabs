package com.oderPalcement.digico.service.impl;

import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.dto.SubscriptionDto;
import com.oderPalcement.digico.dtoToEntityMapper.SubscriptionDtoToEntityMapper;
import com.oderPalcement.digico.entity.Subscription;
import com.oderPalcement.digico.enums.ResponseEnum;
import com.oderPalcement.digico.repository.SubscriptionDao;
import com.oderPalcement.digico.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubscriptionImpl  implements SubscriptionService {

    @Autowired
    private SubscriptionDao subscriptionDao;



    @Override
    public ResponseDto addSubscription(SubscriptionDto subscriptionDto){

        ResponseDto responseDto = new ResponseDto(ResponseEnum.FAIL.getCode() , "Transaction Fail");

        try{
            Subscription subscription = SubscriptionDtoToEntityMapper.getSubscriptionEntity(subscriptionDto, new Subscription());
            subscriptionDao.save(subscription);
            responseDto.setCode(ResponseEnum.SUCCESS.getCode());
            responseDto.setMessage("Subscription Save Successful");
            return responseDto;
        }catch (Exception e){

            return responseDto;

        }
    }


}
