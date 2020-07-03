package model;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import control.Treinador;

public class MTreinador {
	
	public boolean cadastrar(Treinador t) {
		Session session;
		try (SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory()) {
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(t);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (HibernateException e) {
			System.out.println("Erro: " + e.toString());
			return false;
		}
	}
}
