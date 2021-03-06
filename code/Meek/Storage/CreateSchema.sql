CREATE TABLE [MeekContent](
	[Route] [nvarchar](255) NOT NULL,
	[Partial] [bit] NOT NULL,
	[Data] [ntext] NULL,
	[Title] [nvarchar](200) NULL
)

GO

ALTER TABLE [MeekContent] ADD  CONSTRAINT [PK_Content] PRIMARY KEY 
(
	[Route]
)

GO

CREATE TABLE [MeekFile](
	[Id] [nvarchar](100) NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[ContentType] [nvarchar](100) NULL,
	[Data] [image] NULL
)

GO

ALTER TABLE [MeekFile] ADD  CONSTRAINT [PK_MeekFile] PRIMARY KEY 
(
	[Id]
)

GO

ALTER TABLE [MeekContent] ADD  CONSTRAINT [UQ__Content__000000000000000C] UNIQUE 
(
	[Route]
)