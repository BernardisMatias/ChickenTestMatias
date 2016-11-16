package com.accenture.farm.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="farm")
public class Farm {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;
	
	@Column(name="farmName")
	private String farmName;

	public Farm(){};
	
	@OneToMany(mappedBy="farmId", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List <Chicken> chickenList = new ArrayList<Chicken>();
	
	public List<Chicken> getChickenList() {
		return chickenList;
	}

	public void setChickenList(List<Chicken> chickenList) {
		this.chickenList = chickenList;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFarmName() {
		return farmName;
	}

	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}
	
}
