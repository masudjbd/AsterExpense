package org.amr.ca.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Expense {

	@Id
	@GeneratedValue
	private int expenseId;

	private String name;
	private String description;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateposted;
	private double cost;

	@ManyToOne
	private Member member;

	private double for_ruzdi;
	private double for_masud;
	private double for_anwar;
	 

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateposted() {
		return dateposted;
	}

	public void setDateposted(Date dateposted) {
		this.dateposted = dateposted;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	 

	 
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	  
	 

	public double getFor_ruzdi() {
		return for_ruzdi;
	}

	public void setFor_ruzdi(double for_ruzdi) {
		this.for_ruzdi = for_ruzdi;
	}

	public double getFor_masud() {
		return for_masud;
	}

	public void setFor_masud(double for_masud) {
		this.for_masud = for_masud;
	}

	public double getFor_anwar() {
		return for_anwar;
	}

	public void setFor_anwar(double for_anwar) {
		this.for_anwar = for_anwar;
	}

	public int getExpenseId() {
		return expenseId;
	}

	public void setExpenseId(int expenseId) {
		this.expenseId = expenseId;
	}

	public Expense() {
		super();
	}

}
