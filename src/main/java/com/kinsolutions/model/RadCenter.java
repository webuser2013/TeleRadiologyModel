package com.kinsolutions.model;

import java.io.Serializable;
import java.math.BigDecimal;
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
	@Column(name="RadCenterId", unique=true, insertable=false)
	@SequenceGenerator(name="rcPkId", sequenceName="\"RadCenter_RadCenterId_seq\"")
	@GeneratedValue(generator="rcPkId", strategy= GenerationType.AUTO)
    private Integer radCenterId;  
	
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
	private Integer siteCount;
	
	@Column(name="RadiologistCount")
	private Integer radiologistCount;
	
	@Column(name="ModalityCount")
	private Integer modalityCount;
	
	/*@Column(name="PurchaseOrderCopy")
	@Type(type="org.hibernate.type.PrimitiveByteArrayBlobType") 
  	private byte[] purchaseOrderCopy;*/
	
	@Column(name="ModeOfCharge")
	private String modeOfCharge;
	
	@Column(name="CTCharge")
	private Integer ctcharge;
	
	@Column(name="MRICharge")
	private BigDecimal mriCharge;
	
	@Column(name="XRayCrCharge")
	private BigDecimal xRayCrCharge;
	
	@Column(name="MammogramCharge")
	private BigDecimal mammogramCharge;
	
	@Column(name="ServerRam")
	private String serverRam;
	
	@Column(name="ServerCore")
	private String serverCoreCount;
	
	@Column(name="ServerStorage")
	private String serverStorage;
	
	@Column(name="ServerMonthlyCharges")
	private BigDecimal serverMonthlyCharges;
	
	@Column(name="CreatedDateTime")
	private Date createdDate;
	
	@Column(name="ModifiedDateTime")
	private Date modifiedDate;
	
 	@Column(name="CreatedIpAddress")
	private String createdIpAddress;
	
	@Column(name="ModifiedIpAddress")
	private String modifiedIpAddress;
	
	@Column(name="FileName")
    private String fileName;
	
	@Column(name="FilePath")
    private String filePath;

	public Integer getRadCenterId() {
		return radCenterId;
	}

	public void setRadCenterId(Integer radCenterId) {
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

	/*public byte[] getPurchaseOrderCopy() {
		return purchaseOrderCopy;
	}

	public void setPurchaseOrderCopy(byte[] purchaseOrderCopy) {
		this.purchaseOrderCopy = purchaseOrderCopy;
	}*/

	public String getModeOfCharge() {
		return modeOfCharge;
	}

	public void setModeOfCharge(String modeOfCharge) {
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

	public BigDecimal getMammogramCharge() {
		return mammogramCharge;
	}

	public void setMammogramCharge(BigDecimal mammogramCharge) {
		this.mammogramCharge = mammogramCharge;
	}

	public String getServerRam() {
		return serverRam;
	}

	public void setServerRam(String serverRam) {
		this.serverRam = serverRam;
	}

	public String getServerCoreCount() {
		return serverCoreCount;
	}

	public void setServerCoreCount(String serverCoreCount) {
		this.serverCoreCount = serverCoreCount;
	}

	public String getServerStorage() {
		return serverStorage;
	}

	public void setServerStorage(String serverStorage) {
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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

 	 
	
	 
} 