
INSERT INTO Division(libelle)
VALUES		('Promoteur'),
			('Chef de projet');
			
INSERT INTO Secteur(libelle)
VALUES		('Tourisme'),
			('Service');

INSERT INTO User(nom,prenom,date_naissance,tel,situation,division) 
VALUES		('TSAMBA','Gatien',NULL,'02271116','Celibataire',1),
			('BABK','Rivelnet','1992-09-25 21:30:00','02222937','Celibataire',2);
			
INSERT	INTO Projet(denomination,responsable,secteur,but,lieu,commentaire)
VALUES		('Le Gabon en main',1,1,NULL,'Libreville',NULL),
			('Vers un Gabon Moderne',2,2,NULL,'Libreville',NULL);
			
INSERT INTO Activite(utilisateur,projet)
VALUES		(1,1),
			(2,2);
			

