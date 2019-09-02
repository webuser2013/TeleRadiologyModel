package com.kinsolutions.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users implements Serializable { 
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="UserId")
    private long userId;  
	
	@Column(name="Name")
    private String name;
	
	@Column(name="EmailId")	
	private String emailId;
	
	@Column(name="Password")	
	private String password;
	
	@Column(name="MobileNumber")	
	private String mobileNumber;
	
	@Column(name="AlternativeMobileNumber")	
	private String alternativeMobileNumber;
	
	@Column(name="Address")	
	private String address;
	
	@Column(name="Pincode")	
	private String pincode;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="RoleId")
	private Roles roles;

	@Column(name="PrivilegeCd")
	private int privilegeCd;
	
	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAlternativeMobileNumber() {
		return alternativeMobileNumber;
	}

	public void setAlternativeMobileNumber(String alternativeMobileNumber) {
		this.alternativeMobileNumber = alternativeMobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public Roles getRoles() {
		return roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getPrivilegeCd() {
		return privilegeCd;
	}

	public void setPrivilegeCd(int privilegeCd) {
		this.privilegeCd = privilegeCd;
	}
	
	 
} 