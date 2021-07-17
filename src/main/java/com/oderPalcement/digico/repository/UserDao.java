package com.oderPalcement.digico.repository;

import com.oderPalcement.digico.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Integer> {

   User findByUsernameAndPassword(String username, String password );









}
