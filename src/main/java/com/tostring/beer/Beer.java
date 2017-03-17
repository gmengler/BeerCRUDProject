package com.tostring.beer;

public class Beer {
	private String id;
	private String name;
	private String brewery;
	private String city;
	private String state;
	private String abv;
	
	public Beer() {
	}
	
	public Beer(String id, String beer, String brewery, String city, String state, String abv) {
		super();
		this.id = id;
		this.name = beer;
		this.brewery = brewery;
		this.city = city;
		this.state = state;
		this.abv = abv;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String beer) {
		this.name = beer;
	}

	public String getBrewery() {
		return brewery;
	}

	public void setBrewery(String brewery) {
		this.brewery = brewery;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAbv() {
		return abv;
	}

	public void setAbv(String abv) {
		this.abv = abv;
	}

	@Override
	public String toString() {
		return "Beer [id=" + id + ", beer=" + name + ", brewery=" + brewery + ", city=" + city + ", state=" + state
				+ ", abv=" + abv + "]";
	}
	

}
