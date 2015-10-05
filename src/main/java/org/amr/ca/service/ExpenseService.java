package org.amr.ca.service;

import java.util.List;

import org.amr.ca.domain.Expense;

public interface ExpenseService {

	public void add(Expense e);
	public List<Expense> getList();
	
}
