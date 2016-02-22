package com.alev.mycontacts.dao;

import com.alev.mycontacts.domain.Contact;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateOptimisticLockingFailureException;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(Contact contact) {
		try {
		sessionFactory.getCurrentSession().saveOrUpdate(contact);
		} catch (HibernateOptimisticLockingFailureException e) {
			System.out.println("Exception occurred");
		}
	}

	@SuppressWarnings("unchecked")
	public List<Contact> listContact() {

		return sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

	public void removeContact(Integer id) {
		Contact contact = (Contact) sessionFactory.getCurrentSession().load(Contact.class, id);
		if (contact!= null) {
			sessionFactory.getCurrentSession().delete(contact);
		}
	}
}
