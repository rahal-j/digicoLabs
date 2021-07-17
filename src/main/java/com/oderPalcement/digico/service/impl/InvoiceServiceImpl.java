package com.oderPalcement.digico.service.impl;


import com.oderPalcement.digico.dto.InvoiceDto;
import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.entity.Invoice;
import com.oderPalcement.digico.enums.ResponseEnum;
import com.oderPalcement.digico.repository.InvoiceDao;
import com.oderPalcement.digico.repository.UserDao;
import com.oderPalcement.digico.service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class InvoiceServiceImpl implements InvoiceService {

    @Autowired
    private InvoiceDao invoiceDao;

    @Autowired
    private UserDao userDao;


   /* @Override
    public ResponseDto addInvoice(InvoiceDto invoiceDto){

        ResponseDto responseDto =new ResponseDto(ResponseEnum.FAIL.getCode(),"Transaction Failed");



        Invoice invoice = InvoiceDtoToEntityMapper.getInvoiceEntity(invoiceDto, new Invoice());
        invoiceDao.save(invoice);
        responseDto.setCode(ResponseEnum.SUCCESS.getCode());
        responseDto.setMessage("User Save successful");

        return responseDto;




    }*/

    @Override
    public ResponseDto saveInvoiceArray(InvoiceDto invoiceDto){
        ResponseDto responseDto = new ResponseDto(ResponseEnum.FAIL.getCode());
        List<Invoice> invoices = new ArrayList<>();
        try {
            int min = 100;
            int max = 10000;
            String invoiceId = "INV_";
            int b = (int)(Math.random()*(max-min+1)+min);
            invoiceId = invoiceId+b;

            for (int i = 0; i < invoiceDto.getNames().size(); i++) {
                if(invoiceDto.getQuantities().get(i) != null && !invoiceDto.getQuantities().get(i).isEmpty()){


                    Invoice invoice = new Invoice();

                    invoice.setName(String.valueOf(invoiceDto.getNames().get(i)));
                    invoice.setQuantity(Integer.parseInt(invoiceDto.getQuantities().get(i)));
                    invoice.setSubTotal(Integer.parseInt(invoiceDto.getSubTotals().get(i)));
                    invoice.setUnitPrice(String.valueOf(invoiceDto.getUnitPrices()));
                    invoice.setMemberId(invoiceDto.getMemberId());
                    invoice.setInvoiceId(invoiceId);

                    invoice.setTotal(invoiceDto.getTotal());


                    invoiceDao.save(invoice);
                }
            }











/*


            for (int i = 0; i < invoiceDto.getNames().size(); i++) {


                Invoice invoice = new Invoice();

                invoice.setName(String.valueOf(invoiceDto.getNames()));
                invoice.setQuantity(Integer.parseInt(invoiceDto.getQuantities().get(i)));
                invoice.setSubTotal(Integer.parseInt(invoiceDto.getSubTotals().get(i)));
                invoice.setUnitPrice(String.valueOf(invoiceDto.getUnitPrices()));
                invoice.setMemberId(invoiceDto.getMemberId());
                invoice.setInvoiceId(invoiceId);

                invoice.setTotal(invoiceDto.getTotal());


                invoiceDao.save(invoice);



            }*/



            responseDto.setCode(ResponseEnum.SUCCESS.getCode());
            responseDto.setMessage("Invoice Added");






        }catch (Exception e){

            return responseDto;
        }

        return responseDto;

    }


    @Override
    public List<Invoice> fetchInvoiceFromMemberId(Integer memberId){

        List<Invoice> invoices = invoiceDao.findByMemberId(memberId);

        return invoices;


    }









}
