package com.jsp.ojpms.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.jsp.ojpms.entity.Job;
import com.jsp.ojpms.util.JPAUtil;

public class JobDao {
	
	public static void saveJob(Job job) {
		EntityManager em = JPAUtil.getEm();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(job);
		et.commit();
//		em.close();
		
	}
	
	public static List<Job>getAllJobs()
	{
		EntityManager em = JPAUtil.getEm();
		Query query = em.createQuery("FROM Job");
		List<Job>list = query.getResultList();
		
		return list;
		
		
		
	}
	
	
	public static List<Job> getAllJob(String search)
	{
		EntityManager em = JPAUtil.getEm();
		Query query = em.createQuery("FROM Job WHERE title LIKE?1 OR location LIKE ?1");
		query.setParameter(1, search);
		List list = query.getResultList();
		
		return list;
		
		
	}

}
