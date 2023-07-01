DROP TABLE IF EXISTS [Tabela_Stanowiska]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tabela_Stanowiska](
	[id_s] INT NOT NULL,
	[nazwa] VARCHAR(50) NOT NULL,
	CONSTRAINT [PK_Tabela_Stanowiska] PRIMARY KEY CLUSTERED 
(
	[id_s] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO Tabela_Stanowiska VALUES (1,'asystent')
INSERT INTO Tabela_Stanowiska VALUES (2,'adiunkt')
INSERT INTO Tabela_stanowiska VALUES (3,'profesor')
INSERT INTO Tabela_stanowiska VALUES (4,'sekretarka')
INSERT INTO Tabela_Stanowiska VALUES (5,'lekarz')
INSERT INTO Tabela_Stanowiska VALUES (6,'stomatolog')
INSERT INTO Tabela_Stanowiska VALUES (7,'prawnik')
INSERT INTO Tabela_Stanowiska VALUES (8,'fryzjer')
INSERT INTO Tabela_Stanowiska VALUES (9,'kosmetyczka')
INSERT INTO Tabela_Stanowiska VALUES (10,'architekt')