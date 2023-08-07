BEGIN TRANSACTION;
GO

ALTER TABLE [Armas] ADD [PersonagemID] int NOT NULL DEFAULT 0;
GO

UPDATE [Armas] SET [PersonagemID] = 1
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 2
WHERE [Id] = 2;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 3
WHERE [Id] = 3;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 4
WHERE [Id] = 4;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 5
WHERE [Id] = 5;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 6
WHERE [Id] = 6;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemID] = 7
WHERE [Id] = 7;
SELECT @@ROWCOUNT;

GO

CREATE UNIQUE INDEX [IX_Armas_PersonagemID] ON [Armas] ([PersonagemID]);
GO

ALTER TABLE [Armas] ADD CONSTRAINT [FK_Armas_Personagens_PersonagemID] FOREIGN KEY ([PersonagemID]) REFERENCES [Personagens] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230807112729_MigracaoUmParaUm', N'7.0.4');
GO

COMMIT;
GO

