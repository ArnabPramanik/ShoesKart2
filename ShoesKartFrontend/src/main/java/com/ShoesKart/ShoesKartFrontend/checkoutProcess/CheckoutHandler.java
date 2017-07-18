package com.ShoesKart.ShoesKartFrontend.checkoutProcess;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ShoesKart.ShoesKartBackend.Dao.CartDao;
import com.ShoesKart.ShoesKartBackend.model.Cart;

@Component("checkoutHandler")
public class CheckoutHandler {
	@Autowired
	CartDao cartDao;
	@Autowired
	HttpServletRequest request;
	public Checkout initialize(){
		Checkout checkout = new Checkout();
		Principal p = request.getUserPrincipal();
		//username = (String) session.getAttribute("username");
		checkout.setCartList(cartDao.getAll(p.getName()));
		
		return checkout;
		
	}
	public void removeCart(){
		
		Principal p = request.getUserPrincipal();
		for(Cart cartitem : cartDao.getAll(p.getName())){
			cartitem.setStatus("Y");
			cartDao.insertUpdate(cartitem);
			
		}
		
	}


}
