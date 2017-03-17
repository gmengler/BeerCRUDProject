package com.tostring.beer;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;


public class BeerDAOImpl implements BeerDAO {
	private static final String FILE_NAME = "/WEB-INF/beers.csv";
	private List<Beer> beers = new ArrayList<>();
	
	@Autowired
	private WebApplicationContext wac;
	
	@PostConstruct
	public void init() {
		try (InputStream is = wac.getServletContext().getResourceAsStream(FILE_NAME);
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				String id = tokens[0];
				String name = tokens[1];
				String brewery = tokens[2];
				String city = tokens[3];
				String state = tokens[4];
				String abv = tokens[5];
				System.out.println(abv);
				beers.add(new Beer(id, name, brewery, city, state, abv));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}


	@Override
	public List<Beer> getBeerList() {
		return beers;
	}

	@Override
	public void addBeer(Beer beer) {
		beers.add(beer);

	}

	@Override
	public void removeBeer(Beer beer) {
		beers.remove(beer);
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
