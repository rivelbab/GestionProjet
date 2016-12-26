
--   les cles etrangeres


ALTER TABLE Projet
ADD CONSTRAINT fk_responsable_Projet_User FOREIGN KEY(responsable)
REFERENCES User(id_user);

ALTER TABLE Projet
ADD CONSTRAINT fk_secteur_Projet_Secteur FOREIGN KEY(secteur)
REFERENCES Secteur(id_secteur);



