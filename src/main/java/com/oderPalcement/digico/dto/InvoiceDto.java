package com.oderPalcement.digico.dto;

import java.util.List;

public class InvoiceDto {

    private List<String> names;
    private List<String> unitPrices;
    private List<String> quantities;
    private List<String> subTotals;
    private Integer memberId;
    private Integer discount;
    private Integer total;


    public InvoiceDto() {
    }

    public List<String> getNames() {
        return names;
    }

    public void setNames(List<String> names) {
        this.names = names;
    }

    public List<String> getUnitPrices() {
        return unitPrices;
    }

    public void setUnitPrices(List<String> unitPrices) {
        this.unitPrices = unitPrices;
    }

    public List<String> getQuantities() {
        return quantities;
    }

    public void setQuantities(List<String> quantities) {
        this.quantities = quantities;
    }

    public List<String> getSubTotals() {
        return subTotals;
    }

    public void setSubTotals(List<String> subTotals) {
        this.subTotals = subTotals;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
}
