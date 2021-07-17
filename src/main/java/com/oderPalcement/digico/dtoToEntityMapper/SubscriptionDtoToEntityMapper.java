package com.oderPalcement.digico.dtoToEntityMapper;

import com.oderPalcement.digico.dto.SubscriptionDto;
import com.oderPalcement.digico.entity.Subscription;

public class SubscriptionDtoToEntityMapper {

    public static Subscription getSubscriptionEntity(SubscriptionDto subscriptionDto, Subscription subscription){

        subscription.setId(subscription.getId() != null? subscription.getId(): subscriptionDto.getId());
        subscription.setName(subscriptionDto.getName());
        subscription.setStatus(subscriptionDto.getStatus());
        return subscription;


    }

}
