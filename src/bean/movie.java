package bean;

public class movie {
	Integer Mid;
	private String description;
	private String Director;
	private double rank;
	private String country;
	private String download;
	private String name;
	private String type;
	public double getRank() {
		return rank;
	}

	public void setRank(double rank) {
		this.rank = rank;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	

	public String getType() {
		return type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDirector() {
		return Director;
	}

	public void setDirector(String director) {
		Director = director;
	}

	

	public void setType(String type) {
		this.type = type;
	}

	public Integer getMid() {
		return Mid;
	}

	public void setMid(Integer mid) {
		Mid = mid;
	}

	

	public movie() {
	};

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

}
