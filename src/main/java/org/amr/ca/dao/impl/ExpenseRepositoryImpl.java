package org.amr.ca.dao.impl;

import java.util.List;

import org.amr.ca.dao.ExpenseRepository;
import org.amr.ca.domain.Expense;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ExpenseRepositoryImpl implements ExpenseRepository {

	@Autowired
	private SessionFactory sf;

	@Override
	public void add(Expense e) {
		sf.getCurrentSession().save(e);
	}

 	@SuppressWarnings("unchecked")
	@Override
	public List<Expense> getList() {
		return (List<Expense>) sf
				.getCurrentSession()
				.createQuery(
						" SELECT e from Expense e join e.member m")
				.list();
	}

}
