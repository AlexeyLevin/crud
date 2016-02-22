package com.alev.mycontacts.web;

import com.alev.mycontacts.domain.Contact;
import com.alev.mycontacts.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.*;

@Controller
public class ContactController {
	private static final int ROWS_ON_PAGE = 10;
	private Integer currentPage = 1;
	private Integer beginIndex = ROWS_ON_PAGE - ROWS_ON_PAGE;
	private Integer endIndex = beginIndex + ROWS_ON_PAGE;
	private Contact searchForString = new Contact();
	{ searchForString.setName(""); }

	@Autowired
	private ContactService contactService;

	@RequestMapping("/index")
	public String listContacts(Map<String, Object> map) {
		List<Contact> contactList = contactService.listContact();

		//paging logic
		int contactListSize = contactList.size();
		if (currentPage > 1) {
			beginIndex = (currentPage * ROWS_ON_PAGE) - ROWS_ON_PAGE;
			endIndex = beginIndex + ROWS_ON_PAGE;
		} else {
			beginIndex = ROWS_ON_PAGE - ROWS_ON_PAGE;
			endIndex = beginIndex + ROWS_ON_PAGE;
		}
		if (endIndex > contactListSize) {
			endIndex = contactListSize;
		}

		List<Contact> currentContactList = contactList.subList(beginIndex, endIndex);

		//search logic
		if (!searchForString.getName().equals("")) {

			List<Contact> searchContact = new ArrayList<Contact>();
			for (Contact contact : contactList) {
				if (contact.getName().equals(searchForString.getName())) {
					searchContact.add(contact);
				}
			}
			contactListSize = searchContact.size();
			//check current page, if is > for new search result pages, then drop currentPage to 1
			if ((currentPage > (contactListSize / ROWS_ON_PAGE + (contactListSize % ROWS_ON_PAGE == 0 ? 0 : 1)))
					|| currentContactList.isEmpty()) {
				currentPage = 1;
				beginIndex = ROWS_ON_PAGE - ROWS_ON_PAGE;
				endIndex = beginIndex + ROWS_ON_PAGE;
			}
			if (endIndex > contactListSize) {
				endIndex = contactListSize;
			}
			currentContactList = searchContact.subList(beginIndex, endIndex);
		}

		map.put("searchForString", searchForString);

		map.put("contactListSize",  contactListSize);
		map.put("contact", new Contact());
		map.put("currentContactList", currentContactList);

			int[] pages = new int[]{1};
		 	if (contactListSize > ROWS_ON_PAGE) {
				pages = new int[contactListSize / ROWS_ON_PAGE + (contactListSize % ROWS_ON_PAGE == 0 ? 0 : 1)];
				for (int i = 0; i < pages.length; i++) {
					pages[i] = i + 1;
				}
			}
			if (pages.length == 0) {
				pages = new int[]{1};
			}
			map.put("pageItem", 0);
			map.put("pages", pages);
			map.put("pagesCount", pages.length);
			map.put("currentPage", currentPage);

		return "contact";
	}

	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}

	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId") Integer contactId) {
		contactService.removeContact(contactId);
		return "redirect:/";
	}

	@RequestMapping("/page/{currentPage}")
	public String paging(@PathVariable("currentPage") Integer currentPage) {
		this.currentPage = currentPage;
		return "redirect:/index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact") Contact contact, BindingResult result) {
		contactService.addContact(contact);
		return "redirect:/index";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("searchForString") Contact searchForString) {
		this.searchForString.setName(searchForString.getName());
		return "redirect:/";
	}
}
