package com.ecommerce.online.ecom.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class hibernateUtil2 {

	private static SessionFactory factory;
	
	public static SessionFactory buildSessionFactory() {
		StandardServiceRegistry service=new StandardServiceRegistryBuilder()
				.configure("hibernate.annotation.cfg.xml").build();
		Metadata meta=new MetadataSources(service).getMetadataBuilder().build();
		//build session factory object
		factory= meta.getSessionFactoryBuilder().build();
		return factory;
	}
}
