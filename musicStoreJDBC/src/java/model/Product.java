/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.text.NumberFormat;

/**
 *
 * @author Owner
 */
public class Product implements Serializable{
    
    private Long productId;
    private String code;
    private String description;
    private double price;
    
    public Product(){}
    
    public void setId(Long productId){
        this.productId = productId;
    }
    
    public Long getId() {
        return productId;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public String getArtistName() {
        String artistName = 
                description.substring(0, description.indexOf(" - "));
        return artistName;
    }

    public String getAlbumName() {
        String albumName = 
                description.substring(description.indexOf(" - ") + 3);
        return albumName;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }

    public String getImageURL() {
        String imageURL = "/musicStore/images/" + code + "_cover.jpg";
        return imageURL;
    }

    public String getProductType() {
        return "Audio CD";
    }
    
}
