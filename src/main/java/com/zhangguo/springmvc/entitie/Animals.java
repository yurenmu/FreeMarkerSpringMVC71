package com.zhangguo.springmvc.entitie;

public class Animals {
	private int size;
	private double price;
	private String name;
	
	public Animals(int size, double price, String name) {
		super();
		this.size = size;
		this.price = price;
		this.name = name;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
