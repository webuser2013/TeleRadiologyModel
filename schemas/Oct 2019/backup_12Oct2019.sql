-- Database: TeleRad

DROP TABLE IF EXISTS public."RoleAccessPermission";
DROP TABLE IF EXISTS public."SubMenus";
DROP TABLE IF EXISTS public."Menus";
DROP TABLE IF EXISTS public."RadCenter";
DROP TABLE IF EXISTS public."Users";
DROP TABLE IF EXISTS public."Roles";
--DROP DATABASE "TeleRad";

CREATE DATABASE "TeleRad"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE "TeleRad"
    IS 'Local instance  of Saravanan';


-- Table: public."Roles"

-- DROP TABLE public."Roles";

CREATE TABLE public."Roles"
(
    "RoleId" integer NOT NULL,
    "RoleName" character(50) COLLATE pg_catalog."default" NOT NULL,
    "CreatedDateTime" timestamp NOT NULL,
    "ModifiedDateTime" timestamp NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "Roles_pkey" PRIMARY KEY ("RoleId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Roles"
    OWNER to postgres;	
	

-- Table: public."Menus"

-- DROP TABLE public."Menus";

CREATE TABLE public."Menus"
(
    "MenuId" integer NOT NULL,
    "MenuName" character(60) COLLATE pg_catalog."default" NOT NULL,
    "CreatedDateTime" timestamp NOT NULL,
    "ModifiedDateTime" timestamp NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "Menus_pkey" PRIMARY KEY ("MenuId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Menus"
    OWNER to postgres;	
	
	

-- Table: public."SubMenus"

-- DROP TABLE public."SubMenus";

CREATE TABLE public."SubMenus"
(
    "SubMenuId" integer NOT NULL,
    "SubMenuName" character(60) COLLATE pg_catalog."default" NOT NULL,
    "MenuId" bigint NOT NULL,
    "CreatedDateTime" timestamp NOT NULL,
    "ModifiedDateTime" timestamp NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "SubMenus_pkey" PRIMARY KEY ("SubMenuId"),
    CONSTRAINT "Menus" FOREIGN KEY ("MenuId")
        REFERENCES public."Menus" ("MenuId") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."SubMenus"
    OWNER to postgres;	
	
	

-- Table: public."RoleAccessPermission"

-- DROP TABLE public."RoleAccessPermission";

CREATE TABLE public."RoleAccessPermission"
(
    "AccessId" serial NOT NULL,
    "RoleId" bigint NOT NULL,
    "MenuId" bigint NOT NULL,
    "SubMenuId" bigint NOT NULL,
    "WriteStatusFl" boolean NOT NULL,
    "ReadStatusFl" boolean NOT NULL,
    "DeleteStatusFl" boolean NOT NULL,
    "CreatedDateTime" timestamp NOT NULL,
    "ModifiedDateTime" timestamp NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "RoleAccessPermission_pkey" PRIMARY KEY ("AccessId"),
    CONSTRAINT "FK_Menu_RoleAccessPermission" FOREIGN KEY ("MenuId")
        REFERENCES public."Menus" ("MenuId") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_Role_RoleAccessPermission" FOREIGN KEY ("RoleId")
        REFERENCES public."Roles" ("RoleId") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_SubMenu_RoleAccessPermission" FOREIGN KEY ("SubMenuId")
        REFERENCES public."SubMenus" ("SubMenuId") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."RoleAccessPermission"
    OWNER to postgres;



-- Table: public."Users"

-- DROP TABLE public."Users";

CREATE TABLE public."Users"
(
    "UserId" serial NOT NULL,
    "Name" character(100) COLLATE pg_catalog."default" NOT NULL,    
    "EmailId" character(100) COLLATE pg_catalog."default" NOT NULL,
    "Username" character(100) COLLATE pg_catalog."default" NOT NULL,
    "Password" character(100) COLLATE pg_catalog."default" NOT NULL,
    "MobileNumber" character(20) COLLATE pg_catalog."default" NOT NULL,
    "AlternativeMobileNumber" character(20) COLLATE pg_catalog."default",
    "Address" character(500) COLLATE pg_catalog."default",
    "Pincode" integer,
    "RoleId" bigint NOT NULL,
    "RadCenterId" integer,
    "EmployeeId" character(50) COLLATE pg_catalog."default",
    "Qualification" character(100) COLLATE pg_catalog."default",
    "Specialization" character(50) COLLATE pg_catalog."default",
    "RefData" bytea,
	"RefDataFileName" character(50) COLLATE pg_catalog."default",
	"RefDataFilePath" character(150) COLLATE pg_catalog."default",
	"RefImage" bytea,
	"RefImgFileName" character(50) COLLATE pg_catalog."default",
	"RefImgFilePath" character(150) COLLATE pg_catalog."default",
	"SiteId" integer,
	"RefIdentityNumber" character(100) COLLATE pg_catalog."default",
	"UsersType" character(100) COLLATE pg_catalog."default",
    "CreatedDateTime" timestamp without time zone NOT NULL,
    "ModifiedDateTime" timestamp without time zone NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "Users_pkey" PRIMARY KEY ("UserId"),
    CONSTRAINT "FK_Roles_Users" FOREIGN KEY ("RoleId")
        REFERENCES public."Roles" ("RoleId") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Users"
    OWNER to postgres;
	
	
-- Table: public."RadCenter"

-- DROP TABLE public."RadCenter";

CREATE TABLE public."RadCenter"
(
    "RadCenterId" serial NOT NULL,
    "RadCenterName" character(100) COLLATE pg_catalog."default" NOT NULL,
    "CreatedDateTime" timestamp without time zone NOT NULL,
    "ModifiedDateTime" timestamp without time zone NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    "RadCenterDate" date,
    "SecurityDeposit" numeric,
    "DeploymentFee" numeric,
    "SiteCount" numeric,
    "RadiologistCount" numeric,
    "ModalityCount" numeric,
    "PurchaseOrderCopy" bytea,
    "ServiceType" character(2) COLLATE pg_catalog."default",
    "FileName" character(50) COLLATE pg_catalog."default",
    "FilePath" character(150) COLLATE pg_catalog."default",
    "ModeOfCharge" character(2) COLLATE pg_catalog."default",
    "CTCharge" numeric,
    "MRICharge" numeric,
    "XRayCrCharge" numeric,
    "MammogramCharge" numeric,
    "ModalityCharge" numeric,
    "ServerRam" character(20) COLLATE pg_catalog."default",
    "ServerCore" character(20) COLLATE pg_catalog."default",
    "ServerStorage" character(20) COLLATE pg_catalog."default",
    "ServerMonthlyCharges" numeric,
    "Address" character(500) COLLATE pg_catalog."default",
    CONSTRAINT "RadCenter_pkey" PRIMARY KEY ("RadCenterId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."RadCenter"
    OWNER to postgres;
	
-- Table: public."Sites"

-- DROP TABLE public."Sites";

CREATE TABLE public."Sites"
(
    "SiteId" serial NOT NULL,
    "SiteCode" character(7) COLLATE pg_catalog."default" NOT NULL,
    "SiteName" character(100) COLLATE pg_catalog."default" NOT NULL,
    "SiteAddress" character(500) COLLATE pg_catalog."default",
    "SitePincode" integer,
    "MemberShipType" character(2) COLLATE pg_catalog."default",
    "CreatedDateTime" timestamp without time zone NOT NULL,
    "ModifiedDateTime" timestamp without time zone NOT NULL,
    "CreatedIpAddress" character(15) COLLATE pg_catalog."default",
    "ModifiedIpAddress" character(15) COLLATE pg_catalog."default",
    "PrivilegeCd" integer,
    CONSTRAINT "Sites_pkey" PRIMARY KEY ("SiteId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Sites"
    OWNER to postgres;	


INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (1, 'PACS ADMIN',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (2, 'PACS ACCOUNTANT',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (3, 'RAD ADMIN',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (4, 'RAD CCOUNTANT',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (5, 'RAD MANAGER',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (6, 'RAD STAFF',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (7, 'Sr.RADIOLOGIST',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (8, 'Jr.RADIOLOGIST',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Roles"("RoleId", "RoleName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (9, 'SITE TECHNICIAN',LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);



INSERT INTO public."Users"("UserId", "Name", "Username", "EmailId", "Password", "MobileNumber", "AlternativeMobileNumber", "Address", "Pincode", "RoleId","RadCenterId", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES (1,'Saravanan ram','skram90','skram90@gmail.com','21232f297a57a5a743894a0e4a801fc3','9976944364',null,'test address','600100',1,-1, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);

	
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 1,'Dashboard', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 2,'Settings', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 3,'Radcentre', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 4,'Admin', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 5,'RIS', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 6,'Finance', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 7,'Radcentre Study list', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 8,'Radiologist Study list', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."Menus"("MenuId", "MenuName", "CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 9,'Site Study list', LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);

COMMIT;

INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 1,'Dashboard Page',1, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 2,'Notifications',1, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 3,'My Profile',2, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 4,'Users',4, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 5,'Access Permission',4, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 6,'Site List',5, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 7,'Utilities',5, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 8,'Pacs Admin Billing',6, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 9,'Radcentre Billing',6, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);
INSERT INTO public."SubMenus"("SubMenuId", "SubMenuName", "MenuId" ,"CreatedDateTime", "ModifiedDateTime", "CreatedIpAddress", "ModifiedIpAddress", "PrivilegeCd") VALUES ( 10,'Bill Master',6, LOCALTIMESTAMP,LOCALTIMESTAMP,'000.000.000.000','000.000.000.000',1);


	
