package com.tostring.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tostring.beer.Beer;
import com.tostring.beer.BeerDAO;


@Service
public class BeerServiceImpl implements BeerService {
	private BeerDAO beerDAO;
	
	public void setBeerDAO(BeerDAO beerDao) {
		this.beerDAO = beerDao;
	}


	@Override
	public void addBeer(Beer beer) {
		beerDAO.addBeer(beer);
	}

	@Override
	public void removeBeer(Beer beer) {
		beerDAO.removeBeer(beer);
	}

	@Override
	public List<Beer> getBeerList() {
		return beerDAO.getBeerList();
	}

	@Override
	public Beer nextBeer(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beer previousBeer(String id) {
		// TODO Auto-generated method stub
		return null;
	}


}
