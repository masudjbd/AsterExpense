package org.amr.ca;

import javax.validation.Valid;

import org.amr.ca.domain.Expense;
import org.amr.ca.service.ExpenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/expense")
public class ExpenseController {

	@Autowired
	private ExpenseService es;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addExpense(@ModelAttribute("expense") Expense expense) {

		return "add_expense";

	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listExpense(Model model) {
		model.addAttribute("expenses", es.getList());
 		return "list_expense";

	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String postExpense(
			@ModelAttribute("expense") @Valid Expense expense,
			BindingResult br, RedirectAttributes ra) {

		if (br.hasErrors()) {
			return "add_expense";
		} else {
			ra.addFlashAttribute("message", "Successfully added expense");
			es.add(expense);
			return "redirect:/expense/list";
		}
	}
}
