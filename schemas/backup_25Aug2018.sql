PGDMP     	        
            w            TeleRadiology    10.9    10.9 6    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            4           1262    24600    TeleRadiology    DATABASE     �   CREATE DATABASE "TeleRadiology" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "TeleRadiology";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            6           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24664 	   RoleTypes    TABLE     r   CREATE TABLE public."RoleTypes" (
    "Id" integer NOT NULL,
    "Name" text,
    "Isdeleted" boolean NOT NULL
);
    DROP TABLE public."RoleTypes";
       public         postgres    false    3            �            1259    24662    RoleTypes_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RoleTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."RoleTypes_Id_seq";
       public       postgres    false    204    3            7           0    0    RoleTypes_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."RoleTypes_Id_seq" OWNED BY public."RoleTypes"."Id";
            public       postgres    false    203            �            1259    24635    Roles    TABLE     5  CREATE TABLE public."Roles" (
    "Id" integer NOT NULL,
    "CreatedBy" integer NOT NULL,
    "CreatedDate" timestamp without time zone NOT NULL,
    "UpdatedBy" integer,
    "UpdatedDate" timestamp without time zone,
    "RoleName" text,
    "IsActive" boolean NOT NULL,
    "Isdeleted" boolean NOT NULL
);
    DROP TABLE public."Roles";
       public         postgres    false    3            �            1259    24633    Roles_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_Id_seq";
       public       postgres    false    3    200            8           0    0    Roles_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Roles_Id_seq" OWNED BY public."Roles"."Id";
            public       postgres    false    199            �            1259    24608 
   SuperAdmin    TABLE     �  CREATE TABLE public."SuperAdmin" (
    "Id" integer NOT NULL,
    "CreatedBy" integer NOT NULL,
    "CreatedDate" timestamp without time zone NOT NULL,
    "UpdatedBy" integer,
    "UpdatedDate" timestamp without time zone,
    "Name" text,
    "Address" text,
    "Email" text,
    "IsActive" boolean DEFAULT false NOT NULL,
    "Isdeleted" boolean DEFAULT false NOT NULL,
    "MobileNo" text,
    "Password" text,
    "UserName" text
);
     DROP TABLE public."SuperAdmin";
       public         postgres    false    3            �            1259    24606    SuperAdmin_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."SuperAdmin_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SuperAdmin_Id_seq";
       public       postgres    false    3    198            9           0    0    SuperAdmin_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SuperAdmin_Id_seq" OWNED BY public."SuperAdmin"."Id";
            public       postgres    false    197            �            1259    24688    UserRoleTypes    TABLE     �   CREATE TABLE public."UserRoleTypes" (
    "Id" integer NOT NULL,
    "RoleTypesId" integer DEFAULT 0 NOT NULL,
    "UserRolesId" integer DEFAULT 0 NOT NULL
);
 #   DROP TABLE public."UserRoleTypes";
       public         postgres    false    3            �            1259    24686    UserRoleTypes_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoleTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."UserRoleTypes_Id_seq";
       public       postgres    false    206    3            :           0    0    UserRoleTypes_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."UserRoleTypes_Id_seq" OWNED BY public."UserRoleTypes"."Id";
            public       postgres    false    205            �            1259    24646 	   UserRoles    TABLE     �   CREATE TABLE public."UserRoles" (
    "Id" integer NOT NULL,
    "SuperAdminId" integer NOT NULL,
    "RolesId" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."UserRoles";
       public         postgres    false    3            �            1259    24644    UserRoles_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UserRoles_Id_seq";
       public       postgres    false    3    202            ;           0    0    UserRoles_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."UserRoles_Id_seq" OWNED BY public."UserRoles"."Id";
            public       postgres    false    201            �            1259    24601    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         postgres    false    3            �
           2604    24667    RoleTypes Id    DEFAULT     r   ALTER TABLE ONLY public."RoleTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."RoleTypes_Id_seq"'::regclass);
 ?   ALTER TABLE public."RoleTypes" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    24638    Roles Id    DEFAULT     j   ALTER TABLE ONLY public."Roles" ALTER COLUMN "Id" SET DEFAULT nextval('public."Roles_Id_seq"'::regclass);
 ;   ALTER TABLE public."Roles" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    200    199    200            �
           2604    24611    SuperAdmin Id    DEFAULT     t   ALTER TABLE ONLY public."SuperAdmin" ALTER COLUMN "Id" SET DEFAULT nextval('public."SuperAdmin_Id_seq"'::regclass);
 @   ALTER TABLE public."SuperAdmin" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    198    197    198            �
           2604    24691    UserRoleTypes Id    DEFAULT     z   ALTER TABLE ONLY public."UserRoleTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserRoleTypes_Id_seq"'::regclass);
 C   ALTER TABLE public."UserRoleTypes" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    24649    UserRoles Id    DEFAULT     r   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserRoles_Id_seq"'::regclass);
 ?   ALTER TABLE public."UserRoles" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    201    202    202            ,          0    24664 	   RoleTypes 
   TABLE DATA               @   COPY public."RoleTypes" ("Id", "Name", "Isdeleted") FROM stdin;
    public       postgres    false    204   �=       (          0    24635    Roles 
   TABLE DATA               �   COPY public."Roles" ("Id", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate", "RoleName", "IsActive", "Isdeleted") FROM stdin;
    public       postgres    false    200   �=       &          0    24608 
   SuperAdmin 
   TABLE DATA               �   COPY public."SuperAdmin" ("Id", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate", "Name", "Address", "Email", "IsActive", "Isdeleted", "MobileNo", "Password", "UserName") FROM stdin;
    public       postgres    false    198   >       .          0    24688    UserRoleTypes 
   TABLE DATA               M   COPY public."UserRoleTypes" ("Id", "RoleTypesId", "UserRolesId") FROM stdin;
    public       postgres    false    206   �>       *          0    24646 	   UserRoles 
   TABLE DATA               F   COPY public."UserRoles" ("Id", "SuperAdminId", "RolesId") FROM stdin;
    public       postgres    false    202   ?       $          0    24601    __EFMigrationsHistory 
   TABLE DATA               R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public       postgres    false    196   b?       <           0    0    RoleTypes_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."RoleTypes_Id_seq"', 1, false);
            public       postgres    false    203            =           0    0    Roles_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_Id_seq"', 1, false);
            public       postgres    false    199            >           0    0    SuperAdmin_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SuperAdmin_Id_seq"', 23, true);
            public       postgres    false    197            ?           0    0    UserRoleTypes_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserRoleTypes_Id_seq"', 15, true);
            public       postgres    false    205            @           0    0    UserRoles_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UserRoles_Id_seq"', 24, true);
            public       postgres    false    201            �
           2606    24672    RoleTypes PK_RoleTypes 
   CONSTRAINT     Z   ALTER TABLE ONLY public."RoleTypes"
    ADD CONSTRAINT "PK_RoleTypes" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."RoleTypes" DROP CONSTRAINT "PK_RoleTypes";
       public         postgres    false    204            �
           2606    24643    Roles PK_Roles 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "PK_Roles";
       public         postgres    false    200            �
           2606    24616    SuperAdmin PK_SuperAdmin 
   CONSTRAINT     \   ALTER TABLE ONLY public."SuperAdmin"
    ADD CONSTRAINT "PK_SuperAdmin" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."SuperAdmin" DROP CONSTRAINT "PK_SuperAdmin";
       public         postgres    false    198            �
           2606    24693    UserRoleTypes PK_UserRoleTypes 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserRoleTypes"
    ADD CONSTRAINT "PK_UserRoleTypes" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."UserRoleTypes" DROP CONSTRAINT "PK_UserRoleTypes";
       public         postgres    false    206            �
           2606    24651    UserRoles PK_UserRoles 
   CONSTRAINT     Z   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "PK_UserRoles";
       public         postgres    false    202            �
           2606    24605 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public         postgres    false    196            �
           1259    24723    IX_UserRoleTypes_RoleTypesId    INDEX     c   CREATE INDEX "IX_UserRoleTypes_RoleTypesId" ON public."UserRoleTypes" USING btree ("RoleTypesId");
 2   DROP INDEX public."IX_UserRoleTypes_RoleTypesId";
       public         postgres    false    206            �
           1259    24724    IX_UserRoleTypes_UserRolesId    INDEX     c   CREATE INDEX "IX_UserRoleTypes_UserRolesId" ON public."UserRoleTypes" USING btree ("UserRolesId");
 2   DROP INDEX public."IX_UserRoleTypes_UserRolesId";
       public         postgres    false    206            �
           1259    24725    IX_UserRoles_RolesId    INDEX     S   CREATE INDEX "IX_UserRoles_RolesId" ON public."UserRoles" USING btree ("RolesId");
 *   DROP INDEX public."IX_UserRoles_RolesId";
       public         postgres    false    202            �
           1259    24716    IX_UserRoles_SuperAdminId    INDEX     ]   CREATE INDEX "IX_UserRoles_SuperAdminId" ON public."UserRoles" USING btree ("SuperAdminId");
 /   DROP INDEX public."IX_UserRoles_SuperAdminId";
       public         postgres    false    202            �
           2606    24736 4   UserRoleTypes FK_UserRoleTypes_RoleTypes_RoleTypesId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoleTypes"
    ADD CONSTRAINT "FK_UserRoleTypes_RoleTypes_RoleTypesId" FOREIGN KEY ("RoleTypesId") REFERENCES public."RoleTypes"("Id") ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."UserRoleTypes" DROP CONSTRAINT "FK_UserRoleTypes_RoleTypes_RoleTypesId";
       public       postgres    false    204    206    2722            �
           2606    24741 4   UserRoleTypes FK_UserRoleTypes_UserRoles_UserRolesId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoleTypes"
    ADD CONSTRAINT "FK_UserRoleTypes_UserRoles_UserRolesId" FOREIGN KEY ("UserRolesId") REFERENCES public."UserRoles"("Id") ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."UserRoleTypes" DROP CONSTRAINT "FK_UserRoleTypes_UserRoles_UserRolesId";
       public       postgres    false    206    202    2720            �
           2606    24726 $   UserRoles FK_UserRoles_Roles_RolesId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles_RolesId" FOREIGN KEY ("RolesId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;
 R   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "FK_UserRoles_Roles_RolesId";
       public       postgres    false    2716    200    202            �
           2606    24731 .   UserRoles FK_UserRoles_SuperAdmin_SuperAdminId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_SuperAdmin_SuperAdminId" FOREIGN KEY ("SuperAdminId") REFERENCES public."SuperAdmin"("Id") ON DELETE CASCADE;
 \   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "FK_UserRoles_SuperAdmin_SuperAdminId";
       public       postgres    false    2714    198    202            ,      x�3��L�2��Ɯ.@2F��� /�      (   5   x�3�4�420��54 "+0�!ꘒ���Y�e�C�VQ���=... ��      &   �   x��OK!]���N FWz�gC��Ƙ@��m�1���h}/�v�@)��=6J{�|�(�b�Xiy� 	ݫ��z?���:p�Y�.��S+�C}ʯ1Fh�j� �|y�=�L�O�r�h�x%>�ݨ,��g�bADh����=ԐjXQ��A�)����1C�a�Z�.��+����I__ �_
�	�jv9      .   5   x�Ǳ�0����}���B�u�E�9ey󄃣:�_���⌍+N�q�^�5e	      *   3   x���� ��]b�(@/�_�5��0K��.���JiJ��f�`P      $   �   x����
�0�y
_�eg��&�!�P��@����'!��}>�&R��x���?�:��'n���9l�tO�؀H��q����a<Bnl�t?=�f����tu��r#%�ɑ���9�[��u9��#��8���8
q�w�5�| v�z�     