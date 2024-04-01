CREATE TABLE [pets] (
  [pet_id] int PRIMARY KEY,
  [name] nvarchar(255),
  [kind] nvarchar(255),
  [item_name] nvarchar(255),
  [gender] nvarchar(255),
  [age] int,
  [owner_id] int
)
GO

CREATE TABLE [Owners] (
  [Owner_id] int(PK),
  [Name] nvarchar(255),
  [Surname] nvarchar(255),
  [StreetAddress] nvarchar(255),
  [State] nvarchar(255),
  [Statefull] nvarchar(255),
  [Zipcode] nvarchar(255)
)
GO

CREATE TABLE [ProcedureDetails] (
  [ProcedureType] nvarchar(255),
  [ProcedureSubcode] int,
  [Description] nvarchar(255),
  [price] int,
  PRIMARY KEY ([ProcedureType], [ProcedureSubcode])
)
GO

CREATE TABLE [ProcedureHistory] (
  [pet_id] nvarchar(255),
  [date] datetime,
  [ProcedureType] nvarchar(255),
  [ProcedureSubcode] int
)
GO

ALTER TABLE [pets] ADD FOREIGN KEY ([owner_id]) REFERENCES [Owners] ([Owner_id])
GO

ALTER TABLE [ProcedureHistory] ADD FOREIGN KEY ([pet_id]) REFERENCES [pets] ([pet_id])
GO

ALTER TABLE [ProcedureHistory] ADD FOREIGN KEY ([ProcedureType]) REFERENCES [ProcedureDetails] ([ProcedureType])
GO

ALTER TABLE [ProcedureHistory] ADD FOREIGN KEY ([ProcedureSubcode]) REFERENCES [ProcedureDetails] ([ProcedureSubcode])
GO
