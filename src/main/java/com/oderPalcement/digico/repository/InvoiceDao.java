package com.oderPalcement.digico.repository;

import com.oderPalcement.digico.entity.Invoice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InvoiceDao extends JpaRepository<Invoice, Integer> {

    List<Invoice> findByMemberId(Integer memberId);


}
