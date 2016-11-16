package com.accenture.farm.data;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.accenture.farm.model.Farm;


public class FarmDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public Farm getFarm(Long id) {
		Session session = sessionFactory.openSession();
		Farm farm = (Farm) session.get(Farm.class, id);
		session.close();
		return farm;
	}

	public List<Farm> farmList()
	{
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Farm> farmList = session.createQuery("FROM Farm").list();
		session.close();
		return farmList;
	}
	
	
}
