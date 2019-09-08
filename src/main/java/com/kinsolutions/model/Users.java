package com.kinsolutions.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users implements Serializable { 
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="UserId", unique=true, insertable=false)
	@SequenceGenerator(name="usPkId", sequenceName="\"Users_userId_seq\"")
	@GeneratedValue(generator="usPkId", strategy= GenerationType.AUTO)
    private Integer userId;  
	
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
	
	@Column(name="CreatedDateTime")
	private Date createdDate;
	
	@Column(name="ModifiedDateTime")
	private Date modifiedDate;
	
	@Column(name="CreatedIpAddress")
	private String createdIpAddress;
	
	@Column(name="ModifiedIpAddress")
	private String modifiedIpAddress;
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
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

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public String getCreatedIpAddress() {
		return createdIpAddress;
	}

	public void setCreatedIpAddress(String createdIpAddress) {
		this.createdIpAddress = createdIpAddress;
	}

	public String getModifiedIpAddress() {
		return modifiedIpAddress;
	}

	public void setModifiedIpAddress(String modifiedIpAddress) {
		this.modifiedIpAddress = modifiedIpAddress;
	}
	
	 
} 