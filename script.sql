USE [master]
GO
/****** Object:  Database [eHealth]    Script Date: 12/12/2017 9:20:52 AM ******/
CREATE DATABASE [eHealth]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eHealth', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\eHealth.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eHealth_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\eHealth_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [eHealth] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eHealth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eHealth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eHealth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eHealth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eHealth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eHealth] SET ARITHABORT OFF 
GO
ALTER DATABASE [eHealth] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [eHealth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eHealth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eHealth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eHealth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eHealth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eHealth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eHealth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eHealth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eHealth] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eHealth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eHealth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eHealth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eHealth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eHealth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eHealth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eHealth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eHealth] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eHealth] SET  MULTI_USER 
GO
ALTER DATABASE [eHealth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eHealth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eHealth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eHealth] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eHealth] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eHealth] SET QUERY_STORE = OFF
GO
USE [eHealth]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [eHealth]
GO
/****** Object:  Table [dbo].[tbl_HealthTips]    Script Date: 12/12/2017 9:20:52 AM ******/
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
/****** Object:  Table [dbo].[tbl_MediaMaster]    Script Date: 12/12/2017 9:20:53 AM ******/
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
/****** Object:  Table [dbo].[tbl_SKeyWordMaster]    Script Date: 12/12/2017 9:20:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_WordMaster]    Script Date: 12/12/2017 9:20:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_WordMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [varchar](max) NULL,
	[SKeywordId] [int] NULL,
 CONSTRAINT [PK_tbl_WordMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_MediaMaster] ON 

INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (1, N'Are You One Of 30 Million Americans With Diabetes? A Drastic Diet May Help', N'https://www.forbes.com/sites/victoriaforster/2017/12/06/are-you-one-of-30-million-americans-with-diabetes-a-drastic-diet-may-help/#26e98f0210cc', N'People with type 2 diabetes have been able to reverse their condition through extreme dieting, according to a study published in The Lancet by researchers in the UK that featured 298 participants and compared people prescribed a radical, calorie-restricted diet with those who received conventional care including drugs', CAST(N'2017-12-06T04:00:00.000' AS DateTime))
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (2, N'FDA Approves Drug That Helps Diabetes, Weight Loss', N'https://www.webmd.com/diabetes/news/20171206/fda-approves-drug-that-helps-diabetes-weight-loss', N'A new diabetes drug that lowers blood sugar and also helps people lose weight has been approved by the U.S. Food and Drug Administration.', CAST(N'2017-12-04T08:00:00.000' AS DateTime))
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (3, N'FDA Approves Semaglutide for Type 2 Diabetes', N'https://www.medscape.com/viewarticle/889631', N'The US Food and Drug Administration (FDA) has approved semaglutide (Ozempic, Novo Nordisk) as an adjunct to diet and exercise for the treatment of type 2 diabetes in adults.', CAST(N'2017-12-03T06:00:00.000' AS DateTime))
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (4, N'New type 2 diabetes drug Ozempic approved in the US', N'https://www.diabetes.co.uk/news/2017/dec/new-type-2-diabetes-drug-ozempic-approved-in-the-us-98106604.html', N'Ozempic (semaglutide) has been approved by the US Food and Drug Administration to treat type 2 diabetes alongside diet and exercise.', CAST(N'2017-12-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (5, N'7 Stress-Busting Holiday Tips for People With Diabetes', N'https://health.usnews.com/health-care/patient-advice/articles/2017-12-05/7-stress-busting-holiday-tips-for-people-with-diabetes', N'From traffic jams at the mall to increased social commitments to a longer to-do list, the holidays aren’t always merry and bright. This time of year can be stressful.

If you have diabetes, that extra stress is particularly concerning because it can affect your blood sugar.', CAST(N'2017-12-05T11:01:00.000' AS DateTime))
INSERT [dbo].[tbl_MediaMaster] ([Id], [Title], [URL], [Content], [PublishedDate]) VALUES (6, N'Menopausal hot flashes linked to higher type 2 diabetes risk', N'https://www.diabetes.co.uk/news/2017/dec/menopausal-hot-flashes-linked-to-higher-type-2-diabetes-risk-98023033.html', N'Women who experience common menopausal symptoms such as night sweats or hot flashes could be at a greater risk of developing type 2 diabetes, researchers have said.', CAST(N'2017-12-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_MediaMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_SKeyWordMaster] ON 

INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (11, N'Peripheral neuropathy', N'common form of diabetic neuropathy')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (12, N'Autonomic neuropathy', N'The autonomic nervous system controls your heart, bladder, lungs, stomach, intestines, sex organs and eyes. Diabetes can affect the nerves in any of these areas')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (13, N'Diabetic nephropathy', N'Diabetic nephropathy is a serious kidney-related complication of type 1 diabetes and type 2 diabetes. It is also called diabetic kidney disease')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (14, N'Diabetic retinopathy', N'Diabetic retinopathy is a diabetes complication that affects eyes')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (15, N'Hypoglycemia', N'Hypoglycemia is a condition characterized by abnormally low blood glucose')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (16, N'Hyperglycemia', N'Hyperglycemia is the technical term for high blood glucose ')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (17, N'Diabetic Dermopathy', N'Diabetes can cause changes in the small blood vessels. These changes can cause skin problems called diabetic dermopathy.')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (18, N'Diabetic ketoacidosis', N'Diabetic ketoacidosis is a serious complication of diabetes that occurs when your body produces high levels of blood acids called ketones')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (19, N'Hypertension and Diabetes', NULL)
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (20, N'Hyperosmolar Syndrome', N'HHNS, is a serious condition most frequently seen in older persons')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (21, N'Gastroparesis', N'Gastroparesis is a disorder affecting people with both type 1 and type 2 diabetes in which the stomach takes too long to empty its contents ')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (22, N'Checking Your Blood Glucose', N'Blood glucose (blood sugar) monitoring is the main tool you have to check your diabetes control. This check tells you your blood glucose level at any one time.')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (23, N'Blood Glucose target', N'Know your Blood glucose target range')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (24, N'Type 2 Medication', N'Medication for Type 2 Diabetes')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (25, N'A1C Test', N'The A1C test gives you a picture of your average blood glucose (blood sugar) control for the past 2 to 3 months')
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (26, N'Diet Plan for Type 2 Diabetes', NULL)
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (27, N'Fitness Type 2 Diabetes', NULL)
INSERT [dbo].[tbl_SKeyWordMaster] ([Id], [Scientific_Name], [Description]) VALUES (28, N'Type 2 Diabetes Myths', N'Common myths about Diabetes')
SET IDENTITY_INSERT [dbo].[tbl_SKeyWordMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_WordMaster] ON 

INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (1, N'Numb feet', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (2, N'Burning feet', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (3, N'Cramps', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (4, N'Muscle weakness', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (5, N'Foot ulcers', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (6, N'Joint pain', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (7, N'Loss of balance and coordination', 11)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (8, N'Urinary tract infections', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (9, N'Uncontrolled diarrhea', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (10, N'Constipation', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (11, N'Slow stomach emptying', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (12, N'Urinary retention', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (13, N'Difficulty swallowing', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (14, N'Increased or decreased sweating', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (15, N'Sharp drops in blood pressure', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (16, N'Feel lightheaded', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (17, N'Increased heart rate', 12)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (18, N'Worsening blood pressure control', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (19, N'Protein in the urine', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (20, N'Swelling of feet', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (21, N'Swelling of ankles', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (22, N'Swelling of hands', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (23, N'Swelling of eyes', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (24, N'Increased need to urinate', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (25, N'Difficulty concentrating', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (26, N'Loss of appetite', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (27, N'Nausea and vomiting', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (28, N'Persistent itching', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (29, N'Fatigue', 13)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (30, N'Blurred vision', 14)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (31, N'Vision loss', 14)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (32, N'Dark or empty areas in vision', 14)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (33, N'Impaired color vision', 14)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (34, N'Fluctuating vision', 14)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (35, N'Blood sugar less than 70 mg/dl', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (36, N'Chills', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (37, N'Nervousness or anxiety', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (38, N'Seizures', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (39, N'Sleepiness', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (40, N'Headaches', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (41, N'Anger, stubbornness, or sadness', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (42, N'Irritability or impatience', 15)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (45, N'High blood glucose', 16)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (46, N'High levels of sugar in the urine', 16)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (47, N'Scaly patches', 17)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (48, N'Shortness of breath', 18)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (49, N'Fruity-scented breath', 18)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (50, N'Unable to tolerate food or liquid', 18)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (51, N'Blood sugar level consistently higher than 300 mgdL', 18)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (52, N'Abdominal pain', 18)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (53, N'High Blood Pressure', 19)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (54, N'Blood sugar level over 600 mg/dl', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (55, N'Dry, parched mouth', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (56, N'Extreme thirst ', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (57, N'High fever', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (58, N'Hallucinations', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (59, N'Weakness on one side of the body', 20)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (60, N'Heartburn', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (61, N'Vomiting of undigested food', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (62, N'Early feeling of fullness when eating', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (63, N'Weight loss', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (64, N'Abdominal bloating', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (65, N'Lack of appetite', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (66, N'Gastroesophageal reflux', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (67, N'Spasms of the stomach wall', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (68, N'Acid reflux', 21)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (69, N'Testing blood glucose', 22)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (70, N'Know sugar level', 22)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (71, N'Target glucose level', 23)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (72, N'Medicines', 24)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (73, N'Average Blood Sugar', 25)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (74, N'Diet', 26)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (75, N'Food', 26)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (76, N'Exercise', 27)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (77, N'Weight ', 27)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (78, N'Fitness', 27)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (79, N'Myths', 28)
INSERT [dbo].[tbl_WordMaster] ([Id], [Word], [SKeywordId]) VALUES (80, N'Facts', 28)
SET IDENTITY_INSERT [dbo].[tbl_WordMaster] OFF
ALTER TABLE [dbo].[tbl_WordMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_WordMaster_tbl_SKeyWordMaster] FOREIGN KEY([SKeywordId])
REFERENCES [dbo].[tbl_SKeyWordMaster] ([Id])
GO
ALTER TABLE [dbo].[tbl_WordMaster] CHECK CONSTRAINT [FK_tbl_WordMaster_tbl_SKeyWordMaster]
GO
USE [master]
GO
ALTER DATABASE [eHealth] SET  READ_WRITE 
GO
