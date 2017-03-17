package com.tostring.beer;

import java.util.List;


public interface BeerDAO {
	public void addBeer(Beer beer);
	public void removeBeer(Beer beer);
	public List<Beer> getBeerList();
	// maybe use below
	public Beer nextBeer(String id);
	public Beer previousBeer(String id);
}
