CREATE TABLE if not EXISTS Proprietaire (
    id_proprietaire INT,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    prix DECIMAL(15,2),
    PRIMARY KEY(id_proprietaire)
);


CREATE TABLE if not EXISTS Bien (
    id_bien INT,
    type VARCHAR(50),
    adresse VARCHAR(50),
    prix DECIMAL(15,2),
    PRIMARY KEY(id_bien)
);

CREATE TABLE if not EXISTS Locataire(
    id_locataire INT,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    PRIMARY KEY(id_locataire)
);

CREATE TABLE if not EXISTS Contrat(
    id_contrat INT,
    Duree DECIMAL(15,2)
    Pourcentage DECIMAL(15,2)
    id_proprietaire INT NOT NULL,
    id_bien INT NOT NULL,
    PRIMARY KEY(id_contrat),
    FOREIGN KEY (id_proprietaire) REFERENCES Proprietaire (id_proprietaire),
    FOREIGN KEY(id_bien) REFERENCES Bien(id_bien)
);

CREATE TABLE if not EXISTS Bail (
    id_bail INT,
    periode INT,
    id_bien INT NOT NULL,
    id_locataire INT NOT NULL,
    PRIMARY KEY(id_bail),
    FOREIGN KEY(id_bien) REFERENCES Bien(id_bien),
    FOREIGN KEY(id_locataire) REFERENCES Locataire(id_locataire)
);