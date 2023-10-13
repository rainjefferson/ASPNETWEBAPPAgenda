CREATE TABLE [dbo].[tbcontato]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [nome] NVARCHAR(50) NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [telefone] NVARCHAR(20) NOT NULL
)
