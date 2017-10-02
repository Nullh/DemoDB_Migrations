-- <Migration ID="777cfa25-c3d8-49a1-b356-c874d27cdbea" />
GO

PRINT N'Creating [dbo].[Title]...';


GO
CREATE TABLE [dbo].[Title] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [Rating]   NCHAR (3)     NOT NULL,
    [Director] INT           NOT NULL,
    CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[Title]...';


GO
ALTER TABLE [dbo].[Title]
    ADD CONSTRAINT [DF_Title_Rating] DEFAULT 'PG' FOR [Rating];

