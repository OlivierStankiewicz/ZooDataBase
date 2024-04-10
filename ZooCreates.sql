-- Create 'Pracownicy' table
CREATE TABLE Pracownicy (
    ID_pracownika NVARCHAR(8) PRIMARY KEY CHECK ( ID_pracownika LIKE N'[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9]' ),
    Imie NVARCHAR(13) CHECK ( Imie LIKE N'[A-Z¥ÆÊ£ÑÓŒ¯]%' AND (Imie NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿]%') AND LEN(Imie) BETWEEN 2 AND 13 ) NOT NULL,
    Nazwisko NVARCHAR(60) CHECK (Nazwisko LIKE N'[A-Z¥ÆÊ£ÑÓŒ¯]%' AND (Nazwisko NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿]%') AND LEN(Nazwisko) BETWEEN 2 AND 60 ) NOT NULL
);

-- Create 'Kierownicy' table
CREATE TABLE Kierownicy (
    ID_pracownika NVARCHAR(8) PRIMARY KEY,
    Sektor_nadzoru NVARCHAR(1) CHECK (Sektor_nadzoru LIKE N'[A-J]') NOT NULL,
    FOREIGN KEY (ID_pracownika) REFERENCES Pracownicy(ID_pracownika)
);

-- Create 'Opiekunowie_zwierzat' table
CREATE TABLE Opiekunowie_zwierzat (
    ID_pracownika NVARCHAR(8) PRIMARY KEY,
    Kwalifikacje_do_niebezpiecznych_zwierzat INT CHECK (Kwalifikacje_do_niebezpiecznych_zwierzat BETWEEN 1 AND 5) NOT NULL,
    ID_kierownika NVARCHAR(8) NOT NULL,
    FOREIGN KEY (ID_pracownika) REFERENCES Pracownicy(ID_pracownika),
    FOREIGN KEY (ID_kierownika) REFERENCES Kierownicy(ID_pracownika)
);

-- Create 'Dietetycy_zwierzecy' table
CREATE TABLE Dietetycy_zwierzecy (
    ID_pracownika NVARCHAR(8) PRIMARY KEY,
    Specjalizacja NVARCHAR(50) CHECK (LEN(Specjalizacja) BETWEEN 3 AND 50) NOT NULL,
    FOREIGN KEY (ID_pracownika) REFERENCES Pracownicy(ID_pracownika)
);

-- Create 'Diety' table
CREATE TABLE Diety (
    Nazwa_diety NVARCHAR(70) PRIMARY KEY CHECK (LEN(Nazwa_diety) BETWEEN 10 AND 70),
    Opis NVARCHAR(200) CHECK (LEN(Opis) BETWEEN 10 AND 200) NOT NULL,
    Data_opracowania DATE NOT NULL,
    ID_dietetyka NVARCHAR(8) NOT NULL,
	FOREIGN KEY (ID_dietetyka) REFERENCES Dietetycy_zwierzecy(ID_pracownika)
);

-- Create 'Produkty_zywnosciowe' table
CREATE TABLE Produkty_zywnosciowe (
	ID_skladnika NVARCHAR(25) PRIMARY KEY CHECK ( ID_skladnika LIKE N'[A-Z]%' AND ID_skladnika NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯0-9]%' AND LEN(ID_skladnika) BETWEEN 5 AND 25 ),
    Nazwa_skladnika NVARCHAR(30) CHECK (LEN(Nazwa_skladnika) BETWEEN 2 AND 30 AND Nazwa_skladnika NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿ ]%') NOT NULL,
    Rozmiar_porcji NVARCHAR(10) CHECK (Rozmiar_porcji NOT LIKE N'[^A-Za-z0-9,]' AND LEN(Rozmiar_porcji) BETWEEN 2 AND 10 ) NOT NULL,
    Wartosc_energetyczna_porcji INT CHECK (Wartosc_energetyczna_porcji BETWEEN 0 AND 30000) NOT NULL,
    Producent NVARCHAR(50) CHECK (LEN(Producent) BETWEEN 5 AND 50) NOT NULL
);

-- Create 'Porcje' table
CREATE TABLE Porcje (
    Nazwa_diety NVARCHAR(70) REFERENCES Diety(Nazwa_diety) NOT NULL,
    ID_skladnika NVARCHAR(25) REFERENCES Produkty_zywnosciowe(ID_skladnika) NOT NULL,
    Liczba_porcji DECIMAL CHECK (Liczba_porcji >= 0) NOT NULL,
    PRIMARY KEY (Nazwa_diety, ID_skladnika)
);

-- Create 'Wybiegi' table
CREATE TABLE Wybiegi (
    Nazwa_wybiegu NVARCHAR(40) PRIMARY KEY CHECK (LEN(Nazwa_wybiegu) BETWEEN 10 AND 40) NOT NULL
);

-- Create 'Gatunki' table
CREATE TABLE Gatunki (
    Nazwa_naukowa_gatunku NVARCHAR(50) PRIMARY KEY CHECK (LEN(Nazwa_naukowa_gatunku) BETWEEN 5 AND 50 AND (Nazwa_naukowa_gatunku NOT LIKE N'%[^A-Za-z ]%')),
    Nazwa_zwyczajowa_gatunku NVARCHAR(50) CHECK (LEN(Nazwa_zwyczajowa_gatunku) BETWEEN 5 AND 50 AND (Nazwa_zwyczajowa_gatunku NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿ ]%')) NOT NULL,
    Typ_diety NVARCHAR(30) CHECK (LEN(Typ_diety) BETWEEN 3 AND 30 AND (Typ_diety NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿ ]%')) NOT NULL,
    Poziom_niebezpieczenstwa INT CHECK (Poziom_niebezpieczenstwa BETWEEN 1 AND 5) NOT NULL
);

-- Create 'Zwierzeta' table
CREATE TABLE Zwierzeta (
	ID_chipa NVARCHAR(4) PRIMARY KEY CHECK ( ID_chipa LIKE N'[A-Z¥ÆÊ£ÑÓŒ¯][0-9][0-9][0-9]' ),
    Imie NVARCHAR(30) CHECK (Imie LIKE N'[A-Z¥ÆÊ£ÑÓŒ¯]%' AND (Imie NOT LIKE N'%[^A-Z¥ÆÊ£ÑÓŒ¯a-z¹æê³ñóœŸ¿ ]%') AND LEN(Imie) BETWEEN 2 AND 30 ) NOT NULL,
    Data_urodzenia DATE NOT NULL,
    Stan_zdrowotny NVARCHAR(200) CHECK (LEN(Stan_zdrowotny) BETWEEN 2 AND 200) NOT NULL,
    Nazwa_diety NVARCHAR(70) NOT NULL,
    Nazwa_wybiegu NVARCHAR(40) NOT NULL,
    Nazwa_naukowa_gatunku NVARCHAR(50) NOT NULL,
    FOREIGN KEY (Nazwa_diety) REFERENCES Diety(Nazwa_diety),
    FOREIGN KEY (Nazwa_wybiegu) REFERENCES Wybiegi(Nazwa_wybiegu),
    FOREIGN KEY (Nazwa_naukowa_gatunku) REFERENCES Gatunki(Nazwa_naukowa_gatunku)  ON UPDATE CASCADE ON DELETE CASCADE
);

-- Create 'Karmienia' table
CREATE TABLE Karmienia (
    ID_karmienia NVARCHAR(8) PRIMARY KEY CHECK (ID_karmienia LIKE N'[A-Z][A-Z][A-Z][0-9][0-9][0-9A-F][0-9A-F][0-9A-F]' ),
    Data_i_godzina DATETIME CHECK (Data_i_godzina > '2000-01-01T00:00:00.000') NOT NULL,
    Czy_dokonane BIT NOT NULL,
    ID_opiekuna NVARCHAR(8) NOT NULL,
    ID_chipa NVARCHAR(4) NOT NULL,
    FOREIGN KEY (ID_opiekuna) REFERENCES Opiekunowie_zwierzat(ID_pracownika),
    FOREIGN KEY (ID_chipa) REFERENCES Zwierzeta(ID_chipa) ON DELETE CASCADE
);