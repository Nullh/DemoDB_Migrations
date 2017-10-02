-- <Migration ID="6adf2754-5e78-4892-921a-8b13b5715214" />
GO

PRINT N'Creating [dbo].[Director]...';


GO
CREATE TABLE [dbo].[Director] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating [dbo].[Title->Director Constraint]...';


GO
ALTER TABLE [Title] 
ADD CONSTRAINT [FK_Director]
FOREIGN KEY([Director]) REFERENCES [Director]([Id]);

GO

