package com.kinsolutions.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
	@Column(name="PurchaseOrderCopy")
   	private byte[] purchaseOrderCopy;
	
	@Column(name="ModeOfCharge")
	private String modeOfCharge;
	
	@Column(name="CTCharge")
	private BigDecimal ctcharge;
	
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
	
	@Column(name="ServiceType")
	private String serviceType;
	
	@Column(name="Address")
	private String addressData;
	
	@Column(name="ModalityCharge")
	private BigDecimal modalityCharge;

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

	public Integer getSiteCount() {
		return siteCount;
	}

	public void setSiteCount(Integer siteCount) {
		this.siteCount = siteCount;
	}

	public Integer getRadiologistCount() {
		return radiologistCount;
	}

	public void setRadiologistCount(Integer radiologistCount) {
		this.radiologistCount = radiologistCount;
	}

	public Integer getModalityCount() {
		return modalityCount;
	}

	public void setModalityCount(Integer modalityCount) {
		this.modalityCount = modalityCount;
	}

	public byte[] getPurchaseOrderCopy() {
		return purchaseOrderCopy;
	}

	public void setPurchaseOrderCopy(byte[] purchaseOrderCopy) {
		this.purchaseOrderCopy = purchaseOrderCopy;
	}

	public String getModeOfCharge() {
		return modeOfCharge;
	}

	public void setModeOfCharge(String modeOfCharge) {
		this.modeOfCharge = modeOfCharge;
	}

	public BigDecimal getCtcharge() {
		return ctcharge;
	}

	public void setCtcharge(BigDecimal ctcharge) {
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

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getAddressData() {
		return addressData;
	}

	public BigDecimal getModalityCharge() {
		return modalityCharge;
	}

	public void setAddressData(String addressData) {
		this.addressData = addressData;
	}

	public void setModalityCharge(BigDecimal modalityCharge) {
		this.modalityCharge = modalityCharge;
	}

 	 
	
	 
} 