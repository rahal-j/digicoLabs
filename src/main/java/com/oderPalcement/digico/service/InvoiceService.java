package com.oderPalcement.digico.service;

import com.oderPalcement.digico.dto.InvoiceDto;
import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.entity.Invoice;

import java.util.List;

public interface InvoiceService {


    ResponseDto saveInvoiceArray(InvoiceDto invoiceDto);

    List<Invoice> fetchInvoiceFromMemberId(Integer memberId);
}
