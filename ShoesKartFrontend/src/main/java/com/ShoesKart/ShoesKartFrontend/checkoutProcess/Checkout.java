package com.ShoesKart.ShoesKartFrontend.checkoutProcess;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.ShoesKart.ShoesKartBackend.model.Cart;

public class Checkout implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Cart> cartList;
	public Checkout(){
		cartList =new ArrayList<Cart>();
	}
	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}
}
