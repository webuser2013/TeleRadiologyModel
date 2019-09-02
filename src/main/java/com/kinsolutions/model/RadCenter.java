package com.kinsolutions.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="RadCenter")
public class RadCenter implements Serializable { 
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="RadCenterId")
    private long radCenterId;  
	
	@Column(name="RadCenterName")
    private String radCenterName;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="UserId")
	private Users users;
 
	@Column(name="PrivilegeCd")
	private int privilegeCd;

	public long getRadCenterId() {
		return radCenterId;
	}

	public void setRadCenterId(long radCenterId) {
		this.radCenterId = radCenterId;
	}

	public String getRadCenterName() {
		return radCenterName;
	}

	public void setRadCenterName(String radCenterName) {
		this.radCenterName = radCenterName;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public int getPrivilegeCd() {
		return privilegeCd;
	}

	public void setPrivilegeCd(int privilegeCd) {
		this.privilegeCd = privilegeCd;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	 
	
	 
} 