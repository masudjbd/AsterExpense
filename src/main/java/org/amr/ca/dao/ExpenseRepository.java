package org.amr.ca.dao;

import java.util.List;

import org.amr.ca.domain.Expense;

public interface ExpenseRepository {

	public void add(Expense e);
	public List<Expense> getList();
}
