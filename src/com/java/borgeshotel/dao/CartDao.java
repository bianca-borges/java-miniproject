package com.java.borgeshotel.dao;

import java.util.ArrayList;
import java.util.List;

import com.java.borgeshotel.model.MenuItem;

public interface CartDao {
public void addCartItem(long userId,long menuItemId);
public ArrayList<MenuItem> getAllCartItems(long userId) throws CartEmptyException;
public void removeCartItem(long userId,long menuItem);
}
