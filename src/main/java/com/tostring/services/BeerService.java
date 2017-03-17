package com.tostring.services;

import java.util.List;

import com.tostring.beer.Beer;

public interface BeerService {
	public void addBeer(Beer beer);
	public void removeBeer(Beer beer);
	public List<Beer> getBeerList();
	// maybe use below
	public Beer nextBeer(String id);
	public Beer previousBeer(String id);
}
