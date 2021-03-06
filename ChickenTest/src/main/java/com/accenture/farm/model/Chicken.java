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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="chicken")
public class Chicken {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;
	
	@Column(name="chickenName")
	private String chickenName;

	
	public String getChickenName() {
		return chickenName;
	}

	public void setChickenName(String chickenName) {
		this.chickenName = chickenName;
	}

	public Chicken(){}

	@ManyToOne
	@JoinColumn(name="farmId")
	private Farm farmId; 

	
	@OneToMany(mappedBy="chickenId", cascade=CascadeType.ALL , fetch=FetchType.EAGER)
	private List<Egg> eggList = new ArrayList<Egg>();

	
	public Farm getFarmId() {
		return farmId;
	}

	public void setFarmId(Farm farmId) {
		this.farmId = farmId;
	}
	
	
	public List<Egg> getEggList() {
		return eggList;
	}

	public void setEggList(List<Egg> eggList) {
		this.eggList = eggList;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

}
