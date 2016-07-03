/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Owner
 */
public class Invoice implements Serializable {
    
    private User user;
    private List<LineItem> lineItems;
    private Date invoiceDate;
    private Long invoiceNumber;
    private boolean isProcessed;

    public Invoice() {
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setLineItems(List<LineItem> lineItems) {
        this.lineItems = lineItems;
    }

    public List<LineItem> getLineItems() {
        return lineItems;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public String getInvoiceDateDefaultFormat() {
        DateFormat dateFormat = DateFormat.getDateInstance();
        String invoiceDateFormatted = dateFormat.format(invoiceDate);
        return invoiceDateFormatted;
    }

    public void setInvoiceNumber(Long invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public Long getInvoiceNumber() {
        return invoiceNumber;
    }

    public boolean isIsProcessed() {
        return isProcessed;
    }

    public void setIsProcessed(boolean isProcessed) {
        this.isProcessed = isProcessed;
    }

    public double getInvoiceTotal() {
        double invoiceTotal = 0.0;
        for (LineItem item : lineItems) {
            invoiceTotal += item.getTotal();
        }
        return invoiceTotal;
    }

    public String getInvoiceTotalCurrencyFormat() {
        double total = this.getInvoiceTotal();
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        String formattedTotal = currency.format(total);
        return formattedTotal;
    }
    
}
