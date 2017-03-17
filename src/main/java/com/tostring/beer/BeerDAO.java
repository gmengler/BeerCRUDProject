package com.tostring.beer;

import java.util.List;


public interface BeerDAO {
	public void addBeer(Beer beer);
	public void removeBeer(String name);
	public void modifyBeer(String name, String brewery, String city, String state, String abv);
	public Beer getBeer(Beer beer);
	public Beer getBeerByName(String name);
	public List<Beer> getBeerList();
	// maybe use below
	public Beer nextBeer(String id);
	public Beer previousBeer(String id);
}
