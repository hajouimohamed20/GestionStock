CREATE DATABASE 'demo';
USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	nom varchar(120) NOT NULL,
	profondeur varchar(220) ,
	capacite varchar(120),
	etat varchar(120),
	date_construction varchar(120),
	localisation varchar(120),
	
	PRIMARY KEY (id)
);

