CREATE TABLE klienci (
    id SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    telefon VARCHAR(15),
    kraj VARCHAR(50),
    rodzaj_karnetu VARCHAR(20) NOT NULL DEFAULT 'Brak'
        CHECK (rodzaj_karnetu IN ('Miesięczny', 'Roczny', 'Brak')),
    status_karnetu VARCHAR(20) NOT NULL DEFAULT 'Brak'
        CHECK (status_karnetu IN ('Aktywny', 'Wygasł', 'Brak'))
);
CREATE TABLE karnety (
    id_karnetu SERIAL PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL,
    cena DECIMAL(8,2) NOT NULL CHECK (cena >= 0),
    okres_dni INT NOT NULL CHECK (okres_dni > 0)
);
INSERT INTO klienci
    (imie, nazwisko, telefon, kraj, rodzaj_karnetu, status_karnetu)
VALUES
    ('Jan', 'Kowalski', '+48965230120', 'Polska', 'Miesięczny', 'Aktywny'),
    ('Ewa', 'Gromala', '+48965210347', 'Polska', 'Miesięczny', 'Aktywny'),
    ('Kornelia', 'Gromala', '+48952630102', 'Polska', 'Roczny', 'Aktywny'),
    ('Renata', 'Supramowicz', '+4852410630', 'Polska', 'Roczny', 'Aktywny');

INSERT INTO karnety (nazwa, cena, okres_dni)
VALUES
    ('Miesięczny', 180.00, 30),
    ('Roczny', 1350.00, 365)
    ('Tygodniowy', 45.00, 7)
	