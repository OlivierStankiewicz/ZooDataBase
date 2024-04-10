-- Insert more data into 'Pracownicy' table
INSERT INTO Pracownicy (ID_pracownika, Imie, Nazwisko)
VALUES 
    ('ABC00001', 'Adam', 'Nowak'),
    ('ABC00002', 'Alicja', 'Kowalska'),
    ('ABC00003', 'Bart�omiej', 'Wi�niewski'),
    ('ABC00004', 'Beata', 'Kami�ska'),
    ('ABC00005', 'Cezary', 'Lewandowski'),
    ('ABC00006', 'Dorota', 'D�browska'),
    ('ABC00007', 'Daniel', 'Zieli�ski'),
    ('ABC00008', 'Dominika', 'Szyma�ska'),
    ('ABC00009', 'Emil', 'Jankowski'),
    ('ABC00010', 'Eliza', 'Wojciechowska'),
    ('ABC00011', 'Filip', 'Kaczmarek'),
    ('ABC00012', 'Gabriela', 'Piotrowska'),
    ('ABC00013', 'Grzegorz', 'Grabowski'),
    ('ABC00014', 'Gra�yna', 'Nowicka'),
    ('ABC00015', 'Henryk', 'Paw�owski'),
    ('ABC00016', 'Halina', 'Mazur'),
    ('ABC00017', 'Igor', 'Czarnecki'),
    ('ABC00018', 'Izabela', 'Zaj�c'),
    ('ABC00019', 'Jan', 'Adamczyk'),
    ('ABC00020', 'Joanna', 'Witkowska'),
    ('ABC00021', 'Jerzy', 'Sikorski'),
    ('ABC00022', 'Jolanta', 'Rutkowska'),
    ('ABC00023', 'Krzysztof', 'Sobczak'),
    ('ABC00024', 'Karolina', 'Duda'),
    ('ABC00025', '�ukasz', 'Olszewski'),
    ('ABC00026', 'Magdalena', 'Krawczyk'),
    ('ABC00027', 'Marek', 'W�jtowicz'),
    ('ABC00028', 'Monika', 'Koz�owska'),
    ('ABC00029', 'Norbert', 'Zalewski'),
    ('ABC00030', 'Natalia', 'Sawicka'),
    ('ABC00031', 'Oskar', 'Chmielewski'),
    ('ABC00032', 'Olga', 'Kubiak'),
    ('ABC00033', 'Piotr', 'Lis'),
    ('ABC00034', 'Patrycja', 'Klimek'),
    ('ABC00035', 'Robert', 'G�recki'),
    ('ABC00036', 'Renata', 'Zawadzka'),
    ('ABC00037', 'Szymon', 'Walczak'),
    ('ABC00038', 'Sabina', 'R�ycka'),
    ('ABC00039', 'Tomasz', 'Sikora'),
    ('ABC00040', 'Tamara', 'Urban'),
    ('ABC00041', 'Urszula', 'Marciniak'),
    ('ABC00042', 'Wojciech', 'Lipi�ski'),
    ('ABC00043', 'Wanda', 'Kaczorowska'),
    ('ABC00044', 'Xawery', 'Zieli�ski'),
    ('ABC00045', 'Xenia', 'Cie�lak'),
    ('ABC00046', 'Yan', 'Jaworski'),
    ('ABC00047', 'Yolanda', 'Sikorska'),
    ('ABC00048', 'Zbigniew', 'Majewski'),
    ('ABC00049', 'Zofia', 'Jastrz�bska'),
    ('ABC00050', 'Zenon', 'Krajewski'),
    ('ABC00051', 'Zuzanna', 'Kowalczyk'),
    ('ABC00052', '�aneta', 'Krawczyk'),
    ('ABC00053', '�elis�aw', 'Bia�as'),
    ('ABC00054', '�anna', 'Pawlak'),
    ('ABC00055', '�ucja', 'Wr�bel'),
    ('ABC00056', '�azarz', 'St�pie�'),
    ('ABC00057', '�wi�tos�aw', 'Mazurek'),
    ('ABC00058', '�mia�y', 'Kaczor'),
    ('ABC00059', '�dward', 'Zieli�ski'),
    ('ABC00060', '�gata', 'W�odarczyk');

