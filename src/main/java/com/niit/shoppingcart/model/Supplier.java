package com.niit.shoppingcart.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Supplier")
@Component
public class Supplier {
	
@Id
@GeneratedValue
 private int id;
private String name;
private String address;

@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
private Set<Product> products;
public void setProducts(Set<Product> products) {
	this.products = products;
}
public Set<Product> getProducts() {
return products;
}
public int getId() {
	return id;
}
public String getName() {
	return name;
}
public String getAddress() {
	return address;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}
public void setAddress(String address) {
	this.address = address;
}

}