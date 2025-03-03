package com.booksotre.service.impl;

import com.booksotre.DAO.ICartDAO;
import com.booksotre.DAO.ICartItemDAO;
import com.booksotre.DAO.impl.CartDAO;
import com.booksotre.DAO.impl.CartItemDAO;
import com.booksotre.model.CartItemModel;
import com.booksotre.model.CartModel;
import com.booksotre.service.ICartService;

import java.util.List;

public class CartService implements ICartService {

    private final ICartDAO cartDAO = new CartDAO();

    private final ICartItemDAO cartItemDAO = new CartItemDAO();

    @Override
    public CartModel findByCustomerId(int customerId) {
        return cartDAO.findCartByCustomerId(customerId);
    }

    @Override
    public List<CartItemModel> findByCartId(int cartId) {
        return cartItemDAO.findByCartId(cartId);
    }

    @Override
    public void createCart(int customerId) {
        cartDAO.createCart(customerId);
    }

    @Override
    public void addCartItem(CartItemModel cartItemModel) {
        cartItemDAO.saveCartItem(cartItemModel);
    }

    @Override
    public void deleteCartItem(int cartId) {
        cartItemDAO.deleteByCartId(cartId);
    }

    @Override
    public void resetCart(int id) {
        cartDAO.resetCart(id);
    }

    @Override
    public void updateCart(int quantity, double price, int id) {
        cartDAO.updateCart(quantity, price, id);
    }
}