-- Kierownicy
INSERT INTO Kierownicy (ID_pracownika, Sektor_nadzoru)
VALUES
	('ABC00001', 'A'),
    ('ABC00002', 'B'),
    ('ABC00003', 'C'),
    ('ABC00004', 'D'),
    ('ABC00005', 'E'),
    ('ABC00006', 'F'),
    ('ABC00007', 'G'),
    ('ABC00008', 'H'),
    ('ABC00009', 'I'),
    ('ABC00010', 'J');

-- Opiekunowie_zwierzat
INSERT INTO Opiekunowie_zwierzat (ID_pracownika, Kwalifikacje_do_niebezpiecznych_zwierzat, ID_kierownika)
VALUES
	('ABC00011', 5, 'ABC00008'),
	('ABC00012', 4, 'ABC00003'),
	('ABC00013', 3, 'ABC00004'),
	('ABC00014', 2, 'ABC00001'),
	('ABC00015', 1, 'ABC00010'),
	('ABC00016', 5, 'ABC00006'),
	('ABC00017', 4, 'ABC00004'),
	('ABC00018', 3, 'ABC00007'),
	('ABC00019', 2, 'ABC00002'),
	('ABC00020', 1, 'ABC00005'),
	('ABC00021', 5, 'ABC00003'),
	('ABC00022', 4, 'ABC00001'),
	('ABC00023', 3, 'ABC00007'),
	('ABC00024', 2, 'ABC00003'),
	('ABC00025', 1, 'ABC00005'),
	('ABC00026', 5, 'ABC00002'),
	('ABC00027', 4, 'ABC00009'),
	('ABC00028', 3, 'ABC00006'),
	('ABC00029', 2, 'ABC00002'),
	('ABC00030', 1, 'ABC00008'),
	('ABC00031', 5, 'ABC00004'),
	('ABC00032', 4, 'ABC00001'),
	('ABC00033', 3, 'ABC00010'),
	('ABC00034', 2, 'ABC00006'),
	('ABC00035', 1, 'ABC00001'),
	('ABC00036', 5, 'ABC00007'),
	('ABC00037', 4, 'ABC00006'),
	('ABC00038', 3, 'ABC00009'),
	('ABC00039', 2, 'ABC00004'),
	('ABC00040', 1, 'ABC00010'),
	('ABC00041', 5, 'ABC00001'),
	('ABC00042', 4, 'ABC00010'),
	('ABC00043', 3, 'ABC00002'),
	('ABC00044', 2, 'ABC00009'),
	('ABC00045', 1, 'ABC00003'),
	('ABC00046', 5, 'ABC00008'),
	('ABC00047', 4, 'ABC00004'),
	('ABC00048', 3, 'ABC00009'),
	('ABC00049', 2, 'ABC00002'),
	('ABC00050', 1, 'ABC00005');

-- Dietetycy_zwierzecy
INSERT INTO Dietetycy_zwierzecy (ID_pracownika, Specjalizacja)
VALUES
	('ABC00051', 'Ssaki drapie�ne'),
    ('ABC00052', 'Ptaki'),
    ('ABC00053', 'Gady'),
    ('ABC00054', 'P�azy'),
    ('ABC00055', 'Ssaki wodne'),
    ('ABC00056', 'Ssaki ro�lino�erne'),
    ('ABC00057', 'Nied�wiedziowate'),
    ('ABC00058', 'Ma�py starego �wiata'),
    ('ABC00059', 'Drapie�niki nocne'),
    ('ABC00060', 'Wielkie ssaki');

