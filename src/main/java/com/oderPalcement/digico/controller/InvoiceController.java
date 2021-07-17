package com.oderPalcement.digico.controller;


import com.oderPalcement.digico.dto.InvoiceDto;
import com.oderPalcement.digico.dto.ResponseDto;
import com.oderPalcement.digico.service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RequestMapping("invoice")
@Controller
public class InvoiceController {

    @Autowired
    private InvoiceService invoiceService;



    @GetMapping("/insertPage")
    public String getInsertPage(){

        return "invoice_form";
    }


    @PostMapping("/save")
    @ResponseBody
    public ResponseDto saveInvoice(@RequestBody InvoiceDto invoiceDto){
        return invoiceService.saveInvoiceArray(invoiceDto);}



    @RequestMapping("/")
    public String addInvoice(@RequestParam Integer id, Model model){
        model.addAttribute("invoice",invoiceService.fetchInvoiceFromMemberId(id));
        return "invoice_list";
    }


}
