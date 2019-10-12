package com.kinsolutions.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Sites")
public class Sites implements Serializable { 
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="SiteId", unique=true, insertable=false)
	@SequenceGenerator(name="usStId", sequenceName="\"Sites_SiteId_seq\"")
	@GeneratedValue(generator="usStId", strategy= GenerationType.AUTO)
    private Integer siteId;  
	
	@Column(name="SiteCode")
    private String siteCode;
	
	@Column(name="SiteName")	
	private String siteName;
	
	@Column(name="SiteAddress")	
	private String siteAddress;
	
	@Column(name="SitePincode")	
	private Integer sitePincode;
	
	@Column(name="MemberShipType")	
	private String memberShipType;
	
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

	public Integer getSiteId() {
		return siteId;
	}

	public void setSiteId(Integer siteId) {
		this.siteId = siteId;
	}

	public String getSiteCode() {
		return siteCode;
	}

	public void setSiteCode(String siteCode) {
		this.siteCode = siteCode;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getSiteAddress() {
		return siteAddress;
	}

	public void setSiteAddress(String siteAddress) {
		this.siteAddress = siteAddress;
	}

	public Integer getSitePincode() {
		return sitePincode;
	}

	public void setSitePincode(Integer sitePincode) {
		this.sitePincode = sitePincode;
	}

	public String getMemberShipType() {
		return memberShipType;
	}

	public void setMemberShipType(String memberShipType) {
		this.memberShipType = memberShipType;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

	 
} 