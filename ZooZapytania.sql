--Scenariusz: Kierownik chce sprawdzi� czy wszystkie zaplanowane na dany dzie� karmienia si� odby�y
--Zapytanie: Ile jest niezako�czonych karmie� w dniu 10.03.2023?

SELECT COUNT(*) AS ilosc_niezakonczonych_karmien_tego_dnia
FROM Karmienia
WHERE Data_i_godzina >= '2023-03-10 00:00:00' 
	AND Data_i_godzina <= '2023-03-10 23:59:59'
	AND Czy_dokonane = 0;


--Scenariusz: Kierownik chce uzyska� dost�p do przydzia�u opiekun�w do konkretnych karmie�, aby przydzieli� obowi�zki nowemu pracownikowi
--Zapytanie: Ile karmie� przypada na konkretnych opiekun�w pomi�dzy 10.02.2023 a 10.03.2023? Uporz�dkuj wyniki malej�co po sumarycznej ilo�ci karmie� w tym miesi�cu.

SELECT ID_pracownika, COUNT(Karmienia.ID_karmienia) AS ilosc_karmien
FROM Opiekunowie_zwierzat
LEFT JOIN Karmienia ON ID_pracownika = ID_opiekuna
    AND (Data_i_godzina >= '2023-02-10 00:00:00' AND Data_i_godzina <= '2023-03-10 23:59:59')
GROUP BY ID_pracownika
ORDER BY ilosc_karmien DESC;


--Scenariusz: Opiekun chce sprawdzi� harmonogram karmienia danego zwierz�cia w konkretnym miesi�cu.
--Zapytanie: Jakie s� daty i godziny karmie� zwierz�cia z gatunku Jaguar ameryka�ski o imieniu Yogi w styczniu 2023 roku?

SELECT Data_i_godzina AS karmienia_Yogiego_w_styczniu
FROM Karmienia
WHERE ID_chipa = (
    SELECT ID_chipa
    FROM Zwierzeta
    WHERE Nazwa_naukowa_gatunku = (
        SELECT Nazwa_naukowa_gatunku
        FROM Gatunki
        WHERE Nazwa_zwyczajowa_gatunku = 'Jaguar ameryka�ski'
    ) AND Imie = 'Yogi'
) AND MONTH(Data_i_godzina) = 1 AND YEAR(Data_i_godzina) = 2023;


--Scenariusz: Dietetyk sprawdza, kt�re cz�sto stosowane diety wymagaj� weryfikacji ze wzgl�du na ich odleg�y czas opracowania
--Zapytanie: Kt�re diety zosta�y opracowane wcze�niej ni� 11.11.2023 oraz ile zwierz�t ma przypisan� ka�d� z nich ( w kolejno�ci malej�cej )?

SELECT Diety.Nazwa_diety, Diety.Data_opracowania, COUNT(Zwierzeta.ID_chipa) AS ilosc_zwierzat
FROM Diety
LEFT JOIN Zwierzeta ON Diety.Nazwa_diety = Zwierzeta.Nazwa_diety
WHERE Diety.Data_opracowania < '2023-11-11'
GROUP BY Diety.Nazwa_diety, Diety.Data_opracowania
ORDER BY ilosc_zwierzat DESC;


--Scenariusz: Jedno ze zwierz�t ma problemy z �o��dkiem, dietetyk chce upewni� si�, �e nie s� one powodowane przez jeden ze sk�adnik�w diety.
--Zapytanie: Jakie s� sk�adniki diety przypisanej do zwierz�cia o ID = J007?

SELECT ID_skladnika, Nazwa_skladnika
FROM Produkty_zywnosciowe
WHERE ID_skladnika IN (
    SELECT Porcje.ID_skladnika
    FROM Porcje
    INNER JOIN Diety ON Porcje.Nazwa_diety = Diety.Nazwa_diety
    INNER JOIN Zwierzeta ON Diety.Nazwa_diety = Zwierzeta.Nazwa_diety
    WHERE Zwierzeta.ID_chipa = 'J007'
);


--Scenariusz: Kierownik chce zweryfikowa�, czy opiekun o niskiej kwalifikacji do niebezpiecznych zwierz�t nie ma przypisanego karmienia zwierz�cia o zbyt wysokim poziomie niebezpieczno�ci.
--Zapytanie: Jaki jest najwy�szy poziom niebezpieczno�ci, ze zwierz�t kt�rych karmienie ma przypisany opiekun o ID ABC00019, (maj�cy kwalifikacj� o poziomie 2)?

SELECT MAX(Gatunki.Poziom_niebezpieczenstwa) AS Najwyzszy_Poziom_Niebezpieczenstwa
FROM Zwierzeta
INNER JOIN Gatunki ON Zwierzeta.Nazwa_naukowa_gatunku = Gatunki.Nazwa_naukowa_gatunku
INNER JOIN Karmienia ON Zwierzeta.ID_chipa = Karmienia.ID_chipa
INNER JOIN Opiekunowie_zwierzat ON Karmienia.ID_opiekuna = Opiekunowie_zwierzat.ID_pracownika
WHERE Opiekunowie_zwierzat.ID_pracownika = 'ABC00019' AND Opiekunowie_zwierzat.Kwalifikacje_do_niebezpiecznych_zwierzat = 2;


--Scenariusz: Opiekun chce zaplanowa� �wi�towanie urodzin zwierz�t w zoo. W tym celu potrzebuje listy zwierz�t kt�re maj� urodziny w przysz�ym miesi�cu.
--Zapytanie: Wy�wietl zestawienie Imion, ID chipa, dat urodzenia, nazw wybiegu oraz nazw zwyczajowych gatunku zwierz�t, kt�re urodzi�y si� w lutym. 

SELECT Zwierzeta.Imie, Zwierzeta.ID_chipa, Zwierzeta.Data_urodzenia, Wybiegi.Nazwa_wybiegu, Gatunki.Nazwa_zwyczajowa_gatunku
FROM Zwierzeta
INNER JOIN Wybiegi ON Zwierzeta.Nazwa_wybiegu = Wybiegi.Nazwa_wybiegu
INNER JOIN Gatunki ON Zwierzeta.Nazwa_naukowa_gatunku = Gatunki.Nazwa_naukowa_gatunku
WHERE MONTH(Zwierzeta.Data_urodzenia) = 2;


--Scenariusz: Dietytyk chce sprawdzi� czy dieta ma odpowiedni� liczb� kalorii.
--Zapytanie: Ile kalorii ma ��cznie dieta o nazwie 'Dieta dla doros�ego szympansa kar�owatego'?

DROP VIEW IF EXISTS Calosc_Kalorii_Diet;
GO
CREATE VIEW Calosc_Kalorii_Diet AS
	SELECT Diety.Nazwa_diety, SUM(Produkty_zywnosciowe.Wartosc_energetyczna_porcji * Porcje.Liczba_porcji) AS Calosc_Kalorii
	FROM Diety
	INNER JOIN Porcje ON Diety.Nazwa_diety = Porcje.Nazwa_diety
	INNER JOIN Produkty_zywnosciowe ON Porcje.ID_skladnika = Produkty_zywnosciowe.ID_skladnika
	GROUP BY Diety.Nazwa_diety;
GO
SELECT * FROM Calosc_Kalorii_Diet WHERE Nazwa_diety = 'Dieta dla doros�ego szympansa kar�owatego';