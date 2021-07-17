package com.oderPalcement.digico.repository;

import com.oderPalcement.digico.entity.Subscription;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubscriptionDao extends JpaRepository<Subscription,Integer> {
}
