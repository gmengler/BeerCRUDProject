package com.tostring.beer;

public class Beer {
	private static int nextId = 1;
	private String id;
	private String name;
	private String brewery;
	private String city;
	private String state;
	private String abv;
	private String picURL;
	
	public Beer() {
		this.id = "" + nextId++;
	}
	
//	public Beer(String id, String beer, String brewery, String city, String state, String abv, String picURL) {
	public Beer(String beer, String brewery, String city, String state, String abv, String picURL) {
		this();
//		this.id = id;
		this.name = beer;
		this.brewery = brewery;
		this.city = city;
		this.state = state;
		this.abv = abv;
		this.picURL = picURL;
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
	

	public String getPicURL() {
		return picURL;
	}

	public void setPicURL(String picURL) {
		this.picURL = picURL;
	}

	@Override
	public String toString() {
		return "Beer [id=" + id + ", beer=" + name + ", brewery=" + brewery + ", city=" + city + ", state=" + state
				+ ", abv=" + abv + "picURL=" + picURL + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Beer other = (Beer) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}


}
