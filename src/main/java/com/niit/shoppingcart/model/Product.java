package com.niit.shoppingcart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Product")
@Component
public class Product {
	
@Id
@GeneratedValue
 private int id;
private String name;
private String description;
private double  price;
private int categoryid;
private int supplierid;

@ManyToOne
@JoinColumn(name="categoryid",updatable=false,insertable=false,nullable=false)
private Category category;
@ManyToOne
@JoinColumn(name="supplierid",updatable=false,insertable=false,nullable=false)
private Supplier supplier;

public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}
public int getCategory_id() {
	return categoryid;
}
public void setCategoryid(int categoryid) {
	this.categoryid = categoryid;
}
public int getSupplierid() {
	return supplierid;
}
public void setSupplier_id(int supplierid) {
	this.supplierid = supplierid;
}
public int getId() {
	return id;
}
public String getName() {
	return name;
}
public String getDescription() {
	return description;
}
public double getPrice() {
	return price;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}
public void setDescription(String description) {
	this.description = description;
}
public void setPrice(double price) {
	this.price = price;
} 
}