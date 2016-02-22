package com.alev.mycontacts.dao;

import com.alev.mycontacts.domain.Contact;

import java.util.List;

public interface ContactDAO {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);

}
