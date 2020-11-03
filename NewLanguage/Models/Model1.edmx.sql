
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/03/2020 05:34:50
-- Generated from EDMX file: C:\Users\Administrator\source\repos\NewLanguage\NewLanguage\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UnitFeedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Feedbacks] DROP CONSTRAINT [FK_UnitFeedback];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Units]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Units];
GO
IF OBJECT_ID(N'[dbo].[Feedbacks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Feedbacks];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Units'
CREATE TABLE [dbo].[Units] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UnitName] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Feedbacks'
CREATE TABLE [dbo].[Feedbacks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [Rating] nvarchar(max)  NOT NULL,
    [UnitId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Units'
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [PK_Units]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Feedbacks'
ALTER TABLE [dbo].[Feedbacks]
ADD CONSTRAINT [PK_Feedbacks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UnitId] in table 'Feedbacks'
ALTER TABLE [dbo].[Feedbacks]
ADD CONSTRAINT [FK_UnitFeedback]
    FOREIGN KEY ([UnitId])
    REFERENCES [dbo].[Units]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitFeedback'
CREATE INDEX [IX_FK_UnitFeedback]
ON [dbo].[Feedbacks]
    ([UnitId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------