-- Insert data into 'Diety' table
INSERT INTO Diety (Nazwa_diety, Opis, Data_opracowania, ID_dietetyka)
VALUES 
	('Dieta dla doros�ego jaguara', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego jaguara b�d�ca �r�d�em wszystkich potrzebnych sk�adnik�w od�ywczych, z�o�ona z mi�sa oraz suplement�w', '2021-03-23', 'ABC00051'),
    ('Dieta dla doros�ej �yrafy sawannowej', 'Zr�wnowa�ona dieta dla zdrowej, doros�ej �yrafy, zawieraj�ca potrzebne sk�adniki od�ywcze z�ozona z paszy oraz warzyw', '2022-09-04', 'ABC00060'),
	('Dieta dla m�odej �yrafy sawannowej', 'Dieta przeznaczona dla �yrafy od pierwszego miesi�ca do pierwszego roku �ycia, b�d�ca uzupe�nieniem mleka matki, z�o�ona z warzyw', '2020-05-17', 'ABC00060'),
    ('Dieta dla doros�ego hipopotama nilowego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego hipopotama, z�ozona z paszy', '2022-04-15', 'ABC00055'),
    ('Dieta dla doros�ej salamandry olbrzymiej', 'Zr�wnowa�opna dieta przeznaczona dla zdrowej, doros�ej salamandry olbrzmiej, z�o�ona z ryb, bezkr�gowc�w oraz owad�w', '2023-03-01', 'ABC00054'),
	('Dieta dla doros�ej zebry stepowej', 'Zr�wnowa�ona dieta dla zdrowej, doros�ej zebry z�ozona z paszy oraz warzyw', '2022-09-04', 'ABC00056'),
	('Dieta dla doros�ego szympansa kar�owatego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego szympansa kar�owatego, zawieraj�ca wszystkie potrzebne sk�adniki od�ywcze, z�o�ona z owoc�w i owad�w', '2021-06-12', 'ABC00058'),
    ('Dieta dla doros�ego nied�wiedzia malajskiego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego nied�wiedzia malajskiego, b�d�ca �r�d�em wszystkich potrzebnych sk�adnik�w od�ywczych, z�o�ona z owad�w i owoc�w', '2023-09-30', 'ABC00057'),
    ('Dieta dla doros�ego kota pustynnego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego kota pustynnego, b�d�ca �r�d�em wszystkich potrzebnych sk�adnik�w od�ywczych, z�o�ona z bezkr�gowc�w, owad�w i suplement�w', '2022-11-18', 'ABC00059'),
    ('Dieta dla doros�ego fenka pustynnego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego fenka pustynnego, z�o�ona z owad�w, jaj oraz suplement�w', '2021-07-05', 'ABC00059'),
    ('Dieta dla doros�ego gibona bia�or�kiego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego gibbona bia�or�kiego, z�o�ona z owoc�w', '2022-04-02', 'ABC00058'),
    ('Dieta dla doros�ego emu', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego emu, z�o�ona z owoc�w i owad�w', '2023-02-14', 'ABC00052'),
    ('Dieta dla doros�ego kajmana kar�owatego', 'Zr�wnowa�ona dieta dla zdrowego, doros�ego kajmana kar�owatego, z�o�ona z ryb oraz bezkr�gowc�w', '2022-08-21', 'ABC00053'),
	('Dieta dla m�odego kajmana kar�owatego', 'Zr�wnowa�ona dieta dla m�odego kajmana kar�owatego, z�o�ona z bezkr�gowc�w i owad�w', '2023-01-10', 'ABC00053');

-- Insert data into 'Produkty_zywnosciowe' table
INSERT INTO Produkty_zywnosciowe (ID_skladnika, Nazwa_skladnika, Rozmiar_porcji, Wartosc_energetyczna_porcji, Producent)
VALUES 
    ('ZP3421', 'Owoce figowca', '100g', 520, 'ZooKarmix Polska'),
	('ZP4532', 'Banany', '300g', 440, 'ZooKarmix Polska'),
	('ZP8324', 'Jaja', '300g', 150, 'ZooKarmix Polska'),
    ('DS523', 'Mi�so wo�owe', '1,5kg', 2000, 'DzikieSmaki Sp. z o.o.'),
	('DS435', 'Mi�so jeleniowatych', '1kg', 1370, 'DzikieSmaki Sp. z o.o.'),
	('DH4935', 'Suplementy dla mi�so�erc�w', '50ml', 30, 'D�unglaSmaku Hurtownia'),
	('KP95743', 'Pasza dla du�ych ro�lino�erc�w', '500g', 100, 'KosmicznaPasza Sp. jawna'),
	('KP90734', 'Marchew', '400g', 370, 'KosmicznaPasza Sp. jawna'),
	('KP4355', 'Pasza dla hipopotam�w', '20kg', 100, 'KosmicznaPasza Sp. jawna'),
	('SH5785', 'Owady mix', '200g', 100, 'SafariHurt Dystrybutorzy'),
	('SH2754', 'Bezkr�gowce mix', '100g', 170, 'SafariHurt Dystrybutorzy'),
    ('EC543', 'Karp', '300g', 410, 'ExoHodowla Catering');

-- Insert data into 'Porcje' table
INSERT INTO Porcje (Nazwa_diety, ID_skladnika, Liczba_porcji)
VALUES 
    ('Dieta dla doros�ego jaguara', 'DS523', 1),
    ('Dieta dla doros�ego jaguara', 'DS435', 2),
	('Dieta dla doros�ego jaguara', 'DH4935', 5),
    ('Dieta dla doros�ej �yrafy sawannowej', 'KP95743', 4),
    ('Dieta dla doros�ej �yrafy sawannowej', 'KP90734', 2),
	('Dieta dla m�odej �yrafy sawannowej', 'KP90734', 1),
    ('Dieta dla doros�ego hipopotama nilowego', 'KP4355', 3),
    ('Dieta dla doros�ej salamandry olbrzymiej', 'EC543', 3),
	('Dieta dla doros�ej salamandry olbrzymiej', 'SH5785', 2),
	('Dieta dla doros�ej salamandry olbrzymiej', 'SH2754', 2),
	('Dieta dla doros�ej zebry stepowej', 'KP95743', 2),
    ('Dieta dla doros�ej zebry stepowej', 'KP90734', 1),
    ('Dieta dla doros�ego szympansa kar�owatego', 'ZP3421', 3),
	('Dieta dla doros�ego szympansa kar�owatego', 'ZP4532', 2),
	('Dieta dla doros�ego szympansa kar�owatego', 'SH5785', 1),
    ('Dieta dla doros�ego nied�wiedzia malajskiego', 'ZP3421', 5),
	('Dieta dla doros�ego nied�wiedzia malajskiego', 'ZP4532', 1),
	('Dieta dla doros�ego nied�wiedzia malajskiego', 'SH5785', 2),
    ('Dieta dla doros�ego kota pustynnego', 'SH5785', 1),
	('Dieta dla doros�ego kota pustynnego', 'SH2754', 1),
	('Dieta dla doros�ego kota pustynnego', 'DH4935', 1),
    ('Dieta dla doros�ego fenka pustynnego', 'SH5785', 2),
	('Dieta dla doros�ego fenka pustynnego', 'ZP8324', 1),
	('Dieta dla doros�ego fenka pustynnego', 'DH4935', 1),
    ('Dieta dla doros�ego gibona bia�or�kiego', 'ZP3421', 4),
	('Dieta dla doros�ego gibona bia�or�kiego', 'ZP4532', 1),
    ('Dieta dla doros�ego emu', 'ZP3421', 2),
	('Dieta dla doros�ego emu', 'ZP4532', 2),
	('Dieta dla doros�ego emu', 'SH5785', 1),
    ('Dieta dla doros�ego kajmana kar�owatego', 'EC543', 2),
	('Dieta dla doros�ego kajmana kar�owatego', 'SH2754', 2),
    ('Dieta dla m�odego kajmana kar�owatego', 'SH2754', 1),
	('Dieta dla m�odego kajmana kar�owatego', 'SH5785', 3);

-- Insert data into 'Wybiegi' table
INSERT INTO Wybiegi (Nazwa_wybiegu)
VALUES 
    ('�redni wybieg tropikalny z wod�'),
	('Du�y wybieg sawannowy'),
	('�redni wodny wybieg z pla��'),
    ('Du�e terrarium z aktywn� rzek�'),
	('Du�y wybieg dla cz�owiekowatych'),
	('�redni wybieg dla nied�wiedziowatych'),
	('Ma�y wybieg dla ssak�w pustynnych'),
	('�redni wybieg dla gibbonowatych'),
	('Du�y wybieg dla wielkich ptak�w'),
	('Du�e wodno-l�dowe terrarium'),
	('Ma�y zalesiony wybieg');

-- Insert data into 'Gatunki' table
INSERT INTO Gatunki (Nazwa_naukowa_gatunku, Nazwa_zwyczajowa_gatunku, Typ_diety, Poziom_niebezpieczenstwa)
VALUES 
    ('Panthera onca', 'Jaguar ameryka�ski', 'Mi�so�ercy', 5),					-- ssak drapie�ny
    ('Giraffa camelopardalis', '�yrafa sawannowa', 'Ro�lino�ercy', 3),			-- wielki ssak
    ('Hippopotamus amphibius', 'Hipopotam nilowy', 'Ro�lino�ercy', 5),			-- ssak wodny
	('Andrias davidianus', 'Salamandra olbrzymia chi�ska', 'Mi�so�ercy', 2),	-- p�az
	('Equus quagga', 'Zebra stepowa', 'Ro�lino�ercy', 2),						-- ssak ro�lino�erny
	('Pan paniscus', 'Szympans kar�owaty', 'Wszystko�ercy', 1),					-- ma�pa starego �wiata
	('Helarctos malayanus', 'Biruang malajski', 'Wszystko�ercy', 3),			-- nied�wiedziowate
	('Felis margarita', 'Kot pustynny', 'Mi�so�ercy', 1),						-- nocny drapie�nik
	('Vulpes zerda', 'Fenek pustynny', 'Wszystko�ercy', 1),						-- nocny drapie�nik
	('Hylobates lar', 'Gibbon bia�or�ki', 'Ro�lino�ercy', 1),					-- ma�pa starego �wiata
	('Dromaius novaehollandiae', 'Emu zwyczajne', 'Wszystko�ercy', 2),			-- ptak
	('Paleosuchus palpebrosus', 'Kajman kar�owaty', 'Mi�so�ercy', 3);			-- gad

-- Insert data into 'Zwierzeta' table
INSERT INTO Zwierzeta (ID_chipa, Imie, Data_urodzenia, Stan_zdrowotny, Nazwa_diety, Nazwa_wybiegu, Nazwa_naukowa_gatunku)
VALUES 
    ('J007', 'Yogi', '2018-05-10', 'Zdrowy', 'Dieta dla doros�ego jaguara', '�redni wybieg tropikalny z wod�', 'Panthera onca'),

    ('�421', 'Zephyr', '2017-08-25', 'Zdrowa', 'Dieta dla doros�ej �yrafy sawannowej', 'Du�y wybieg sawannowy', 'Giraffa camelopardalis'),
    ('�325', 'Harmonia', '2023-05-03', 'Zdrowy', 'Dieta dla m�odej �yrafy sawannowej', 'Du�y wybieg sawannowy', 'Giraffa camelopardalis'),

    ('H453', 'Bella', '2016-11-15', 'Zdrowa', 'Dieta dla doros�ego hipopotama nilowego', '�redni wodny wybieg z pla��', 'Hippopotamus amphibius'),
	('H512', 'Koral', '2016-05-01', 'Zdrowy', 'Dieta dla doros�ego hipopotama nilowego', '�redni wodny wybieg z pla��', 'Hippopotamus amphibius'),
	('H565', 'Fiona', '2017-10-11', 'Zdrowa', 'Dieta dla doros�ego hipopotama nilowego', '�redni wodny wybieg z pla��', 'Hippopotamus amphibius'),

    ('S664', 'Magnus', '2020-04-22', 'Zdrowy', 'Dieta dla doros�ej salamandry olbrzymiej', 'Du�e terrarium z aktywn� rzek�', 'Andrias davidianus'),

	('Z457', 'Echo', '2018-01-27', 'Zdrowa', 'Dieta dla doros�ej zebry stepowej', 'Du�y wybieg sawannowy', 'Equus quagga'),
    ('Z695', 'Luna', '2019-11-04', 'Zdrowa', 'Dieta dla doros�ej zebry stepowej', 'Du�y wybieg sawannowy', 'Equus quagga'),
	('Z347', 'Kairo', '2016-04-18', 'Zdrowy', 'Dieta dla doros�ej zebry stepowej', 'Du�y wybieg sawannowy', 'Equus quagga'),
	('Z536', 'Jasper', '2017-08-02', 'Zdrowy', 'Dieta dla doros�ej zebry stepowej', 'Du�y wybieg sawannowy', 'Equus quagga'),
	('Z521', 'Willow', '2016-02-14', 'Zdrowy', 'Dieta dla doros�ej zebry stepowej', 'Du�y wybieg sawannowy', 'Equus quagga'),
	
    ('S841', 'Banana Joe', '2018-03-25', 'Zdrowy', 'Dieta dla doros�ego szympansa kar�owatego', 'Du�y wybieg dla cz�owiekowatych', 'Pan paniscus'),
    ('S269', 'Chimpy', '2019-09-08', 'Zdrowy', 'Dieta dla doros�ego szympansa kar�owatego', 'Du�y wybieg dla cz�owiekowatych', 'Pan paniscus'),
	('S431', 'Zuri', '2018-08-16', 'Zdrowa', 'Dieta dla doros�ego szympansa kar�owatego', 'Du�y wybieg dla cz�owiekowatych', 'Pan paniscus'),

    ('M025', 'Langit', '2017-02-14', 'Zdrowy', 'Dieta dla doros�ego nied�wiedzia malajskiego', '�redni wybieg dla nied�wiedziowatych', 'Helarctos malayanus'),
	('M590', 'Bunga', '2017-06-18', 'Zdrowy', 'Dieta dla doros�ego nied�wiedzia malajskiego', '�redni wybieg dla nied�wiedziowatych', 'Helarctos malayanus'),

    ('K721', 'Mirage', '2020-07-30', 'Zdrowa', 'Dieta dla doros�ego kota pustynnego', 'Ma�y wybieg dla ssak�w pustynnych', 'Felis margarita'),

    ('F934', 'Dune', '2021-02-18', 'Zdrowy', 'Dieta dla doros�ego fenka pustynnego', 'Ma�y wybieg dla ssak�w pustynnych', 'Vulpes zerda'),

    ('G690', 'Milo', '2018-11-05', 'Zdrowy', 'Dieta dla doros�ego gibona bia�or�kiego', '�redni wybieg dla gibbonowatych', 'Hylobates lar'),
	('G078', 'Zara', '2017-07-03', 'Zdrowa', 'Dieta dla doros�ego gibona bia�or�kiego', '�redni wybieg dla gibbonowatych', 'Hylobates lar'),
	('G132', 'Kaya', '2016-11-07', 'Zdrowa', 'Dieta dla doros�ego gibona bia�or�kiego', '�redni wybieg dla gibbonowatych', 'Hylobates lar'),
	('G204', 'Haku', '2017-02-05', 'Zdrowy', 'Dieta dla doros�ego gibona bia�or�kiego', '�redni wybieg dla gibbonowatych', 'Hylobates lar'),

    ('E326', 'Rocky', '2019-06-30', 'Zdrowy', 'Dieta dla doros�ego emu', 'Du�y wybieg dla wielkich ptak�w', 'Dromaius novaehollandiae'),
	('E807', 'Samba', '2018-11-21', 'Zdrowy', 'Dieta dla doros�ego emu', 'Du�y wybieg dla wielkich ptak�w', 'Dromaius novaehollandiae'),

    ('K147', 'Spike', '2016-07-12', 'Zdrowy', 'Dieta dla doros�ego kajmana kar�owatego', 'Du�e wodno-l�dowe terrarium', 'Paleosuchus palpebrosus');

-- Insert data into 'Karmienia' table
INSERT INTO Karmienia (ID_karmienia, Data_i_godzina, Czy_dokonane, ID_opiekuna, ID_chipa)
VALUES 
    ('JAN10001', '2023-01-10 09:30:00', 1, 'ABC00011', 'J007'),
    ('JAN11002', '2023-01-11 10:15:00', 1, 'ABC00012', '�421'),
    ('JAN12003', '2023-01-12 11:00:00', 1, 'ABC00013', 'H453'),
    ('JAN13004', '2023-01-13 14:45:00', 1, 'ABC00014', 'S664'),
    ('JAN14005', '2023-01-14 16:30:00', 1, 'ABC00015', 'Z457'),
	('JAN15006', '2023-01-15 08:00:00', 1, 'ABC00016', 'J007'),
	('JAN16007', '2023-01-16 09:45:00', 1, 'ABC00017', '�325'),
	('JAN17008', '2023-01-17 12:30:00', 1, 'ABC00018', 'H512'),
	('JAN18009', '2023-01-18 14:15:00', 1, 'ABC00019', 'S664'),
	('JAN19010', '2023-01-19 15:00:00', 1, 'ABC00020', 'Z536'),
	('JAN20011', '2023-01-20 08:30:00', 1, 'ABC00021', 'H565'),
	('JAN21012', '2023-01-21 10:00:00', 1, 'ABC00022', 'S269'),
	('JAN22013', '2023-01-22 11:45:00', 1, 'ABC00023', 'M025'),
	('JAN23014', '2023-01-23 13:30:00', 1, 'ABC00024', 'K721'),
	('JAN24015', '2023-01-24 16:15:00', 1, 'ABC00025', 'F934'),
	('JAN25016', '2023-01-25 08:45:00', 1, 'ABC00026', 'G690'),
	('JAN26017', '2023-01-26 09:30:00', 1, 'ABC00027', 'E326'),
	('JAN27018', '2023-01-27 12:15:00', 1, 'ABC00028', 'K147'),
	('JAN28019', '2023-01-28 14:00:00', 1, 'ABC00029', 'J007'),
	('JAN29020', '2023-01-29 15:45:00', 1, 'ABC00030', 'M590'),
	('JAN30021', '2023-01-30 08:15:00', 1, 'ABC00031', 'K721'),
	('JAN31022', '2023-01-31 10:30:00', 1, 'ABC00032', 'Z695'),
	('FEB01023', '2023-02-01 11:00:00', 1, 'ABC00033', 'Z695'),
	('FEB02024', '2023-02-02 14:45:00', 1, 'ABC00034', 'E807'),
	('FEB03025', '2023-02-03 16:30:00', 1, 'ABC00035', 'G690'),
	('FEB04026', '2023-02-04 08:00:00', 1, 'ABC00036', 'E807'),
	('FEB05027', '2023-02-05 09:45:00', 1, 'ABC00037', 'G078'),
	('FEB06028', '2023-02-06 12:30:00', 1, 'ABC00038', 'G132'),
	('FEB07029', '2023-02-07 14:15:00', 1, 'ABC00039', 'G204'),
	('FEB08030', '2023-02-08 15:00:00', 1, 'ABC00040', 'K721'),
	('FEB09031', '2023-02-09 08:30:00', 1, 'ABC00041', 'E326'),
	('FEB10032', '2023-02-10 10:00:00', 1, 'ABC00042', 'M025'),
	('FEB11033', '2023-02-11 11:45:00', 1, 'ABC00043', 'M590'),
	('FEB12034', '2023-02-12 14:30:00', 1, 'ABC00044', 'Z536'),
	('FEB13035', '2023-02-13 16:15:00', 1, 'ABC00045', 'Z695'),
	('FEB14036', '2023-02-14 08:45:00', 1, 'ABC00046', 'S664'),
	('FEB15037', '2023-02-15 09:30:00', 1, 'ABC00047', 'M590'),
	('FEB16038', '2023-02-16 12:15:00', 1, 'ABC00048', 'Z536'),
	('FEB17039', '2023-02-17 14:00:00', 1, 'ABC00049', 'E807'),
	('FEB18040', '2023-02-18 15:45:00', 1, 'ABC00050', 'K721'),
	('FEB19041', '2023-02-19 08:15:00', 1, 'ABC00011', 'J007'),
	('FEB20042', '2023-02-20 10:00:00', 1, 'ABC00012', '�421'),
	('FEB21043', '2023-02-21 11:45:00', 1, 'ABC00013', 'H453'),
	('FEB22044', '2023-02-22 14:30:00', 1, 'ABC00014', 'S664'),
	('FEB23045', '2023-02-23 16:15:00', 1, 'ABC00015', 'Z457'),
	('FEB24046', '2023-02-24 08:45:00', 1, 'ABC00016', 'J007'),
	('FEB25047', '2023-02-25 09:30:00', 1, 'ABC00017', '�325'),
	('FEB26048', '2023-02-26 12:15:00', 1, 'ABC00018', 'H512'),
	('FEB27049', '2023-02-27 14:00:00', 1, 'ABC00019', 'S664'),
	('FEB28050', '2023-02-28 15:45:00', 1, 'ABC00020', 'Z536'),
	('MAR01051', '2023-03-01 08:15:00', 1, 'ABC00021', 'H565'),
	('MAR02052', '2023-03-02 10:00:00', 1, 'ABC00022', 'S269'),
	('MAR03053', '2023-03-03 11:45:00', 1, 'ABC00023', 'M025'),
	('MAR04054', '2023-03-04 14:30:00', 1, 'ABC00024', 'K721'),
	('MAR05055', '2023-03-05 16:15:00', 1, 'ABC00025', 'F934'),
	('MAR06056', '2023-03-06 08:45:00', 1, 'ABC00026', 'G690'),
	('MAR07057', '2023-03-07 09:30:00', 1, 'ABC00027', 'E326'),
	('MAR08058', '2023-03-08 12:15:00', 1, 'ABC00028', 'K147'),
	('MAR09059', '2023-03-09 14:00:00', 1, 'ABC00029', 'J007'),
	('MAR10060', '2023-03-10 15:45:00', 1, 'ABC00030', 'M590'),
	('MAR10061', '2023-03-10 17:55:00', 0, 'ABC00027', 'Z457'),
	('MAR10062', '2023-03-10 18:30:00', 0, 'ABC00024', 'K721');