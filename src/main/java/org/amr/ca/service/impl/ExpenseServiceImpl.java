package org.amr.ca.service.impl;

import java.util.List;

import org.amr.ca.dao.ExpenseRepository;
import org.amr.ca.domain.Expense;
import org.amr.ca.service.ExpenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ExpenseServiceImpl implements ExpenseService {

	@Autowired
	private ExpenseRepository er;

	@Override
	public void add(Expense e) {
		er.add(e);
	}

	@Override
	public List<Expense> getList() {
		 return er.getList();
	}

}
