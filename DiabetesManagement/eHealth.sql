
CREATE DATABASE [eHealth]
GO
USE [eHealth1]
/****** Object:  Table [dbo].[tbl_HealthTips]    Script Date: 11/30/2017 4:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HealthTips](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Health_Tip_Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_HealthTips] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_MediaMaster]    Script Date: 11/30/2017 4:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MediaMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[URL] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[PublishedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_MediaMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
/****** Object:  Table [dbo].[tbl_SKeyWordMaster]    Script Date: 11/30/2017 4:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SKeyWordMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scientific_Name] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_SKeyWordMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_WordMaster]    Script Date: 11/30/2017 4:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_WordMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [varchar](50) NULL,
	[SKeywordId] [int] NULL,
 CONSTRAINT [PK_tbl_WordMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SKeyWordMaster] ON 

GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (1, N'Acesulfame-k', NULL)
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (2, N'Acetone', N'A chemical formed in the blood when the body breaks down fat instead of sugar for energy;')
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (3, N'Acidosis', N'Too much acid in the body, usually from the production of ketones like acetone')
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (4, N'Acute', N'Abrupt onset that is usually severe; happens for a limited period of time.')
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (5, N'type-1-diabetes', NULL)
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (6, N'Diabetic ketoacidosis', N'A serious diabetes complication where the body produces excess blood acids (ketones).')
GO
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (7, N'Low blood sugar', NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_SKeyWordMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_WordMaster] ON 

GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (1, N'Extreme thirst', 1)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (2, N'Urinating a lot', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (3, N'Being very thirsty', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (4, N'Losing weight without trying', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (5, N'Increased hunger.', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (6, N'Blurry vision', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (7, N'Feeling very tired', 5)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (8, N'Flushed, hot, dry skin', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (9, N'Loss of appetite, belly pain, and vomiting.', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (10, N'A strong, fruity breath odor', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (11, N'Rapid, deep breathing.', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (13, N'Restlessness', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (14, N'drowsiness', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (15, N' difficulty waking up', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (16, N'confusion', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (17, N'coma', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (19, N'lack interest in their normal activities', 6)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (20, N'Sweating', 7)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (21, N'Shakiness', 7)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (22, N'Weakness', 7)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (23, N'Hunger', 7)
GO
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (24, N'Confusion', 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_WordMaster] OFF
GO
ALTER TABLE [dbo].[tbl_WordMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_WordMaster_tbl_SKeyWordMaster] FOREIGN KEY([SKeywordId])
REFERENCES [dbo].[tbl_SKeyWordMaster] ([Id])
GO
ALTER TABLE [dbo].[tbl_WordMaster] CHECK CONSTRAINT [FK_tbl_WordMaster_tbl_SKeyWordMaster]
GO


SET IDENTITY_INSERT [dbo].[tbl_MediaMaster] ON 

GO
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (1, N'Are You One Of 30 Million Americans With Diabetes? A Drastic Diet May Help', N'https://www.forbes.com/sites/victoriaforster/2017/12/06/are-you-one-of-30-million-americans-with-diabetes-a-drastic-diet-may-help/#26e98f0210cc', N'People with type 2 diabetes have been able to reverse their condition through extreme dieting, according to a study published in The Lancet by researchers in the UK that featured 298 participants and compared people prescribed a radical, calorie-restricted diet with those who received conventional care including drugs', CAST(N'2017-12-06 04:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (2, N'FDA Approves Drug That Helps Diabetes, Weight Loss', N'https://www.webmd.com/diabetes/news/20171206/fda-approves-drug-that-helps-diabetes-weight-loss', N'A new diabetes drug that lowers blood sugar and also helps people lose weight has been approved by the U.S. Food and Drug Administration.', CAST(N'2017-12-04 08:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (3, N'FDA Approves Semaglutide for Type 2 Diabetes', N'https://www.medscape.com/viewarticle/889631', N'The US Food and Drug Administration (FDA) has approved semaglutide (Ozempic, Novo Nordisk) as an adjunct to diet and exercise for the treatment of type 2 diabetes in adults.', CAST(N'2017-12-03 06:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_MediaMaster] OFF
GO
