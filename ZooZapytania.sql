--Scenariusz: Kierownik chce sprawdziæ czy wszystkie zaplanowane na dany dzieñ karmienia siê odby³y
--Zapytanie: Ile jest niezakoñczonych karmieñ w dniu 10.03.2023?

SELECT COUNT(*) AS ilosc_niezakonczonych_karmien_tego_dnia
FROM Karmienia
WHERE Data_i_godzina >= '2023-03-10 00:00:00' 
	AND Data_i_godzina <= '2023-03-10 23:59:59'
	AND Czy_dokonane = 0;


--Scenariusz: Kierownik chce uzyskaæ dostêp do przydzia³u opiekunów do konkretnych karmieñ, aby przydzieliæ obowi¹zki nowemu pracownikowi
--Zapytanie: Ile karmieñ przypada na konkretnych opiekunów pomiêdzy 10.02.2023 a 10.03.2023? Uporz¹dkuj wyniki malej¹co po sumarycznej iloœci karmieñ w tym miesi¹cu.

SELECT ID_pracownika, COUNT(Karmienia.ID_karmienia) AS ilosc_karmien
FROM Opiekunowie_zwierzat
LEFT JOIN Karmienia ON ID_pracownika = ID_opiekuna
    AND (Data_i_godzina >= '2023-02-10 00:00:00' AND Data_i_godzina <= '2023-03-10 23:59:59')
GROUP BY ID_pracownika
ORDER BY ilosc_karmien DESC;


--Scenariusz: Opiekun chce sprawdziæ harmonogram karmienia danego zwierzêcia w konkretnym miesi¹cu.
--Zapytanie: Jakie s¹ daty i godziny karmieñ zwierzêcia z gatunku Jaguar amerykañski o imieniu Yogi w styczniu 2023 roku?

SELECT Data_i_godzina AS karmienia_Yogiego_w_styczniu
FROM Karmienia
WHERE ID_chipa = (
    SELECT ID_chipa
    FROM Zwierzeta
    WHERE Nazwa_naukowa_gatunku = (
        SELECT Nazwa_naukowa_gatunku
        FROM Gatunki
        WHERE Nazwa_zwyczajowa_gatunku = 'Jaguar amerykañski'
    ) AND Imie = 'Yogi'
) AND MONTH(Data_i_godzina) = 1 AND YEAR(Data_i_godzina) = 2023;


--Scenariusz: Dietetyk sprawdza, które czêsto stosowane diety wymagaj¹ weryfikacji ze wzglêdu na ich odleg³y czas opracowania
--Zapytanie: Które diety zosta³y opracowane wczeœniej ni¿ 11.11.2023 oraz ile zwierz¹t ma przypisan¹ ka¿d¹ z nich ( w kolejnoœci malej¹cej )?

SELECT Diety.Nazwa_diety, Diety.Data_opracowania, COUNT(Zwierzeta.ID_chipa) AS ilosc_zwierzat
FROM Diety
LEFT JOIN Zwierzeta ON Diety.Nazwa_diety = Zwierzeta.Nazwa_diety
WHERE Diety.Data_opracowania < '2023-11-11'
GROUP BY Diety.Nazwa_diety, Diety.Data_opracowania
ORDER BY ilosc_zwierzat DESC;


--Scenariusz: Jedno ze zwierz¹t ma problemy z ¿o³¹dkiem, dietetyk chce upewniæ siê, ¿e nie s¹ one powodowane przez jeden ze sk³adników diety.
--Zapytanie: Jakie s¹ sk³adniki diety przypisanej do zwierzêcia o ID = J007?

SELECT ID_skladnika, Nazwa_skladnika
FROM Produkty_zywnosciowe
WHERE ID_skladnika IN (
    SELECT Porcje.ID_skladnika
    FROM Porcje
    INNER JOIN Diety ON Porcje.Nazwa_diety = Diety.Nazwa_diety
    INNER JOIN Zwierzeta ON Diety.Nazwa_diety = Zwierzeta.Nazwa_diety
    WHERE Zwierzeta.ID_chipa = 'J007'
);


--Scenariusz: Kierownik chce zweryfikowaæ, czy opiekun o niskiej kwalifikacji do niebezpiecznych zwierz¹t nie ma przypisanego karmienia zwierzêcia o zbyt wysokim poziomie niebezpiecznoœci.
--Zapytanie: Jaki jest najwy¿szy poziom niebezpiecznoœci, ze zwierz¹t których karmienie ma przypisany opiekun o ID ABC00019, (maj¹cy kwalifikacjê o poziomie 2)?

SELECT MAX(Gatunki.Poziom_niebezpieczenstwa) AS Najwyzszy_Poziom_Niebezpieczenstwa
FROM Zwierzeta
INNER JOIN Gatunki ON Zwierzeta.Nazwa_naukowa_gatunku = Gatunki.Nazwa_naukowa_gatunku
INNER JOIN Karmienia ON Zwierzeta.ID_chipa = Karmienia.ID_chipa
INNER JOIN Opiekunowie_zwierzat ON Karmienia.ID_opiekuna = Opiekunowie_zwierzat.ID_pracownika
WHERE Opiekunowie_zwierzat.ID_pracownika = 'ABC00019' AND Opiekunowie_zwierzat.Kwalifikacje_do_niebezpiecznych_zwierzat = 2;


--Scenariusz: Opiekun chce zaplanowaæ œwiêtowanie urodzin zwierz¹t w zoo. W tym celu potrzebuje listy zwierz¹t które maj¹ urodziny w przysz³ym miesi¹cu.
--Zapytanie: Wyœwietl zestawienie Imion, ID chipa, dat urodzenia, nazw wybiegu oraz nazw zwyczajowych gatunku zwierz¹t, które urodzi³y siê w lutym. 

SELECT Zwierzeta.Imie, Zwierzeta.ID_chipa, Zwierzeta.Data_urodzenia, Wybiegi.Nazwa_wybiegu, Gatunki.Nazwa_zwyczajowa_gatunku
FROM Zwierzeta
INNER JOIN Wybiegi ON Zwierzeta.Nazwa_wybiegu = Wybiegi.Nazwa_wybiegu
INNER JOIN Gatunki ON Zwierzeta.Nazwa_naukowa_gatunku = Gatunki.Nazwa_naukowa_gatunku
WHERE MONTH(Zwierzeta.Data_urodzenia) = 2;


--Scenariusz: Dietytyk chce sprawdziæ czy dieta ma odpowiedni¹ liczbê kalorii.
--Zapytanie: Ile kalorii ma ³¹cznie dieta o nazwie 'Dieta dla doros³ego szympansa kar³owatego'?

DROP VIEW IF EXISTS Calosc_Kalorii_Diet;
GO
CREATE VIEW Calosc_Kalorii_Diet AS
	SELECT Diety.Nazwa_diety, SUM(Produkty_zywnosciowe.Wartosc_energetyczna_porcji * Porcje.Liczba_porcji) AS Calosc_Kalorii
	FROM Diety
	INNER JOIN Porcje ON Diety.Nazwa_diety = Porcje.Nazwa_diety
	INNER JOIN Produkty_zywnosciowe ON Porcje.ID_skladnika = Produkty_zywnosciowe.ID_skladnika
	GROUP BY Diety.Nazwa_diety;
GO
SELECT * FROM Calosc_Kalorii_Diet WHERE Nazwa_diety = 'Dieta dla doros³ego szympansa kar³owatego';