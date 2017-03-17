package com.tostring.services;

import java.util.List;

import com.tostring.beer.Beer;

public interface BeerService {
	public void addBeer(Beer beer);
	public void removeBeer(String name);
	public Beer modifyBeer(Beer beer);
	public Beer getBeer(Beer beer);
	public Beer getBeerByName(String name);
	public List<Beer> getBeerList();
	// maybe use below
	public Beer nextBeer(String id);
	public Beer previousBeer(String id);
	
}
