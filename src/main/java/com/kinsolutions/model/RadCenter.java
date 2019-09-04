package com.kinsolutions.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Time;
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
@Table(name="RadCenter")
public class RadCenter implements Serializable { 
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="RadCenterId")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "RadCenterSeq")
    @SequenceGenerator(name = "RadCenterSeq", sequenceName = "RadCenterSequence")
    private long radCenterId;  
	
	@Column(name="RadCenterName")
    private String radCenterName;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="UserId")
	private Users users;
 
	@Column(name="PrivilegeCd")
	private int privilegeCd;
	
	@Column(name="RadCenterDate")
	private Date radCenterDate;
	
	@Column(name="SecurityDeposit")
	private BigDecimal securityDeposit;
	
	@Column(name="DeploymentFee")
	private BigDecimal deploymentFee;
	
	@Column(name="SiteCount")
	private int siteCount;
	
	@Column(name="RadiologistCount")
	private int radiologistCount;
	
	@Column(name="ModalityCount")
	private int modalityCount;
	
	@Column(name="PurchaseOrderCopy")
	private byte[] purchaseOrderCopy;
	
	@Column(name="ModeOfCharge")
	private char modeOfCharge;
	
	@Column(name="CTCharge")
	private int ctcharge;
	
	@Column(name="MRICharge")
	private BigDecimal mriCharge;
	
	@Column(name="XRayCrCharge")
	private BigDecimal xRayCrCharge;
	
	@Column(name="Mammogramcharge")
	private BigDecimal mammogramcharge;
	
	@Column(name="ServerRam")
	private int serverRam;
	
	@Column(name="ServerCoreCount")
	private int serverCoreCount;
	
	@Column(name="ServerStorage")
	private int serverStorage;
	
	@Column(name="ServerMonthlyCharges")
	private BigDecimal serverMonthlyCharges;
	
	@Column(name="CreatedDate")
	private Date createdDate;
	
	@Column(name="CreatedTime")
	private Time createdTime;
	
	@Column(name="ModifiedDate")
	private Date modifiedDate;
	
	@Column(name="ModifiedTime")
	private Time modifiedTime;
	
	@Column(name="CreatedIpAddress")
	private String createdIpAddress;
	
	@Column(name="ModifiedIpAddress")
	private String modifiedIpAddress;

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

	public Date getRadCenterDate() {
		return radCenterDate;
	}

	public void setRadCenterDate(Date radCenterDate) {
		this.radCenterDate = radCenterDate;
	}

	public BigDecimal getSecurityDeposit() {
		return securityDeposit;
	}

	public void setSecurityDeposit(BigDecimal securityDeposit) {
		this.securityDeposit = securityDeposit;
	}

	public BigDecimal getDeploymentFee() {
		return deploymentFee;
	}

	public void setDeploymentFee(BigDecimal deploymentFee) {
		this.deploymentFee = deploymentFee;
	}

	public int getSiteCount() {
		return siteCount;
	}

	public void setSiteCount(int siteCount) {
		this.siteCount = siteCount;
	}

	public int getRadiologistCount() {
		return radiologistCount;
	}

	public void setRadiologistCount(int radiologistCount) {
		this.radiologistCount = radiologistCount;
	}

	public int getModalityCount() {
		return modalityCount;
	}

	public void setModalityCount(int modalityCount) {
		this.modalityCount = modalityCount;
	}

	public byte[] getPurchaseOrderCopy() {
		return purchaseOrderCopy;
	}

	public void setPurchaseOrderCopy(byte[] purchaseOrderCopy) {
		this.purchaseOrderCopy = purchaseOrderCopy;
	}

	public char getModeOfCharge() {
		return modeOfCharge;
	}

	public void setModeOfCharge(char modeOfCharge) {
		this.modeOfCharge = modeOfCharge;
	}

	public int getCtcharge() {
		return ctcharge;
	}

	public void setCtcharge(int ctcharge) {
		this.ctcharge = ctcharge;
	}

	public BigDecimal getMriCharge() {
		return mriCharge;
	}

	public void setMriCharge(BigDecimal mriCharge) {
		this.mriCharge = mriCharge;
	}

	public BigDecimal getxRayCrCharge() {
		return xRayCrCharge;
	}

	public void setxRayCrCharge(BigDecimal xRayCrCharge) {
		this.xRayCrCharge = xRayCrCharge;
	}

	public BigDecimal getMammogramcharge() {
		return mammogramcharge;
	}

	public void setMammogramcharge(BigDecimal mammogramcharge) {
		this.mammogramcharge = mammogramcharge;
	}

	public int getServerRam() {
		return serverRam;
	}

	public void setServerRam(int serverRam) {
		this.serverRam = serverRam;
	}

	public int getServerCoreCount() {
		return serverCoreCount;
	}

	public void setServerCoreCount(int serverCoreCount) {
		this.serverCoreCount = serverCoreCount;
	}

	public int getServerStorage() {
		return serverStorage;
	}

	public void setServerStorage(int serverStorage) {
		this.serverStorage = serverStorage;
	}

	public BigDecimal getServerMonthlyCharges() {
		return serverMonthlyCharges;
	}

	public void setServerMonthlyCharges(BigDecimal serverMonthlyCharges) {
		this.serverMonthlyCharges = serverMonthlyCharges;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Time getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Time createdTime) {
		this.createdTime = createdTime;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public Time getModifiedTime() {
		return modifiedTime;
	}

	public void setModifiedTime(Time modifiedTime) {
		this.modifiedTime = modifiedTime;
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