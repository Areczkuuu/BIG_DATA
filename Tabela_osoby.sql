DROP TABLE IF EXISTS [Tabela_Osoby]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tabela_Osoby](
	[id_os] INT NOT NULL,
	[nazwisko] VARCHAR(50) NOT NULL,
	[imie1] VARCHAR(50) NOT NULL,
	[imie2] VARCHAR(50),
	[d_ur] DATE,
	[plec] CHAR(1) NOT NULL CONSTRAINT Tabela_Osoby_plec_CH CHECK (plec='M' OR plec='K'),
	CONSTRAINT [PK_Tabela_Osoby] PRIMARY KEY CLUSTERED 
(
	[id_os] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO Tabela_Osoby VALUES
(1,'Lis','Jan',Null,CONVERT(DATE,'21/10/1978',103),'M');
INSERT INTO Tabela_Osoby VALUES
(2,'Kot','Adam','Marek',CONVERT(DATE,'21/11/1980',103),'M');
INSERT INTO Tabela_Osoby VALUES
(3,'Norek','Tadeusz',Null,CONVERT(DATE,'23/10/1982',103),'M');
INSERT INTO Tabela_Osoby VALUES
(4,'Krawczyk','Adam',Null,CONVERT(DATE,'02/06/1982',103),'M');
INSERT INTO Tabela_Osoby VALUES
(5,'Lis','Anna',Null,CONVERT(DATE,'23/12/1968',103),'K');
INSERT INTO Tabela_Osoby VALUES
(6,'Kowalska','Ewa',Null,CONVERT(DATE,'11/05/1979',103),'K');
INSERT INTO Tabela_Osoby VALUES
(7,'Nowak','Maria','Anna',CONVERT(DATE,'12/07/1979',103),'K');
INSERT INTO Tabela_Osoby VALUES
(8,'Duda','Barbara',Null,CONVERT(DATE,'20/12/1984',103),'K');
INSERT INTO Tabela_Osoby VALUES
(9,'Kula','Katarzyna',Null,CONVERT(DATE,'12/11/1983',103),'K');
INSERT INTO Tabela_Osoby VALUES
(10,'Murek','Danuta',Null,CONVERT(DATE,'17/08/1975',103),'K');
INSERT INTO Tabela_Osoby VALUES
(11,'Dudek','Jan',Null,CONVERT(DATE,'22/10/1948',103),'M');
INSERT INTO Tabela_Osoby VALUES
(12,'Nowak','Adam','Marek',CONVERT(DATE,'11/11/1970',103),'M');
INSERT INTO Tabela_Osoby VALUES
(13,'Korek','Tadeusz',Null,CONVERT(DATE,'21/10/1978',103),'M');
INSERT INTO Tabela_Osoby VALUES
(14,'Wojtczak','Adam',Null,CONVERT(DATE,'12/06/1985',103),'M');
INSERT INTO Tabela_Osoby VALUES
(15,'Piecha','Anna',Null,CONVERT(DATE,'25/11/1965',103),'K');
INSERT INTO Tabela_Osoby VALUES
(16,'Socha','Ewa',Null,CONVERT(DATE,'13/07/1977',103),'K');
INSERT INTO Tabela_Osoby VALUES
(17,'Turecka','Maria','Anna',CONVERT(DATE,'22/03/1979',103),'K');
INSERT INTO Tabela_Osoby VALUES
(18,'Dyba','Barbara',Null,CONVERT(DATE,'22/05/1983',103),'K');
INSERT INTO Tabela_Osoby VALUES
(19,'Wilk','Katarzyna',Null,CONVERT(DATE,'16/11/1943',103),'K');
INSERT INTO Tabela_Osoby VALUES
(20,'Grzesik','Danuta',Null,CONVERT(DATE,'11/06/1976',103),'K');
INSERT INTO Tabela_Osoby VALUES
(21,'Polak','Jan',Null,CONVERT(DATE,'22/10/1958',103),'M');
INSERT INTO Tabela_Osoby VALUES
(22,'Czech','Adam','Marek',CONVERT(DATE,'11/04/1971',103),'M');
INSERT INTO Tabela_Osoby VALUES
(23,'Kuna','Tadeusz',Null,CONVERT(DATE,'02/10/1953',103),'M');
INSERT INTO Tabela_Osoby VALUES
(24,'Waniek','Adam',Null,CONVERT(DATE,'12/06/1985',103),'M');
INSERT INTO Tabela_Osoby VALUES
(25,'Plich','Anna',Null,CONVERT(DATE,'21/10/1978',103),'K');
INSERT INTO Tabela_Osoby VALUES
(26,'Sowa','Ewa',Null,CONVERT(DATE,'13/07/1957',103),'K');
INSERT INTO Tabela_Osoby VALUES
(27,'Turek','Maria','Anna',CONVERT(DATE,'22/03/1949',103),'K');
INSERT INTO Tabela_Osoby VALUES
(28,'Drops','Barbara',Null,CONVERT(DATE,'22/05/1963',103),'K');
INSERT INTO Tabela_Osoby VALUES
(29,'Wilga','Katarzyna',Null,CONVERT(DATE,'17/11/1953',103),'K');
INSERT INTO Tabela_Osoby VALUES
(30,'Got','Danuta',Null,CONVERT(DATE,'12/06/1946',103),'K');