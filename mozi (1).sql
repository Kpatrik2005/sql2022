-- adatbázis létrehozás
CREATE DATABASE mozi DEFAULT CHARACTER SET=utf8 COLLATE=utf8_hungarian_ci:

USE mozi;

CREATE TABLE film (id, INT(11),
				   eredeticim VARCHAR(200) NOT NULL AUTO_INCREMENT,
				   magyarcim VARCHAR(200),
				   premier DATE,
				   hossz TIME,
				   3d BOOLEAN,
				   nyelvid INT(11),
				   CONSTRAINT film_pk PRIMARY KEY (id)
				);

insert into film (eredeticim, magyarcim, premier. hossz, 3d, nyelvid)
values ("The Lord of the Rings: The Fellowship of the Ring",
        "A Gyürük Ura: A gyürü szövetsége",
        "2001-06-15". "02:30:12", "false",1,
       );
insert into film (eredeticim, magyarcim, premier. hossz, 3d, nyelvid)
values ("The Godfather",
        "A Keresztapa",
        "1972-06-15". "02:55:00", "false",1,
       );
       
insert into film (eredeticim, magyarcim, premier. hossz, 3d, nyelvid)
values ("Snatch",
        "Blöff",
        "1995-06-15". "02:55:00", "false",1,
       );

insert into film (eredeticim, magyarcim, premier. hossz, 3d, nyelvid)
values ("Se7en",
        "Hetedik",
        "1972-06-15". "02:55:00", "false",1,
       );

CREATE TABLE besorolas (id, INT(11) NOT NULL AUTO_INCREMENT,
						nev VARCHAR(20),
						leiras VARCHAR(100),
						CONSTRAINT besorolas_pk PRIMARY KEY (id)
						);
						
CREATE TABLE besorolas2film (id, INT(11) NOT NULL AUTO_INCREMENT,
						besorolasid INT(11),
						filmid INT(11),
						CONSTRAINT besorolas2film_pk PRIMARY KEY (id)
						);

CREATE TABLE forgalmazo (id, INT(11) NOT NULL AUTO_INCREMENT,
						nev VARCHAR(100),
						CONSTRAINT forgalmazo_pk PRIMARY KEY (id)
						);
						
CREATE TABLE forgalmazo2film (id, INT(11) NOT NULL AUTO_INCREMENT,
							  forgalmazoid INT(11),
							  filmid INT(11),
							  CONSTRAINT forgalmazo2film_pk PRIMARY KEY (id)
							  );
							  
CREATE TABLE nyelv (id, INT(11) NOT NULL AUTO_INCREMENT,
					nev VARCHAR(20),
					CONSTRAINT nyelv_pk PRIMARY KEY (id)
					);
				
insert into film(1,"angol"). (2,"német"), (3,"magyar")(4."üzbég")

CREATE TABLE ember (id, INT(11) NOT NULL AUTO_INCREMENT,
					nev VARCHAR(100),
					CONSTRAINT ember_pk PRIMARY KEY (id)
					);
					
CREATE TABLE ember2film (id, INT(11) NOT NULL AUTO_INCREMENT,
					filmid INT(11),
					emberid INT(11),
					szerepid INT(11),
					CONSTRAINT ember2film_pk PRIMARY KEY (id)
					);
					
CREATE TABLE szerep (id, INT(11) NOT NULL AUTO_INCREMENT,
					nev VARCHAR(30),
					CONSTRAINT szerep_pk PRIMARY KEY (id)
					);
					
CREATE TABLE mufaj (id, INT(11) NOT NULL AUTO_INCREMENT,
					nev VARCHAR(20),
					CONSTRAINT mufaj_pk PRIMARY KEY (id)
					);