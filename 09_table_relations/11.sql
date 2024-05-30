ALTER TABLE countries
ADD CONSTRAINT fk_continent
FOREIGN KEY (continent_code) REFERENCES continents(continent_code) ON DELETE CASCADE;

ALTER TABLE countries
ADD CONSTRAINT fk_currency
FOREIGN KEY (currency_code) REFERENCES currencies(currency_code) ON DELETE CASCADE;