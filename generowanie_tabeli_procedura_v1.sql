-- drop procedure if exists GenerateTable
CREATE PROCEDURE GenerateTable
    @liczba_wierszy INT,
    @tabela_uzyta_do_generacji NVARCHAR(200),
    @nazwa_tabeli_docelowej NVARCHAR(200),
    @nazwy_kolumn_wejsciowych NVARCHAR(MAX)
AS
BEGIN
    -- Tworzenie tabeli docelowej uzywajac tabeli uzytej do generacji
    DECLARE @Dynamicznie NVARCHAR(MAX)
    SET @Dynamicznie = 'CREATE TABLE ' + QUOTENAME(@nazwa_tabeli_docelowej) + ' ('
    DECLARE @Tabela TABLE (nazwa_kolumny NVARCHAR(200))
    INSERT INTO @Tabela (nazwa_kolumny)
    SELECT value
    FROM STRING_SPLIT(@nazwy_kolumn_wejsciowych, ',')
    DECLARE @licznik INT = 1
    DECLARE @ilosc_kolumn INT = (SELECT COUNT(*) FROM @Tabela)
    WHILE @licznik <= @ilosc_kolumn
    BEGIN
        DECLARE @nazwakolumny_petla NVARCHAR(200)
        SELECT @nazwakolumny_petla = nazwa_kolumny
        FROM @Tabela
        WHERE nazwa_kolumny = (SELECT nazwa_kolumny
            FROM @Tabela
            ORDER BY (1)
            OFFSET (@licznik - 1) ROWS FETCH NEXT 1 ROWS ONLY)
        SET @Dynamicznie = @Dynamicznie + QUOTENAME(@nazwakolumny_petla) + ' NVARCHAR(MAX), '
        SET @licznik = @licznik + 1
    END
    SET @Dynamicznie = LEFT(@Dynamicznie, LEN(@Dynamicznie) - 1) + ');'
    EXEC sp_executesql @Dynamicznie;
    -- generowanie losowych danych dla kazdej kolumny
	-- wstawianie tych danych do kolumny tabeli docelowej
    SET @licznik = 1
    WHILE @licznik <= @ilosc_kolumn
    BEGIN
        DECLARE @nazwakolumny_petla2 NVARCHAR(200)
        SELECT @nazwakolumny_petla2 = nazwa_kolumny
        FROM @Tabela
        WHERE nazwa_kolumny = (SELECT nazwa_kolumny
            FROM @Tabela
            ORDER BY (1)
            OFFSET (@licznik - 1) ROWS FETCH NEXT 1 ROWS ONLY)
        SET @Dynamicznie = 'INSERT INTO ' + QUOTENAME(@nazwa_tabeli_docelowej) + ' (' + QUOTENAME(@nazwakolumny_petla2) + ')
        EXEC RandomNumericOrCategorical ''' + @tabela_uzyta_do_generacji + ''', ''' + @nazwakolumny_petla2 + ''', @liczba_wierszy;'
        EXEC sp_executesql @Dynamicznie, N'@liczba_wierszy INT', @liczba_wierszy;
        SET @licznik = @licznik + 1
    END
    SET @Dynamicznie = 'SELECT * FROM ' + QUOTENAME(@nazwa_tabeli_docelowej) + ';'
    EXEC sp_executesql @Dynamicznie;
END

--drop table Tabela_proba

EXEC GenerateTable @liczba_wierszy = 10, @tabela_uzyta_do_generacji = 'Tabela_Osoby', @nazwa_tabeli_docelowej = 'Tabela_proba', @nazwy_kolumn_wejsciowych = 'id_os,nazwisko,imie1';
