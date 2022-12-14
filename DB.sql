
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentNu](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[data] [ntext] NULL,
	[rv] [bigint] NOT NULL,
	[dataRaw] [varbinary](max) NULL,
 CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[isElement] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
	[variations] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroSource] [nvarchar](255) NOT NULL,
	[macroType] [int] NOT NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniquePropertyId] [uniqueidentifier] NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
	[isSensitive] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[mandatoryMessage] [nvarchar](500) NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[validationRegExpMessage] [nvarchar](500) NULL,
	[Description] [nvarchar](2000) NULL,
	[labelOnTop] [bit] NOT NULL,
	[variations] [int] NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [nvarchar](100) NOT NULL,
	[languageId] [int] NULL,
	[tag] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[performingUserId] [int] NOT NULL,
	[performingDetails] [nvarchar](1024) NULL,
	[performingIp] [nvarchar](64) NULL,
	[eventDateUtc] [datetime] NOT NULL,
	[affectedUserId] [int] NOT NULL,
	[affectedDetails] [nvarchar](1024) NULL,
	[eventType] [nvarchar](256) NOT NULL,
	[eventDetails] [nvarchar](1024) NULL,
 CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [ntext] NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
	[instructionCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoConsent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[current] [bit] NOT NULL,
	[source] [nvarchar](512) NOT NULL,
	[context] [nvarchar](128) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContent](
	[nodeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentSchedule](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[date] [datetime] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[versionDate] [datetime] NOT NULL,
	[userId] [int] NULL,
	[current] [bit] NOT NULL,
	[text] [nvarchar](255) NULL,
	[preventCleanup] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCleanupPolicy]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCleanupPolicy](
	[contentTypeId] [int] NOT NULL,
	[keepAllVersionsNewerThanDays] [int] NULL,
	[keepLatestVersionPerDayForDays] [int] NULL,
	[preventCleanup] [bit] NOT NULL,
	[updated] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[availableUserId] [int] NULL,
 CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDataType](
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
	[config] [ntext] NULL,
 CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[edited] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[edited] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[published] [bit] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentVersion](
	[id] [int] NOT NULL,
	[templateId] [int] NULL,
	[published] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[loginProvider] [nvarchar](4000) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[userData] [ntext] NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoKeyValue](
	[key] [nvarchar](256) NOT NULL,
	[value] [nvarchar](255) NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](14) NULL,
	[languageCultureName] [nvarchar](100) NULL,
	[isDefaultVariantLang] [bit] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[fallbackLanguageId] [int] NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLock](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[NodeId] [int] NOT NULL,
	[entityType] [nvarchar](50) NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
	[parameters] [nvarchar](500) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMediaVersion](
	[id] [int] NOT NULL,
	[path] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[parentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[trashed] [bit] NOT NULL,
	[nodeUser] [int] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[segment] [nvarchar](256) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](38, 6) NULL,
	[dateValue] [datetime] NULL,
	[varcharValue] [nvarchar](512) NULL,
	[textValue] [ntext] NULL,
 CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[culture] [nvarchar](255) NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeUniqueId] [uniqueidentifier] NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NULL,
	[childObjectType] [uniqueidentifier] NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[emailConfirmedDate] [datetime] NULL,
	[invitedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[avatar] [nvarchar](500) NULL,
	[tourData] [ntext] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2UserGroup](
	[userId] [int] NOT NULL,
	[userGroupId] [int] NOT NULL,
 CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupAlias] [nvarchar](200) NOT NULL,
	[userGroupName] [nvarchar](200) NOT NULL,
	[userGroupDefaultPermissions] [nvarchar](50) NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[startContentId] [int] NULL,
	[startMediaId] [int] NULL,
 CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2App](
	[userGroupId] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2NodePermission]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2NodePermission](
	[userGroupId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUserGroup2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogin](
	[sessionId] [uniqueidentifier] NOT NULL,
	[userId] [int] NOT NULL,
	[loggedInUtc] [datetime] NOT NULL,
	[lastValidatedUtc] [datetime] NOT NULL,
	[loggedOutUtc] [datetime] NULL,
	[ipAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 25. 10. 2022 7:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserStartNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startNode] [int] NOT NULL,
	[startNodeType] [int] NOT NULL,
 CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1061, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"42ee8e4c-d660-4990-b367-0830d5106eb2\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"HomePage\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Osobná stránka"}],"metaDescription":[{"v":"Úvod"}],"menuTitle":[{"v":"Úvod"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"uvod"}', 4, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1061, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"42ee8e4c-d660-4990-b367-0830d5106eb2\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"HomePage\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Osobná stránka"}],"metaDescription":[{"v":"Úvod"}],"menuTitle":[{"v":"Úvod"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"uvod"}', 4, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1062, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<div class=\\\"vh-100\\\">\\n<h1 class=\\\"text-center\\\">OSOBNÉ ÚDAJE</h1>\\n<table border=\\\"0\\\" class=\\\"table table-success table-striped\\\">\\n<tbody>\\n<tr>\\n<td>Meno</td>\\n<td>Michal</td>\\n</tr>\\n<tr>\\n<td>Priezvisko</td>\\n<td>Kollár</td>\\n</tr>\\n<tr>\\n<td>Obec</td>\\n<td>Prešov</td>\\n</tr>\\n<tr>\\n<td>Stav</td>\\n<td>Ženatý</td>\\n</tr>\\n</tbody>\\n</table>\\n</div>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Osobné údaje"}],"metaDescription":[{"v":"Osobné údaje"}],"menuTitle":[{"v":"Osobné údaje"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"osobne-udaje"}', 6, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1062, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<div class=\\\"vh-100\\\">\\n<h1 class=\\\"text-center\\\">OSOBNÉ ÚDAJE</h1>\\n<table border=\\\"0\\\" class=\\\"table table-success table-striped\\\">\\n<tbody>\\n<tr>\\n<td>Meno</td>\\n<td>Michal</td>\\n</tr>\\n<tr>\\n<td>Priezvisko</td>\\n<td>Kollár</td>\\n</tr>\\n<tr>\\n<td>Obec</td>\\n<td>Prešov</td>\\n</tr>\\n<tr>\\n<td>Stav</td>\\n<td>Ženatý</td>\\n</tr>\\n</tbody>\\n</table>\\n</div>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Osobné údaje"}],"metaDescription":[{"v":"Osobné údaje"}],"menuTitle":[{"v":"Osobné údaje"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"osobne-udaje"}', 6, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1063, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"2f295135-de91-4068-93ba-cd9681d2f868\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"Vzdelanie\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Vzdelanie"}],"metaDescription":[{"v":"Vzdelanie"}],"menuTitle":[{"v":"Vzdelanie"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"vzdelanie"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1063, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"2f295135-de91-4068-93ba-cd9681d2f868\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"Vzdelanie\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Vzdelanie"}],"metaDescription":[{"v":"Vzdelanie"}],"menuTitle":[{"v":"Vzdelanie"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"vzdelanie"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1064, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"0e5772e2-3816-437f-a613-36a4182e368d\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<h1 class=\\\"text-center\\\">Galéria</h1>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null},{\"value\":{\"macroAlias\":\"Galeria3\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Galéria"}],"metaDescription":[{"v":"Galéria"}],"menuTitle":[{"v":"Galéria"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"galeria"}', 3, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1064, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"0e5772e2-3816-437f-a613-36a4182e368d\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<h1 class=\\\"text-center\\\">Galéria</h1>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null},{\"value\":{\"macroAlias\":\"Galeria3\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Galéria"}],"metaDescription":[{"v":"Galéria"}],"menuTitle":[{"v":"Galéria"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"galeria"}', 3, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1066, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/hzoj3ixt/kollim.jpg\"}"}],"umbracoWidth":[{"v":831}],"umbracoHeight":[{"v":623}],"umbracoBytes":[{"v":"168806"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"michal-kollar"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1069, 0, N'{"pd":{"osobnaStrankaTelefon":[{"v":"+421 902 198 758"}],"osobnaStrankaEmail":[{"v":"kollar.michal21@gmail.com"}]},"cd":{},"us":"texty"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1069, 1, N'{"pd":{"osobnaStrankaTelefon":[{"v":"+421 902 198 758"}],"osobnaStrankaEmail":[{"v":"kollar.michal21@gmail.com"}]},"cd":{},"us":"texty"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1070, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"08af42cd-9cde-49e8-b7e7-808f86cc75b8\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"ContactPage\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Stránka nenájdená"}],"metaDescription":[{"v":"Stránka nenájdená"}],"menuTitle":[],"umbracoNaviHide":[{"v":1}]},"cd":{},"us":"stranka-nenajdena"}', 2, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1070, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"08af42cd-9cde-49e8-b7e7-808f86cc75b8\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"ContactPage\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Stránka nenájdená"}],"metaDescription":[{"v":"Stránka nenájdená"}],"menuTitle":[],"umbracoNaviHide":[{"v":1}]},"cd":{},"us":"stranka-nenajdena"}', 2, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1074, 0, N'{"pd":{"umbracoMemberComments":[],"umbracoMemberFailedPasswordAttempts":[{"v":3}],"umbracoMemberApproved":[{"v":1}],"umbracoMemberLockedOut":[],"umbracoMemberLastLockoutDate":[],"umbracoMemberLastLogin":[{"v":"2022-10-23T21:15:50Z"}],"umbracoMemberLastPasswordChangeDate":[{"v":"2022-10-23T19:15:21Z"}],"umbracoMemberPasswordRetrievalAnswer":[],"umbracoMemberPasswordRetrievalQuestion":[]},"cd":{},"us":"kollar-michal21-gmail-com"}', 6, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1075, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"5c5f5321-a212-405b-bd1f-c9369235dbdf\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"MemberInfo\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Členská sekcia"}],"metaDescription":[{"v":"Členská sekcia"}],"menuTitle":[{"v":"Členská sekcia"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"clenska-sekcia"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1075, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"5c5f5321-a212-405b-bd1f-c9369235dbdf\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"MemberInfo\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Členská sekcia"}],"metaDescription":[{"v":"Členská sekcia"}],"menuTitle":[{"v":"Členská sekcia"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"clenska-sekcia"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1076, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"68d617f5-5433-4c92-aaef-d322ee60267a\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"LoginForm\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Prihlásenie"}],"metaDescription":[{"v":"Prihlásenie"}],"menuTitle":[{"v":"Prihlásenie"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"prihlasenie"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1076, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"68d617f5-5433-4c92-aaef-d322ee60267a\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":{\"macroAlias\":\"LoginForm\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Prihlásenie"}],"metaDescription":[{"v":"Prihlásenie"}],"menuTitle":[{"v":"Prihlásenie"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"prihlasenie"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1077, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"7451cb66-3891-4a40-9915-62b727112fe8\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<p>Nedostatočné oprávnenie do členskej sekcie</p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Členská sekcia neprístupná"}],"metaDescription":[{"v":"Členská sekcia neprístupná"}],"menuTitle":[{"v":"Členská sekcia neprístupná"}],"umbracoNaviHide":[{"v":1}]},"cd":{},"us":"clenska-sekcia-nepristupna"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1077, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"One column\",\"id\":\"7451cb66-3891-4a40-9915-62b727112fe8\",\"areas\":[{\"grid\":\"12\",\"controls\":[{\"value\":\"<p>Nedostatočné oprávnenie do členskej sekcie</p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}],"pageTitle":[{"v":"Členská sekcia neprístupná"}],"metaDescription":[{"v":"Členská sekcia neprístupná"}],"menuTitle":[{"v":"Členská sekcia neprístupná"}],"umbracoNaviHide":[{"v":1}]},"cd":{},"us":"clenska-sekcia-nepristupna"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1078, 0, N'{"pd":{},"cd":{},"us":"galeria"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1079, 0, N'{"pd":{},"cd":{},"us":"verzia2"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1080, 0, N'{"pd":{},"cd":{},"us":"verzia1"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1081, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/0gwanljd/02-01.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"66233"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"02-01"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1082, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/3vmhtk0m/02-02.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"63687"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"02-02"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1083, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/affigsx0/03-02.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"80641"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"03-02"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1084, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/wqbdbws2/img_6374.jpg\"}"}],"umbracoWidth":[{"v":1400}],"umbracoHeight":[{"v":568}],"umbracoBytes":[{"v":"105438"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"img-6374"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1085, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/xy3lnfj0/01-04.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"87324"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"01-04"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1086, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/tt2lwes1/03-05.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"75154"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"03-05"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1087, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/o0bnyxs0/04-06.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":845}],"umbracoBytes":[{"v":"128726"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"04-06"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1088, 0, N'{"pd":{},"cd":{},"us":"skupina1"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1089, 0, N'{"pd":{},"cd":{},"us":"skupina2"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1090, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/324lmg5h/01-04.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"87324"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"01-04"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1091, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/5rzjotte/03-05.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":675}],"umbracoBytes":[{"v":"75154"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"03-05"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1092, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/5pqnpsj4/04-06.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":845}],"umbracoBytes":[{"v":"128726"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"04-06"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1093, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/vfenabcb/04-04.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":849}],"umbracoBytes":[{"v":"128119"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"04-04"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1094, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/wm4jdq0a/04-05.jpg\"}"}],"umbracoWidth":[{"v":1200}],"umbracoHeight":[{"v":851}],"umbracoBytes":[{"v":"122634"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"04-05"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1095, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/unxotbqo/financovanie.jpg\"}"}],"umbracoWidth":[{"v":1920}],"umbracoHeight":[{"v":600}],"umbracoBytes":[{"v":"94144"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"financovanie"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1096, 0, N'{"pd":{"umbracoFile":[{"v":"{\"src\":\"/media/kr0p3dzx/situacia.jpg\"}"}],"umbracoWidth":[{"v":1618}],"umbracoHeight":[{"v":1184}],"umbracoBytes":[{"v":"285933"}],"umbracoExtension":[{"v":"jpg"}]},"cd":{},"us":"situacia"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1098, 0, N'{"pd":{"galeriaNazov":[{"v":"Prva skupina"}],"galeriaAdresar":[{"v":"[{\"key\":\"d00d1b16-fafe-4e77-a98b-9fd44d36efd6\",\"mediaKey\":\"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6\"}]"}]},"cd":{},"us":"skupina1"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1098, 1, N'{"pd":{"galeriaNazov":[{"v":"Prva skupina"}],"galeriaAdresar":[{"v":"[{\"key\":\"d00d1b16-fafe-4e77-a98b-9fd44d36efd6\",\"mediaKey\":\"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6\"}]"}]},"cd":{},"us":"skupina1"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1099, 0, N'{"pd":{"galeriaNazov":[{"v":"Druha skupina"}],"galeriaAdresar":[{"v":"[{\"key\":\"6d661c51-0a41-4a59-9e28-b4482962dfcd\",\"mediaKey\":\"56cc952a-c8d0-403e-be8b-7e5f6fd92ace\"}]"}]},"cd":{},"us":"skupina2"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1099, 1, N'{"pd":{"galeriaNazov":[{"v":"Druha skupina"}],"galeriaAdresar":[{"v":"[{\"key\":\"6d661c51-0a41-4a59-9e28-b4482962dfcd\",\"mediaKey\":\"56cc952a-c8d0-403e-be8b-7e5f6fd92ace\"}]"}]},"cd":{},"us":"skupina2"}', 0, NULL)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (2071, 0, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"Three columns\",\"id\":\"b963ad1a-fe83-4421-ad31-d0a3675cffa5\",\"areas\":[{\"grid\":\"4\",\"controls\":[{\"value\":\"<p><img class=\\\"img-fluid\\\" src=\\\"/media/hzoj3ixt/kollim.jpg\\\" alt=\\\"foto\\\" /></p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"4\",\"controls\":[{\"value\":\"<h1>Kontakt</h1>\\n<p>Neváhaj ma kontaktovať ...</p>\\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"4\",\"controls\":[{\"value\":\"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null},{\"value\":{\"macroAlias\":\"ContactForm\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":{},\"config\":{\"class\":\"min-vh-100\"}}]}]}"}],"pageTitle":[{"v":"Kontakt"}],"metaDescription":[{"v":"Kontakt"}],"menuTitle":[{"v":"Kontakt"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"kontakt"}', 11, 0x)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (2071, 1, N'{"pd":{"gridContent":[{"v":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"Three columns\",\"id\":\"b963ad1a-fe83-4421-ad31-d0a3675cffa5\",\"areas\":[{\"grid\":\"4\",\"controls\":[{\"value\":\"<p><img class=\\\"img-fluid\\\" src=\\\"/media/hzoj3ixt/kollim.jpg\\\" alt=\\\"foto\\\" /></p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"4\",\"controls\":[{\"value\":\"<h1>Kontakt</h1>\\n<p>Neváhaj ma kontaktovať ...</p>\\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"4\",\"controls\":[{\"value\":\"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>\",\"editor\":{\"alias\":\"rte\",\"view\":\"rte\"},\"styles\":null,\"config\":null},{\"value\":{\"macroAlias\":\"ContactForm\",\"macroParamsDictionary\":{}},\"editor\":{\"alias\":\"macro\",\"view\":\"macro\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":{},\"config\":{\"class\":\"min-vh-100\"}}]}]}"}],"pageTitle":[{"v":"Kontakt"}],"metaDescription":[{"v":"Kontakt"}],"menuTitle":[{"v":"Kontakt"}],"umbracoNaviHide":[{"v":0}]},"cd":{},"us":"kontakt"}', 10, 0x)
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (540, 1034, N'umbracoMediaVideo', N'icon-video', N'icon-video', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (541, 1035, N'umbracoMediaAudio', N'icon-sound-waves', N'icon-sound-waves', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (542, 1036, N'umbracoMediaArticle', N'icon-article', N'icon-article', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (543, 1037, N'umbracoMediaVectorGraphics', N'icon-picture', N'icon-picture', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (544, 1056, N'cmsContent', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (545, 1057, N'sEO', N'icon-document', N'folder.png', N'Údaje SEO optimalizácie', 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (546, 1058, N'landingPage', N'icon-document', N'folder.png', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (547, 1068, N'text', N'icon-umb-settings color-black', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (548, 1073, N'clenOsobnejStranky', N'icon-user', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (549, 1097, N'polozkaPreGaleriu', N'icon-item-arrangement', N'folder.png', NULL, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
GO
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1056, 1058)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1057, 1058)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1034, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1035, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1036, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1037, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1058, 1058, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1058, 1068, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1058, 1097, 2)
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1058, 1060, 0)
GO
SET IDENTITY_INSERT [dbo].[cmsMacro] ON 

INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (1, N'0473306d-c12e-4e1f-b516-0901f1426801', 1, 0, N'ContactForm', N'ContactForm', 0, 0, 1, N'~/Views/MacroPartials/ContactForm.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (2, N'b2aceeaa-2d73-4ee5-b63e-3ee61ac394ce', 1, 0, N'LoginForm', N'LoginForm', 0, 0, 1, N'~/Views/MacroPartials/LoginForm.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (3, N'acb0c3c2-8656-406e-a645-d6f8717d65e9', 1, 0, N'MemberInfo', N'MemberInfo', 0, 0, 1, N'~/Views/MacroPartials/MemberInfo.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (4, N'a8e49931-54b6-43f8-ab2b-71ca9de6dca6', 1, 0, N'Vzdelanie', N'Vzdelanie', 0, 0, 1, N'~/Views/MacroPartials/Vzdelanie.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (5, N'6ddd4131-9635-42f2-be39-7145ff5e8993', 1, 0, N'Galeria1', N'Galeria1', 0, 0, 1, N'~/Views/MacroPartials/Galeria1.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (6, N'ef4a0f42-4a7d-4214-aaf6-bf74e6a96f78', 1, 0, N'Galeria2', N'Galeria2', 0, 0, 1, N'~/Views/MacroPartials/Galeria2.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (7, N'c3a6197d-d529-43a0-9c9f-f6ab7529b129', 1, 0, N'Galeria3', N'Galeria3', 0, 0, 1, N'~/Views/MacroPartials/Galeria3.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (1002, N'6de3ca24-729e-4d4a-9af6-9c75604f07ba', 1, 0, N'HomePage', N'HomePage', 0, 0, 1, N'~/Views/MacroPartials/HomePage.cshtml', 7)
INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (1004, N'a8af5576-cd8f-41ee-bb4f-9661046901d1', 1, 0, N'ContactPage', N'ErrorPage', 0, 0, 1, N'~/Views/MacroPartials/ErrorPage.cshtml', 7)
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
GO
INSERT [dbo].[cmsMember] ([nodeId], [Email], [LoginName], [Password]) VALUES (1074, N'kollar.michal21@gmail.com', N'kollar.michal21@gmail.com', N'Cmvb3I3Ihg7R5GFMFXNWyQ==Zxw2jejmfSwC7H8GdrdelWrWRDB9d5FGAEIOhLW0L6o=')
GO
INSERT [dbo].[cmsMember2MemberGroup] ([Member], [MemberGroup]) VALUES (1074, 1071)
GO
SET IDENTITY_INSERT [dbo].[cmsMemberType] ON 

INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (1, 1073, 59, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (2, 1073, 60, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (3, 1073, 61, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (4, 1073, 62, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (5, 1073, 63, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (6, 1073, 64, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (7, 1073, 65, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (8, 1073, 66, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (9, 1073, 67, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsMemberType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Image', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'00000006-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (7, -91, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'00000007-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (8, -91, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'00000008-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (9, -93, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'00000009-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000000a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'File', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'00000018-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000019-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (26, -93, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'0000001a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000001c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (29, -91, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000001d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000001e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000001f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (32, -94, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000020-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (33, -94, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000021-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (34, -94, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000022-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (35, -94, 1044, 11, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', 7, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000023-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (36, -94, 1044, 11, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', 8, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000024-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (40, -100, 1034, 52, N'umbracoFile', N'Video', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'00000028-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (41, -92, 1034, 52, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000029-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (42, -93, 1034, 52, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'0000002a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (43, -101, 1035, 53, N'umbracoFile', N'Audio', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'0000002b-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (44, -92, 1035, 53, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000002c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (45, -93, 1035, 53, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'0000002d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (46, -102, 1036, 54, N'umbracoFile', N'Article', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'0000002e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (47, -92, 1036, 54, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0000002f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (48, -93, 1036, 54, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'00000030-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (49, -103, 1037, 55, N'umbracoFile', N'Vector Graphics', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'00000031-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (50, -92, 1037, 55, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'00000032-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (51, -93, 1037, 55, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'00000033-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (52, 1055, 1056, 56, N'gridContent', N'GridContent', 0, 0, N'', NULL, N'', N'', 0, 0, N'188c92ba-fd9e-4881-b2a1-b3ed018fcbf6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (53, -88, 1057, 57, N'pageTitle', N'Page Title', 0, 1, N'', NULL, N'', N'Názov stránky', 0, 0, N'bcf31bf5-48cd-4fad-970b-a81ab0bb0f0c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (54, -88, 1057, 57, N'metaDescription', N'Meta Description', 1, 1, N'', NULL, N'', N'Popis stránky', 0, 0, N'aabe738d-5f33-4853-9f8f-d03a1473f63c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (55, -49, 1057, 57, N'umbracoNaviHide', N'UmbracoNaviHide', 3, 0, N'', NULL, N'', N'Ak je táto voľba zaškrtnutá, potom daná stránka nebude súčasťou menu', 0, 0, N'53bc19e5-0ac0-4a43-abc6-5c4be0e43cf2')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (56, -88, 1057, 57, N'menuTitle', N'Menu Title', 2, 0, N'', NULL, N'', N'Názov stránky pre menu', 0, 0, N'd23299db-597b-4523-b47e-d5085025e3b3')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (57, -88, 1068, 58, N'osobnaStrankaTelefon', N'OsobnáStránkaTelefón', 0, 1, NULL, NULL, NULL, N'Tel.čislo', 0, 0, N'4b923cd1-156e-426e-8d6d-3860343fe419')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (58, -88, 1068, 58, N'osobnaStrankaEmail', N'OsobnáStránkaEmail', 1, 1, NULL, NULL, NULL, N'Email', 0, 0, N'5f30df8b-aef7-4a61-b544-083f69615c2b')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (59, -89, 1073, 59, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'82de66c5-871a-46d1-8fb9-3f68c87b648b')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (60, -91, 1073, 59, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, NULL, NULL, 0, 0, N'b00e1e03-4dce-4e8a-a422-7aa4d7a5e016')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (61, -49, 1073, 59, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, NULL, NULL, 0, 0, N'95145f52-09c5-4794-87b5-2058dcf53db9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (62, -49, 1073, 59, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, NULL, NULL, 0, 0, N'02f3e027-4dea-4e18-a6fb-ee6561bcd99d')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (63, -94, 1073, 59, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, NULL, NULL, 0, 0, N'85aedb00-81cb-4848-b964-dd52af7c16e6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (64, -94, 1073, 59, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, NULL, NULL, 0, 0, N'6ae6bf11-f9c1-4c33-a2ef-8abaf0a38652')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (65, -94, 1073, 59, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, NULL, NULL, 0, 0, N'cdc7b8a5-7566-4db6-99ed-d37f7ee12596')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (66, -92, 1073, 59, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', 7, 0, NULL, NULL, NULL, NULL, 0, 0, N'a5649e8b-ab97-4b13-9071-e388137ebedd')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (67, -92, 1073, 59, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', 8, 0, NULL, NULL, NULL, NULL, 0, 0, N'1381bf16-7d9e-4489-8940-cf1b34fbd23c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (68, -88, 1097, 60, N'galeriaNazov', N'GaleriaNazov', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'97a75a9d-e3dd-444e-831e-79f9df86a61d')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (69, 1051, 1097, 60, N'galeriaAdresar', N'GaleriaAdresar', 1, 0, NULL, NULL, NULL, NULL, 0, 0, N'4891453d-04c4-487d-bf2f-42a6fa64b53c')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (3, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596', 1032, 0, N'Image', N'image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (4, N'50899f9c-023a-4466-b623-aba9049885fe', 1033, 0, N'File', N'file', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (11, N'0756729d-d665-46e3-b84a-37aceaa614f8', 1044, 0, N'Membership', N'membership', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (52, N'2f0a61b6-cf92-4ff4-b437-751ab35eb254', 1034, 0, N'Video', N'video', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (53, N'335fb495-0a87-4e82-b902-30eb367b767c', 1035, 0, N'Audio', N'audio', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (54, N'9af3bd65-f687-4453-9518-5f180d1898ec', 1036, 0, N'Article', N'article', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (55, N'f199b4d7-9e84-439f-8531-f87d9af37711', 1037, 0, N'Vector Graphics', N'vectorGraphics', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (56, N'f47a9d81-38bf-40e4-b79d-5c025b57faff', 1056, 0, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (57, N'5c24bf2d-4137-44e4-b5b2-d37f7d0e817f', 1057, 0, N'SEO', N'sEO', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (58, N'd91e64e0-06ba-4407-9078-0fb292ac5b5e', 1068, 0, N'Texty', N'texty', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (59, N'6cf9b569-1cf6-4af4-b8a8-7fce541970a9', 1073, 0, N'Membership', N'membership', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (60, N'99c4ad13-67f3-4f03-bf95-28265ac479dd', 1097, 0, N'Polozky', N'polozky', 0)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (1, 1059, N'_Layout')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (2, 1060, N'LandingPage')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
GO
INSERT [dbo].[umbracoAccess] ([id], [nodeId], [loginNodeId], [noAccessNodeId], [createDate], [updateDate]) VALUES (N'c546a746-4050-46a4-85d0-ec5b4184c7f1', 1075, 1076, 1077, CAST(N'2022-10-23T19:18:48.643' AS DateTime), CAST(N'2022-10-23T19:18:48.643' AS DateTime))
GO
INSERT [dbo].[umbracoAccessRule] ([id], [accessId], [ruleValue], [ruleType], [createDate], [updateDate]) VALUES (N'a689779b-b17d-459c-9a77-6cf3a6b7d979', N'c546a746-4050-46a4-85d0-ec5b4184c7f1', N'ClenskaSkupinaOsobnejStranky', N'MemberRole', CAST(N'2022-10-23T19:18:48.643' AS DateTime), CAST(N'2022-10-23T19:18:48.643' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:11:27.183' AS DateTime), -1, N'User "Administrator" ', N'umbraco/user/save', N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:11:27.230' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating Email, Name, Username, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (3, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:11:27.487' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (4, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:11:49.190' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating TourData, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (5, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:16:10.937' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (6, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:16:11.140' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (7, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:16:15.950' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating TourData, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (8, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:43:10.133' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (9, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T16:43:10.580' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (10, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:44:55.253' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (11, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:44:55.253' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (12, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:46:11.557' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (13, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:46:35.433' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (14, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:50:09.727' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (15, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:51:32.733' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (16, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:54:59.890' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (17, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:57:33.897' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (18, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T16:59:51.887' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (19, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:00:33.997' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (20, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:02:39.587' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (21, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:02:39.613' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (22, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:05:32.153' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (23, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:05:55.320' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (24, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:06:55.767' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (25, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:07:15.177' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (26, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:07:15.203' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (27, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:08:26.420' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (28, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:09:04.490' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (29, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:09:04.490' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (30, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:09:49.147' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (31, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:10:56.090' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (32, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:02.390' AS DateTime), -1, N'Member 1072 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating Name, ParentId, CreatorId, ProviderUserKey, CreateDate, UpdateDate, Id, Path, Level, umbracoMemberApproved')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (33, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:02.457' AS DateTime), -1, N'Member 1072 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberLastLogin, umbracoMemberLastPasswordChangeDate, umbracoMemberPasswordRetrievalQuestion, umbracoMemberPasswordRetrievalAnswer')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (34, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:02.530' AS DateTime), -1, N'Member 1072 "ClenOsobnejStranky" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating Name, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (35, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:02.573' AS DateTime), -1, N'Member 1072 "ClenOsobnejStranky" <kollar.michal21@gmail.com>', N'umbraco/member/roles/assigned', N'roles modified, assigned ClenskaSkupinaOsobnejStranky')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (36, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:21.013' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (37, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:31.880' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (38, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:38.427' AS DateTime), -1, N'Member 1072 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating Name, UpdateDate, umbracoMemberComments, umbracoMemberLockedOut')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (39, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:11:47.480' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (40, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:12:18.083' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (41, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:13:27.827' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (42, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:13:27.830' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (43, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:14:01.430' AS DateTime), -1, N'Member 1072 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/delete', N'delete member id:1072 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (44, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:14:42.227' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (45, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:14:42.263' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (46, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:15:21.497' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating Name, ParentId, CreatorId, ProviderUserKey, CreateDate, UpdateDate, Id, Path, Level, umbracoMemberApproved')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (47, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:15:21.560' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberLastLogin, umbracoMemberLastPasswordChangeDate, umbracoMemberPasswordRetrievalAnswer, umbracoMemberPasswordRetrievalQuestion')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (48, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:15:21.623' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (49, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:15:21.643' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/roles/assigned', N'roles modified, assigned ClenskaSkupinaOsobnejStranky')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (50, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:15:47.023' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (51, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:17:17.557' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (52, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:17:33.273' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (53, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:19:16.563' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating FailedPasswordAttempts, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (54, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:19:25.053' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating FailedPasswordAttempts, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (55, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:19:41.537' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating FailedPasswordAttempts, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (56, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:19:41.580' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (57, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:19:41.617' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (58, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:20:05.787' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (59, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:20:24.510' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (60, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:20:51.897' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (61, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:21:17.173' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (62, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:22:28.207' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (63, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:22:54.850' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (64, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:23:24.180' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (65, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:23:40.117' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (66, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:23:53.420' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (67, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:24:54.027' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (68, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:25:12.900' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (69, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:25:31.797' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (70, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:28:10.750' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (71, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:29:22.597' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (72, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:29:47.793' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (73, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:31:57.293' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (74, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:31:57.323' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (75, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:34:36.577' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (76, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:34:36.610' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (77, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:35:23.587' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (78, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:35:26.290' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (79, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:35:26.897' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (80, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:36:46.877' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (81, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:37:24.867' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (82, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:38:11.047' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (83, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T17:38:59.367' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (84, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:40:59.910' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (85, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T17:40:59.940' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (86, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T18:04:18.077' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (87, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T18:04:18.183' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (88, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T18:32:39.867' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (89, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T18:32:39.953' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (90, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T18:36:42.887' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (91, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T18:36:43.020' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (92, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T19:07:48.980' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (93, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:07:49.057' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (94, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:15:13.250' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (95, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:15:17.330' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (96, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:15:50.067' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts, umbracoMemberLastLogin')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (97, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:32:39.787' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (98, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:32:39.873' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (99, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T19:34:03.420' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
GO
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (100, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:35:54.053' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (101, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:35:54.077' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (102, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:39:21.350' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (103, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:39:21.413' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (104, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-23T19:57:20.177' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (105, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-23T19:58:28.500' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1020, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T04:42:24.373' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1021, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T04:43:14.130' AS DateTime), -1, N'Member 1074 "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberFailedPasswordAttempts')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1022, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T04:47:12.753' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1023, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T04:47:12.790' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1024, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T05:30:25.447' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1025, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T05:30:25.550' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1026, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T05:35:19.560' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1027, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T05:35:19.620' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1028, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:16:55.983' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1029, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:16:56.507' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1030, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T06:23:03.840' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1031, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T06:26:18.320' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1032, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T06:29:41.860' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1033, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T06:29:41.857' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1034, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:38:33.173' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1035, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:38:33.213' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1036, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:53:12.610' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1037, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T06:53:12.640' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1038, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T07:08:47.833' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1039, -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'::1', CAST(N'2022-10-24T07:34:33.953' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1040, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T07:34:34.047' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1041, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T08:08:07.597' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1042, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T08:08:07.703' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1043, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T08:17:22.583' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1044, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-24T08:17:22.740' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1045, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-25T04:59:16.083' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1046, 0, N'User "SYSTEM" ', N'::1', CAST(N'2022-10-25T04:59:16.143' AS DateTime), -1, N'User "kollar.michal21@gmail.com" <kollar.michal21@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1, CAST(N'2022-10-23T16:11:49.243' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D4] 352331E846154121BB3F4D4AF63BD842', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (2, CAST(N'2022-10-23T16:16:11.427' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (3, CAST(N'2022-10-23T16:16:15.960' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4, CAST(N'2022-10-23T16:18:25.723' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1055,\"Key\":\"a51f14bd-3598-4317-b554-d1705f88c746\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (5, CAST(N'2022-10-23T16:19:03.110' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1056,\"ChangeTypes\":1}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (6, CAST(N'2022-10-23T16:19:13.353' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1057,\"ChangeTypes\":1}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (7, CAST(N'2022-10-23T16:19:21.807' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1058,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1058,\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (8, CAST(N'2022-10-23T16:20:11.480' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1059]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (9, CAST(N'2022-10-23T16:20:23.527' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1060]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (10, CAST(N'2022-10-23T16:22:05.940' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1058,\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (11, CAST(N'2022-10-23T16:22:22.900' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1057,\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D5] 77BBD9DEA7E144C8B68CA95A289F3189', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (12, CAST(N'2022-10-23T16:36:29.643' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (13, CAST(N'2022-10-23T16:43:10.593' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (14, CAST(N'2022-10-23T16:44:06.840' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1055,\"Key\":\"a51f14bd-3598-4317-b554-d1705f88c746\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (15, CAST(N'2022-10-23T16:44:55.303' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (16, CAST(N'2022-10-23T16:44:55.390' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (17, CAST(N'2022-10-23T16:44:58.920' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (18, CAST(N'2022-10-23T16:46:11.870' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (19, CAST(N'2022-10-23T16:46:35.610' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (20, CAST(N'2022-10-23T16:49:48.850' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (21, CAST(N'2022-10-23T16:50:09.920' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (22, CAST(N'2022-10-23T16:50:47.390' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1063,\"Key\":\"e430d1c0-d854-46a7-9d70-e79c3ec3395a\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (23, CAST(N'2022-10-23T16:51:32.767' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (24, CAST(N'2022-10-23T16:52:05.077' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"22a4bb2e-0ad4-4cd2-bd6d-979e03261bae\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (25, CAST(N'2022-10-23T16:54:59.920' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (26, CAST(N'2022-10-23T16:57:34.230' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (27, CAST(N'2022-10-23T16:59:51.923' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (28, CAST(N'2022-10-23T17:00:23.140' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"a28e5d38-88f3-4256-ae70-83c83a8b1305\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (29, CAST(N'2022-10-23T17:00:34.017' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (30, CAST(N'2022-10-23T17:01:17.930' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"49ac6396-83c7-48e9-9865-185ae0719ec9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (31, CAST(N'2022-10-23T17:01:26.897' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"49ac6396-83c7-48e9-9865-185ae0719ec9\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (32, CAST(N'2022-10-23T17:01:46.457' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (33, CAST(N'2022-10-23T17:02:39.623' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (34, CAST(N'2022-10-23T17:05:16.377' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1068,\"ChangeTypes\":1}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (35, CAST(N'2022-10-23T17:05:32.263' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (36, CAST(N'2022-10-23T17:05:55.360' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (37, CAST(N'2022-10-23T17:06:06.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1058,\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (38, CAST(N'2022-10-23T17:06:56.023' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1069,\"Key\":\"44866fe3-5658-46fc-ab55-c0d369134df1\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (39, CAST(N'2022-10-23T17:07:15.210' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (40, CAST(N'2022-10-23T17:08:01.787' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"b20cdbcb-dcaa-4bb6-b58f-a57b16d97603\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (41, CAST(N'2022-10-23T17:08:09.940' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"b20cdbcb-dcaa-4bb6-b58f-a57b16d97603\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (42, CAST(N'2022-10-23T17:08:26.440' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (43, CAST(N'2022-10-23T17:09:04.537' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (44, CAST(N'2022-10-23T17:09:04.537' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (45, CAST(N'2022-10-23T17:09:17.373' AS DateTime), N'[{"RefreshType":5,"RefresherId":"187f236b-bd21-4c85-8a7c-29fba3d6c00c","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1071,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (46, CAST(N'2022-10-23T17:09:49.157' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (47, CAST(N'2022-10-23T17:10:56.117' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (48, CAST(N'2022-10-23T17:11:02.600' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"},{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"},{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (49, CAST(N'2022-10-23T17:11:21.027' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (50, CAST(N'2022-10-23T17:11:31.897' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (51, CAST(N'2022-10-23T17:11:38.437' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (52, CAST(N'2022-10-23T17:11:47.487' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (53, CAST(N'2022-10-23T17:12:18.087' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (54, CAST(N'2022-10-23T17:13:27.843' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (55, CAST(N'2022-10-23T17:13:27.990' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (56, CAST(N'2022-10-23T17:13:35.053' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IMemberType\",\"Id\":1073,\"ChangeTypes\":1}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (57, CAST(N'2022-10-23T17:14:01.447' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":true}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (58, CAST(N'2022-10-23T17:14:42.277' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (59, CAST(N'2022-10-23T17:15:21.660' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"},{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"},{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (60, CAST(N'2022-10-23T17:15:47.150' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (61, CAST(N'2022-10-23T17:16:38.923' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1075,\"Key\":\"0c01d34b-856d-4805-bee2-27a7f6692ab6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (62, CAST(N'2022-10-23T17:17:17.753' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1076,\"Key\":\"a9f8dd9a-1a97-4fd1-b7c3-498ce021e9e5\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (63, CAST(N'2022-10-23T17:17:33.307' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (64, CAST(N'2022-10-23T17:18:15.057' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1077,\"Key\":\"f1a0d4db-9fe7-43b9-a51f-5e59039f312d\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (65, CAST(N'2022-10-23T17:18:48.690' AS DateTime), N'[{"RefreshType":0,"RefresherId":"1db08769-b104-4f8b-850e-169cac1df2ec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (66, CAST(N'2022-10-23T17:19:16.583' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (67, CAST(N'2022-10-23T17:19:25.067' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (68, CAST(N'2022-10-23T17:19:41.627' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (69, CAST(N'2022-10-23T17:20:05.817' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (70, CAST(N'2022-10-23T17:20:05.997' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"ContactForm\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (71, CAST(N'2022-10-23T17:20:11.513' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"ContactForm\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (72, CAST(N'2022-10-23T17:20:24.513' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (73, CAST(N'2022-10-23T17:20:33.497' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2,\"Alias\":\"LoginForm\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (74, CAST(N'2022-10-23T17:20:39.377' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2,\"Alias\":\"LoginForm\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (75, CAST(N'2022-10-23T17:20:51.903' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (76, CAST(N'2022-10-23T17:21:00.347' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":3,\"Alias\":\"MemberInfo\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (77, CAST(N'2022-10-23T17:21:06.490' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":3,\"Alias\":\"MemberInfo\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (78, CAST(N'2022-10-23T17:21:17.177' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (79, CAST(N'2022-10-23T17:21:27.420' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":4,\"Alias\":\"Vzdelanie\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (80, CAST(N'2022-10-23T17:21:32.550' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":4,\"Alias\":\"Vzdelanie\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (81, CAST(N'2022-10-23T17:22:28.293' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (82, CAST(N'2022-10-23T17:22:40.907' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1063,\"Key\":\"e430d1c0-d854-46a7-9d70-e79c3ec3395a\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (83, CAST(N'2022-10-23T17:22:54.887' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (84, CAST(N'2022-10-23T17:23:24.203' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (85, CAST(N'2022-10-23T17:23:27.877' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (86, CAST(N'2022-10-23T17:23:40.147' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (87, CAST(N'2022-10-23T17:23:48.000' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1075,\"Key\":\"0c01d34b-856d-4805-bee2-27a7f6692ab6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (88, CAST(N'2022-10-23T17:23:53.500' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (89, CAST(N'2022-10-23T17:24:07.727' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1076,\"Key\":\"a9f8dd9a-1a97-4fd1-b7c3-498ce021e9e5\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (90, CAST(N'2022-10-23T17:24:54.167' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1077,\"Key\":\"f1a0d4db-9fe7-43b9-a51f-5e59039f312d\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (91, CAST(N'2022-10-23T17:25:12.937' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (92, CAST(N'2022-10-23T17:25:23.510' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1078,\"Key\":\"4eaf9727-a33a-4b10-8f3b-ae7ebbaed81d\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (93, CAST(N'2022-10-23T17:25:31.813' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (94, CAST(N'2022-10-23T17:25:45.027' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1079,\"Key\":\"bdd14bd3-c2a4-4771-b950-56ddf0fd6248\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (95, CAST(N'2022-10-23T17:25:57.057' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"f4ec2c38-2a02-4de6-9b4e-e14ff202bfc0\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (96, CAST(N'2022-10-23T17:26:42.790' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1081,\"Key\":\"ad06acd7-3123-4c76-aaa0-e3399ae656cd\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (97, CAST(N'2022-10-23T17:26:43.010' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1082,\"Key\":\"ab7958eb-594c-4ef8-ab77-46113244f909\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (98, CAST(N'2022-10-23T17:26:43.177' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1083,\"Key\":\"4a834a07-c0fa-43af-852c-a25a612846b7\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (99, CAST(N'2022-10-23T17:26:43.327' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1084,\"Key\":\"da2003b2-765c-4c1a-bd74-09c72d1b9f02\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
GO
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (100, CAST(N'2022-10-23T17:27:40.910' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"95b63ab8-003a-40d1-b5c6-ab3a2e1d0c6c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (101, CAST(N'2022-10-23T17:27:41.050' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"12bbf89a-285b-4f52-8aaf-5ca82f08ea26\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (102, CAST(N'2022-10-23T17:27:41.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"5ecc8370-555a-45ec-a535-b4c398aa076a\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (103, CAST(N'2022-10-23T17:28:10.770' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (104, CAST(N'2022-10-23T17:28:22.517' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"f4ec2c38-2a02-4de6-9b4e-e14ff202bfc0\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (105, CAST(N'2022-10-23T17:28:30.963' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1079,\"Key\":\"bdd14bd3-c2a4-4771-b950-56ddf0fd6248\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (106, CAST(N'2022-10-23T17:28:37.457' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"f4ec2c38-2a02-4de6-9b4e-e14ff202bfc0\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (107, CAST(N'2022-10-23T17:28:59.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1088,\"Key\":\"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (108, CAST(N'2022-10-23T17:29:07.630' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1089,\"Key\":\"56cc952a-c8d0-403e-be8b-7e5f6fd92ace\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (109, CAST(N'2022-10-23T17:29:22.777' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1090,\"Key\":\"1bb63ce9-c5e7-4c55-8254-71a4c53b858c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (110, CAST(N'2022-10-23T17:29:23.000' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1091,\"Key\":\"4e9772fa-6e64-4da0-9e31-053c4589d630\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (111, CAST(N'2022-10-23T17:29:23.167' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1092,\"Key\":\"c9c7e1fd-fb3e-47c4-9292-58137da96917\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (112, CAST(N'2022-10-23T17:29:24.557' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1088,\"Key\":\"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (113, CAST(N'2022-10-23T17:29:27.973' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"f4ec2c38-2a02-4de6-9b4e-e14ff202bfc0\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (114, CAST(N'2022-10-23T17:29:38.383' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1093,\"Key\":\"04d048af-4c41-42c8-b0de-410e68e22980\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (115, CAST(N'2022-10-23T17:29:38.880' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1094,\"Key\":\"c3913db5-7c40-4b53-a960-e8f4f1dad327\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (116, CAST(N'2022-10-23T17:29:39.257' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1095,\"Key\":\"86e96ea5-3e0e-4e6a-8372-0c5cd02ea283\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (117, CAST(N'2022-10-23T17:29:39.567' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1096,\"Key\":\"8ffe7452-4937-4cfd-9eb7-c04871ab3ac6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (118, CAST(N'2022-10-23T17:29:42.033' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1089,\"Key\":\"56cc952a-c8d0-403e-be8b-7e5f6fd92ace\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (119, CAST(N'2022-10-23T17:29:47.933' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1089,\"Key\":\"56cc952a-c8d0-403e-be8b-7e5f6fd92ace\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (120, CAST(N'2022-10-23T17:31:57.333' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (121, CAST(N'2022-10-23T17:34:22.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1097,\"ChangeTypes\":1}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (122, CAST(N'2022-10-23T17:34:36.617' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (123, CAST(N'2022-10-23T17:35:27.107' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (124, CAST(N'2022-10-23T17:35:30.953' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (125, CAST(N'2022-10-23T17:35:30.953' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (126, CAST(N'2022-10-23T17:35:47.283' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1058,\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (127, CAST(N'2022-10-23T17:36:36.920' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1098,\"Key\":\"519488ab-c735-49b8-8adc-c53b994b82f5\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (128, CAST(N'2022-10-23T17:36:46.900' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (129, CAST(N'2022-10-23T17:37:01.383' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1099,\"Key\":\"2ce29655-d320-41b0-8b2d-53227412ef85\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (130, CAST(N'2022-10-23T17:37:24.873' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (131, CAST(N'2022-10-23T17:37:43.087' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":5,\"Alias\":\"Galeria1\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (132, CAST(N'2022-10-23T17:37:49.247' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":5,\"Alias\":\"Galeria1\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (133, CAST(N'2022-10-23T17:38:11.053' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (134, CAST(N'2022-10-23T17:38:42.760' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":6,\"Alias\":\"Galeria2\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (135, CAST(N'2022-10-23T17:38:48.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":6,\"Alias\":\"Galeria2\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (136, CAST(N'2022-10-23T17:38:59.377' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (137, CAST(N'2022-10-23T17:39:16.657' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":7,\"Alias\":\"Galeria3\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (138, CAST(N'2022-10-23T17:39:22.043' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":7,\"Alias\":\"Galeria3\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (139, CAST(N'2022-10-23T17:40:59.953' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (140, CAST(N'2022-10-23T17:41:13.007' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1063,\"Key\":\"e430d1c0-d854-46a7-9d70-e79c3ec3395a\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (141, CAST(N'2022-10-23T17:41:18.780' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (142, CAST(N'2022-10-23T17:41:24.697' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"22a4bb2e-0ad4-4cd2-bd6d-979e03261bae\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (143, CAST(N'2022-10-23T17:41:31.003' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (144, CAST(N'2022-10-23T17:41:36.130' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"b20cdbcb-dcaa-4bb6-b58f-a57b16d97603\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (145, CAST(N'2022-10-23T17:41:42.040' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1075,\"Key\":\"0c01d34b-856d-4805-bee2-27a7f6692ab6\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (146, CAST(N'2022-10-23T17:41:46.133' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1076,\"Key\":\"a9f8dd9a-1a97-4fd1-b7c3-498ce021e9e5\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (147, CAST(N'2022-10-23T17:41:51.153' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1077,\"Key\":\"f1a0d4db-9fe7-43b9-a51f-5e59039f312d\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D6] 5DE2228FB82A46D9A098F457C307A09F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (148, CAST(N'2022-10-23T18:04:18.390' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D8] C694869DCF9948F88DDC2DD2601F7909', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (149, CAST(N'2022-10-23T18:32:40.200' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D10] FF0C8376603445B3BAE5D87F81B18FA5', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (150, CAST(N'2022-10-23T18:36:42.953' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D11] F800E518387E4675A5340E034677F065', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (151, CAST(N'2022-10-23T18:36:43.027' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D11] F800E518387E4675A5340E034677F065', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (152, CAST(N'2022-10-23T19:07:49.237' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (153, CAST(N'2022-10-23T19:10:12.863' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (154, CAST(N'2022-10-23T19:11:20.900' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (155, CAST(N'2022-10-23T19:15:13.320' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (156, CAST(N'2022-10-23T19:15:17.340' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (157, CAST(N'2022-10-23T19:15:50.100' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D16] E537C21DBF184A4BBF1C32F3DCA35547', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (158, CAST(N'2022-10-23T19:32:40.050' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D17] 489DCA8824E545A5BAB43C37E38F4168', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (159, CAST(N'2022-10-23T19:34:03.460' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D17] 489DCA8824E545A5BAB43C37E38F4168', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (160, CAST(N'2022-10-23T19:35:54.090' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D17] 489DCA8824E545A5BAB43C37E38F4168', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (161, CAST(N'2022-10-23T19:35:55.607' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D17] 489DCA8824E545A5BAB43C37E38F4168', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (162, CAST(N'2022-10-23T19:39:21.430' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D17] 489DCA8824E545A5BAB43C37E38F4168', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (163, CAST(N'2022-10-23T19:57:21.337' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"22a4bb2e-0ad4-4cd2-bd6d-979e03261bae\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D18] 9BF9F2A2275341348A6CE5C5912D1F3C', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (164, CAST(N'2022-10-23T19:58:28.543' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P13124/D18] 9BF9F2A2275341348A6CE5C5912D1F3C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1032, CAST(N'2022-10-24T04:42:24.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D2] 4F1ACEC286D44D22BACAFC013FE190F6', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1033, CAST(N'2022-10-24T04:43:28.223' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1074,\"Username\":\"kollar.michal21@gmail.com\",\"Removed\":false}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D2] 4F1ACEC286D44D22BACAFC013FE190F6', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1034, CAST(N'2022-10-24T04:47:12.980' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D2] 4F1ACEC286D44D22BACAFC013FE190F6', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1035, CAST(N'2022-10-24T04:47:30.300' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"22a4bb2e-0ad4-4cd2-bd6d-979e03261bae\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D2] 4F1ACEC286D44D22BACAFC013FE190F6', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1036, CAST(N'2022-10-24T05:30:25.723' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D3] F1C7699074A447B7A6140380A629AEEA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1037, CAST(N'2022-10-24T05:30:50.287' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1064,\"Key\":\"22a4bb2e-0ad4-4cd2-bd6d-979e03261bae\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D3] F1C7699074A447B7A6140380A629AEEA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1038, CAST(N'2022-10-24T05:35:19.633' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D3] F1C7699074A447B7A6140380A629AEEA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1039, CAST(N'2022-10-24T05:44:30.773' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1040, CAST(N'2022-10-24T05:46:07.330' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1041, CAST(N'2022-10-24T05:46:42.943' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1042, CAST(N'2022-10-24T05:48:52.550' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1043, CAST(N'2022-10-24T05:50:20.283' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1044, CAST(N'2022-10-24T05:58:36.683' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1002,\"Alias\":\"HomePage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1045, CAST(N'2022-10-24T05:58:45.413' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1002,\"Alias\":\"HomePage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1046, CAST(N'2022-10-24T05:59:04.003' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D4] 98F9C0B6B6724420A0E27F9A15E4779E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1047, CAST(N'2022-10-24T06:10:00.010' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1061,\"Key\":\"0fc54525-05c4-418e-a3f7-acd5f6c7e0c8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1048, CAST(N'2022-10-24T06:16:56.670' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1049, CAST(N'2022-10-24T06:16:57.533' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1050, CAST(N'2022-10-24T06:17:47.310' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1051, CAST(N'2022-10-24T06:18:37.283' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1052, CAST(N'2022-10-24T06:23:03.877' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1053, CAST(N'2022-10-24T06:23:13.173' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1003,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1054, CAST(N'2022-10-24T06:23:20.013' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1003,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1055, CAST(N'2022-10-24T06:25:20.130' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1003,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1056, CAST(N'2022-10-24T06:26:18.330' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1057, CAST(N'2022-10-24T06:26:44.957' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1058, CAST(N'2022-10-24T06:27:02.497' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1059, CAST(N'2022-10-24T06:29:41.880' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1060, CAST(N'2022-10-24T06:29:42.003' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1061, CAST(N'2022-10-24T06:36:24.170' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1062, CAST(N'2022-10-24T06:36:33.163' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1063, CAST(N'2022-10-24T06:36:38.743' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"49ac6396-83c7-48e9-9865-185ae0719ec9\",\"ChangeTypes\":8}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1064, CAST(N'2022-10-24T06:36:42.217' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"6f0e0531-1583-4721-8f79-e23a02b90a56\",\"ChangeTypes\":8}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1065, CAST(N'2022-10-24T06:38:33.223' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1066, CAST(N'2022-10-24T06:39:35.327' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
GO
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1067, CAST(N'2022-10-24T06:40:42.510' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1068, CAST(N'2022-10-24T06:41:19.147' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1069, CAST(N'2022-10-24T06:41:30.607' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1070, CAST(N'2022-10-24T06:41:38.023' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1071, CAST(N'2022-10-24T06:42:40.187' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1072, CAST(N'2022-10-24T06:53:12.650' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1073, CAST(N'2022-10-24T06:53:42.817' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1004,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1074, CAST(N'2022-10-24T06:53:48.890' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1004,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1075, CAST(N'2022-10-24T06:54:34.743' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1076, CAST(N'2022-10-24T06:55:17.483' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2069,\"Key\":\"195f5579-5b7d-4daa-98ee-407a8eea4766\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1077, CAST(N'2022-10-24T06:59:32.080' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2069,\"Key\":\"195f5579-5b7d-4daa-98ee-407a8eea4766\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1078, CAST(N'2022-10-24T06:59:38.927' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2069,\"Key\":\"195f5579-5b7d-4daa-98ee-407a8eea4766\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1079, CAST(N'2022-10-24T07:06:51.380' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1080, CAST(N'2022-10-24T07:07:07.957' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1081, CAST(N'2022-10-24T07:07:51.263' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1082, CAST(N'2022-10-24T07:08:48.110' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1083, CAST(N'2022-10-24T07:09:53.630' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1084, CAST(N'2022-10-24T07:12:20.850' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1085, CAST(N'2022-10-24T07:13:18.577' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1086, CAST(N'2022-10-24T07:14:45.593' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":4}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1087, CAST(N'2022-10-24T07:17:19.057' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1088, CAST(N'2022-10-24T07:17:25.523' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1089, CAST(N'2022-10-24T07:17:27.803' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1090, CAST(N'2022-10-24T07:17:37.540' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1091, CAST(N'2022-10-24T07:20:43.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1092, CAST(N'2022-10-24T07:23:22.323' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1004,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1093, CAST(N'2022-10-24T07:24:58.373' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"b20cdbcb-dcaa-4bb6-b58f-a57b16d97603\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1094, CAST(N'2022-10-24T07:25:06.833' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2068,\"Key\":\"771fd291-6ffc-4881-b4b6-cd20f969f9c9\",\"ChangeTypes\":8}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1095, CAST(N'2022-10-24T07:25:09.740' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2069,\"Key\":\"195f5579-5b7d-4daa-98ee-407a8eea4766\",\"ChangeTypes\":8}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1096, CAST(N'2022-10-24T07:25:13.933' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2070,\"Key\":\"f45057cb-2db4-40d4-8793-adffe2bdfbb8\",\"ChangeTypes\":8}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1097, CAST(N'2022-10-24T07:25:30.300' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1004,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1098, CAST(N'2022-10-24T07:25:47.370' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1004,\"Alias\":\"ContactPage\"}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1099, CAST(N'2022-10-24T07:26:18.530' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1070,\"Key\":\"b20cdbcb-dcaa-4bb6-b58f-a57b16d97603\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D5] 2F9B2B43517F4F6D983DD6C58554D111', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1100, CAST(N'2022-10-24T07:34:34.093' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D7] A25B22E5151647178204A50E52D9D552', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1101, CAST(N'2022-10-24T07:34:50.933' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1062,\"Key\":\"430956a7-216b-417b-a57f-4220876651a3\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D7] A25B22E5151647178204A50E52D9D552', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1102, CAST(N'2022-10-24T07:35:31.990' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D7] A25B22E5151647178204A50E52D9D552', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1103, CAST(N'2022-10-24T07:38:03.970' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D7] A25B22E5151647178204A50E52D9D552', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1104, CAST(N'2022-10-24T08:08:07.887' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D8] 892238DDC65343138C2973E6D455677A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1105, CAST(N'2022-10-24T08:08:32.033' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D8] 892238DDC65343138C2973E6D455677A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1106, CAST(N'2022-10-24T08:17:23.033' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D10] D2038F8C0DE04CE888B935A4DD7C9912', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1107, CAST(N'2022-10-24T08:17:26.477' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D10] D2038F8C0DE04CE888B935A4DD7C9912', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1108, CAST(N'2022-10-24T08:18:10.467' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D10] D2038F8C0DE04CE888B935A4DD7C9912', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1109, CAST(N'2022-10-24T08:18:55.153' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P10632/D10] D2038F8C0DE04CE888B935A4DD7C9912', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1110, CAST(N'2022-10-25T04:59:16.353' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P8676/D3] 62256984108640A38B94A0CD7CB91355', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1111, CAST(N'2022-10-25T04:59:34.737' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2071,\"Key\":\"465a59c5-9ed0-41e8-9f0d-0afbf897c694\",\"ChangeTypes\":2}]"}]', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT [P8676/D3] 62256984108640A38B94A0CD7CB91355', 1)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
GO
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1061, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1062, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1063, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1064, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1066, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1069, 1068)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1070, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1074, 1073)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1075, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1076, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1077, 1058)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1078, 1031)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1079, 1031)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1080, 1031)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1081, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1082, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1083, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1084, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1085, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1086, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1087, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1088, 1031)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1089, 1031)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1090, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1091, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1092, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1093, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1094, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1095, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1096, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1098, 1097)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1099, 1097)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (2071, 1058)
GO
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] ON 

INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1, 1061, CAST(N'2022-10-23T18:36:26.040' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (2, 1061, CAST(N'2022-10-23T18:44:58.350' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (3, 1061, CAST(N'2022-10-23T18:46:11.590' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (4, 1061, CAST(N'2022-10-23T21:10:11.943' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (5, 1062, CAST(N'2022-10-23T18:49:48.350' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (6, 1062, CAST(N'2022-10-23T19:41:18.683' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (7, 1063, CAST(N'2022-10-23T18:50:47.167' AS DateTime), -1, 0, N'vzdelanie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (8, 1063, CAST(N'2022-10-23T19:22:40.720' AS DateTime), -1, 0, N'vzdelanie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (9, 1064, CAST(N'2022-10-23T18:52:04.797' AS DateTime), -1, 0, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (10, 1064, CAST(N'2022-10-23T19:41:24.583' AS DateTime), -1, 0, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (13, 1066, CAST(N'2022-10-23T19:00:22.583' AS DateTime), NULL, 1, N'Michal Kollár', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (17, 1069, CAST(N'2022-10-23T19:06:55.790' AS DateTime), -1, 0, N'texty', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (18, 1069, CAST(N'2022-10-23T19:06:55.790' AS DateTime), -1, 1, N'texty', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (19, 1070, CAST(N'2022-10-23T19:08:01.577' AS DateTime), -1, 0, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (20, 1070, CAST(N'2022-10-23T19:08:09.803' AS DateTime), -1, 0, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (21, 1070, CAST(N'2022-10-23T19:41:36.023' AS DateTime), -1, 0, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (23, 1074, CAST(N'2022-10-24T06:43:13.790' AS DateTime), NULL, 1, N'kollar.michal21@gmail.com', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (24, 1075, CAST(N'2022-10-23T19:16:38.693' AS DateTime), -1, 0, N'clenska-sekcia', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (25, 1075, CAST(N'2022-10-23T19:23:47.883' AS DateTime), -1, 0, N'clenska-sekcia', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (26, 1076, CAST(N'2022-10-23T19:17:17.587' AS DateTime), -1, 0, N'prihlasenie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (27, 1076, CAST(N'2022-10-23T19:24:07.517' AS DateTime), -1, 0, N'prihlasenie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (28, 1077, CAST(N'2022-10-23T19:18:14.847' AS DateTime), -1, 0, N'clenska-sekcia-nepristupna', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (29, 1077, CAST(N'2022-10-23T19:24:54.050' AS DateTime), -1, 0, N'clenska-sekcia-nepristupna', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (30, 1063, CAST(N'2022-10-23T19:41:12.820' AS DateTime), -1, 0, N'vzdelanie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (32, 1075, CAST(N'2022-10-23T19:41:41.930' AS DateTime), -1, 0, N'clenska-sekcia', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (33, 1076, CAST(N'2022-10-23T19:41:46.037' AS DateTime), -1, 0, N'prihlasenie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (34, 1077, CAST(N'2022-10-23T19:41:50.873' AS DateTime), -1, 0, N'clenska-sekcia-nepristupna', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (35, 1078, CAST(N'2022-10-23T19:25:23.370' AS DateTime), NULL, 1, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (36, 1079, CAST(N'2022-10-23T19:28:30.830' AS DateTime), NULL, 1, N'verzia2', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (37, 1080, CAST(N'2022-10-23T19:29:27.893' AS DateTime), NULL, 1, N'verzia1', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (38, 1081, CAST(N'2022-10-23T19:26:42.623' AS DateTime), NULL, 1, N'02 01', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (39, 1082, CAST(N'2022-10-23T19:26:42.917' AS DateTime), NULL, 1, N'02 02', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (40, 1083, CAST(N'2022-10-23T19:26:43.093' AS DateTime), NULL, 1, N'03 02', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (41, 1084, CAST(N'2022-10-23T19:26:43.253' AS DateTime), NULL, 1, N'Img 6374', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (42, 1085, CAST(N'2022-10-23T19:27:40.777' AS DateTime), NULL, 1, N'01 04', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (43, 1086, CAST(N'2022-10-23T19:27:40.977' AS DateTime), NULL, 1, N'03 05', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (44, 1087, CAST(N'2022-10-23T19:27:41.117' AS DateTime), NULL, 1, N'04 06', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (45, 1088, CAST(N'2022-10-23T19:29:24.470' AS DateTime), NULL, 1, N'skupina1', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (46, 1089, CAST(N'2022-10-23T19:29:47.800' AS DateTime), NULL, 1, N'skupina2', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (47, 1090, CAST(N'2022-10-23T19:29:22.677' AS DateTime), NULL, 1, N'01 04', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (48, 1091, CAST(N'2022-10-23T19:29:22.933' AS DateTime), NULL, 1, N'03 05', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (49, 1092, CAST(N'2022-10-23T19:29:23.080' AS DateTime), NULL, 1, N'04 06', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (50, 1093, CAST(N'2022-10-23T19:29:38.097' AS DateTime), NULL, 1, N'04 04', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (51, 1094, CAST(N'2022-10-23T19:29:38.530' AS DateTime), NULL, 1, N'04 05', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (52, 1095, CAST(N'2022-10-23T19:29:39.083' AS DateTime), NULL, 1, N'Financovanie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (53, 1096, CAST(N'2022-10-23T19:29:39.350' AS DateTime), NULL, 1, N'Situacia', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (54, 1098, CAST(N'2022-10-23T19:36:36.620' AS DateTime), -1, 0, N'skupina1', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (55, 1098, CAST(N'2022-10-23T19:36:36.620' AS DateTime), -1, 1, N'skupina1', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (56, 1099, CAST(N'2022-10-23T19:37:01.270' AS DateTime), -1, 0, N'skupina2', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (57, 1099, CAST(N'2022-10-23T19:37:01.270' AS DateTime), -1, 1, N'skupina2', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (58, 1063, CAST(N'2022-10-23T19:41:12.820' AS DateTime), -1, 1, N'vzdelanie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (59, 1062, CAST(N'2022-10-24T07:44:29.183' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (60, 1064, CAST(N'2022-10-23T21:57:20.470' AS DateTime), -1, 0, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (62, 1070, CAST(N'2022-10-24T09:24:58.147' AS DateTime), -1, 0, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (63, 1075, CAST(N'2022-10-23T19:41:41.930' AS DateTime), -1, 1, N'clenska-sekcia', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (64, 1076, CAST(N'2022-10-23T19:41:46.037' AS DateTime), -1, 1, N'prihlasenie', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (65, 1077, CAST(N'2022-10-23T19:41:50.873' AS DateTime), -1, 1, N'clenska-sekcia-nepristupna', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (66, 1061, CAST(N'2022-10-23T21:11:20.700' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (67, 1061, CAST(N'2022-10-24T07:59:03.767' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (69, 1064, CAST(N'2022-10-24T06:47:28.453' AS DateTime), -1, 0, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1016, 1064, CAST(N'2022-10-24T07:30:49.257' AS DateTime), -1, 0, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1017, 1064, CAST(N'2022-10-24T07:30:49.257' AS DateTime), -1, 1, N'galeria', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1018, 1062, CAST(N'2022-10-24T07:46:07.110' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1019, 1062, CAST(N'2022-10-24T07:46:42.720' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1020, 1062, CAST(N'2022-10-24T07:48:52.287' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1021, 1062, CAST(N'2022-10-24T07:50:20.063' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1022, 1062, CAST(N'2022-10-24T09:34:50.187' AS DateTime), -1, 0, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1023, 1061, CAST(N'2022-10-24T08:09:58.880' AS DateTime), -1, 0, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1024, 1061, CAST(N'2022-10-24T08:09:58.880' AS DateTime), -1, 1, N'uvod', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1047, 2071, CAST(N'2022-10-24T09:17:18.820' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1048, 2071, CAST(N'2022-10-24T09:17:27.703' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1049, 2071, CAST(N'2022-10-24T09:17:37.437' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1050, 2071, CAST(N'2022-10-24T09:20:43.007' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1051, 2071, CAST(N'2022-10-24T09:35:31.737' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1052, 1070, CAST(N'2022-10-24T09:26:18.320' AS DateTime), -1, 0, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1053, 1070, CAST(N'2022-10-24T09:26:18.320' AS DateTime), -1, 1, N'stranka-nenajdena', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1054, 1062, CAST(N'2022-10-24T09:34:50.187' AS DateTime), -1, 1, N'osobne-udaje', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1055, 2071, CAST(N'2022-10-24T09:38:03.747' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1056, 2071, CAST(N'2022-10-24T10:08:31.003' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1057, 2071, CAST(N'2022-10-24T10:17:24.740' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1058, 2071, CAST(N'2022-10-24T10:18:10.107' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1059, 2071, CAST(N'2022-10-24T10:18:54.843' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1060, 2071, CAST(N'2022-10-25T06:59:33.697' AS DateTime), -1, 0, N'kontakt', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1061, 2071, CAST(N'2022-10-25T06:59:33.697' AS DateTime), -1, 1, N'kontakt', 0)
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] OFF
GO
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [preventCleanup], [updated]) VALUES (1056, NULL, NULL, 0, CAST(N'2022-10-23T18:19:02.630' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [preventCleanup], [updated]) VALUES (1057, NULL, NULL, 0, CAST(N'2022-10-23T18:22:22.493' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [preventCleanup], [updated]) VALUES (1058, NULL, NULL, 0, CAST(N'2022-10-23T19:35:46.503' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [preventCleanup], [updated]) VALUES (1068, NULL, NULL, 0, CAST(N'2022-10-23T19:05:15.767' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [preventCleanup], [updated]) VALUES (1097, NULL, NULL, 0, CAST(N'2022-10-23T19:34:22.310' AS DateTime))
GO
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-103, N'Umbraco.UploadField', N'Nvarchar', N'{"fileExtensions":[{"id":0, "value":"svg"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-102, N'Umbraco.UploadField', N'Nvarchar', N'{"fileExtensions":[{"id":0, "value":"pdf"}, {"id":1, "value":"docx"}, {"id":2, "value":"doc"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-101, N'Umbraco.UploadField', N'Nvarchar', N'{"fileExtensions":[{"id":0, "value":"mp3"}, {"id":1, "value":"weba"}, {"id":2, "value":"oga"}, {"id":3, "value":"opus"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-100, N'Umbraco.UploadField', N'Nvarchar', N'{"fileExtensions":[{"id":0, "value":"mp4"}, {"id":1, "value":"webm"}, {"id":2, "value":"ogv"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-99, N'Umbraco.Label', N'Decimal', N'{"umbracoDataValueType":"DECIMAL"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-98, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"TIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-97, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-96, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-95, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-94, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"DATETIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-93, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"BIGINT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-92, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"STRING"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-91, N'Umbraco.Label', N'Integer', N'{"umbracoDataValueType":"INT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-90, N'Umbraco.UploadField', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-89, N'Umbraco.TextArea', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-88, N'Umbraco.TextBox', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-87, N'Umbraco.TinyMCE', N'Ntext', N'{"value":",code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-51, N'Umbraco.Integer', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-49, N'Umbraco.TrueFalse', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-43, N'Umbraco.CheckBoxList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-42, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-41, N'Umbraco.DateTime', N'Date', N'{"format":"YYYY-MM-DD"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-40, N'Umbraco.RadioButtonList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-39, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-37, N'Umbraco.ColorPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-36, N'Umbraco.DateTime', N'Date', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1041, N'Umbraco.Tags', N'Ntext', N'{"group":"default", "storageType":"Json"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1043, N'Umbraco.ImageCropper', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1047, N'Umbraco.MemberPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1048, N'Umbraco.MediaPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1049, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":1}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1050, N'Umbraco.MultiUrlPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1051, N'Umbraco.MediaPicker3', N'Ntext', N'{"multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1052, N'Umbraco.MediaPicker3', N'Ntext', N'{"multiple": true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1053, N'Umbraco.MediaPicker3', N'Ntext', N'{"filter":"Image", "multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1054, N'Umbraco.MediaPicker3', N'Ntext', N'{"filter":"Image", "multiple": true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1055, N'Umbraco.Grid', N'Ntext', N'{"items":{"styles":[{"label":"Set a background image","description":"Set a row background","key":"background-image","view":"imagepicker","modifier":"url({0})"}],"config":[{"label":"Class","description":"Set a css class","key":"class","view":"textstring"}],"columns":12,"templates":[{"name":"1 column layout","sections":[{"grid":12}]},{"name":"3/9","sections":[{"grid":3,"allowAll":true},{"grid":9,"allowAll":true}]}],"layouts":[{"name":"One column","areas":[{"grid":12,"allowed":[],"allowAll":true}],"label":"One column"},{"name":"Two columns","areas":[{"grid":6,"allowed":[],"allowAll":true},{"grid":6,"allowed":[],"allowAll":true}],"label":"Two columns"},{"name":"Three columns","areas":[{"grid":4,"allowed":[],"allowAll":true},{"grid":4,"allowed":[],"allowAll":true},{"grid":4,"allowed":[],"allowAll":true}],"label":"Three columns"},{"name":"8/4","areas":[{"grid":8,"allowed":[],"allowAll":true},{"grid":4,"allowed":[],"allowAll":true}],"label":"8/4"}]},"rte":{"toolbar":["ace","removeformat","undo","redo","cut","copy","paste","styleselect","bold","italic","underline","strikethrough","alignleft","aligncenter","alignright","alignjustify","bullist","numlist","outdent","indent","link","unlink","anchor","umbmediapicker","umbmacro","table","umbembeddialog","hr","subscript","superscript","charmap","rtl","ltr","fullscreen"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"ignoreUserStartNodes":false}')
GO
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1061, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1062, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1063, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1064, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1069, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1070, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1075, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1076, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1077, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1098, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1099, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (2071, 1, 0)
GO
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (2, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (3, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (4, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (5, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (6, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (7, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (8, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (9, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (10, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (17, NULL, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (18, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (19, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (20, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (21, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (24, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (25, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (26, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (27, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (28, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (29, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (30, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (32, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (33, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (34, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (54, NULL, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (55, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (56, NULL, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (57, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (58, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (59, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (60, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (62, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (63, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (64, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (65, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (66, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (67, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (69, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1016, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1017, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1018, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1019, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1020, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1021, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1022, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1023, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1024, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1047, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1048, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1049, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1050, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1051, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1052, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1053, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1054, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1055, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1056, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1057, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1058, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1059, 1060, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1060, 1060, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1061, 1060, 0)
GO
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core', N'{03482BB0-CF13-475C-845E-ECB8319DBE3C}', CAST(N'2022-10-23T18:11:25.530' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Web.PublishedCache.NuCache.Serializer', N'JSON', CAST(N'2022-10-23T20:35:35.440' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (1, N'en-US', N'English (United States)', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
GO
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-1000, 1, N'MainDom')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-340, 1, N'Languages')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-339, 1, N'KeyValues')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-338, 1, N'Domains')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-337, -1, N'MemberTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-336, 1, N'MediaTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-335, -1, N'MemberTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-334, -1, N'MediaTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, -1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, 1, N'ContentTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, -1, N'Servers')
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1, -1, 1055, N'DataType', CAST(N'2022-10-23T18:18:25.630' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (2, -1, -1, N'DocumentType', CAST(N'2022-10-23T18:19:02.653' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (3, -1, -1, N'DocumentType', CAST(N'2022-10-23T18:19:13.013' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (4, -1, -1, N'DocumentType', CAST(N'2022-10-23T18:19:20.877' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (5, -1, -1, N'DocumentType', CAST(N'2022-10-23T18:19:21.423' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (6, -1, 1059, N'Template', CAST(N'2022-10-23T18:20:11.463' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (7, -1, 1060, N'Template', CAST(N'2022-10-23T18:20:23.440' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (8, -1, 1058, N'DocumentType', CAST(N'2022-10-23T18:22:05.523' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (9, -1, 1057, N'DocumentType', CAST(N'2022-10-23T18:22:22.523' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (10, -1, 1061, N'Document', CAST(N'2022-10-23T18:36:26.700' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (11, -1, 1055, N'DataType', CAST(N'2022-10-23T18:44:06.713' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (12, -1, 1061, N'Document', CAST(N'2022-10-23T18:44:58.490' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (13, -1, 1061, N'Document', CAST(N'2022-10-23T18:46:11.687' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (14, -1, 1062, N'Document', CAST(N'2022-10-23T18:49:48.603' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (15, -1, 1063, N'Document', CAST(N'2022-10-23T18:50:47.240' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (16, -1, 1064, N'Document', CAST(N'2022-10-23T18:52:04.883' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (17, -1, 1065, N'Document', CAST(N'2022-10-23T18:57:34.010' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (18, -1, 1066, N'Media', CAST(N'2022-10-23T19:00:23.017' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (19, -1, 1067, N'Document', CAST(N'2022-10-23T19:01:17.603' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (20, -1, 1067, N'Document', CAST(N'2022-10-23T19:01:26.483' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (21, -1, 1067, N'Document', CAST(N'2022-10-23T19:01:26.677' AS DateTime), N'Delete', N'Trashed content with Id: 1067 related to original parent content with Id: 1061', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (22, -1, 1065, N'Document', CAST(N'2022-10-23T19:01:46.350' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (23, -1, 1068, N'DocumentType', CAST(N'2022-10-23T19:05:15.790' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (24, -1, 1058, N'DocumentType', CAST(N'2022-10-23T19:06:05.697' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (25, -1, 1069, N'Document', CAST(N'2022-10-23T19:06:55.857' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (26, -1, 1070, N'Document', CAST(N'2022-10-23T19:08:01.643' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (27, -1, 1070, N'Document', CAST(N'2022-10-23T19:08:09.850' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (28, -1, 1072, N'Member', CAST(N'2022-10-23T19:11:02.343' AS DateTime), N'New', N'Member ''kollar.michal21@gmail.com'' was created with Id 1072', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (29, NULL, 1072, N'Member', CAST(N'2022-10-23T19:11:02.440' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (30, NULL, 1072, N'Member', CAST(N'2022-10-23T19:11:02.513' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (31, NULL, 1072, N'Member', CAST(N'2022-10-23T19:11:38.417' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (32, -1, 1073, N'MemberType', CAST(N'2022-10-23T19:13:34.473' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (33, NULL, 1072, N'Member', CAST(N'2022-10-23T19:14:01.423' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (34, -1, 1074, N'Member', CAST(N'2022-10-23T19:15:21.467' AS DateTime), N'New', N'Member ''kollar.michal21@gmail.com'' was created with Id 1074', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (35, NULL, 1074, N'Member', CAST(N'2022-10-23T19:15:21.540' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (36, NULL, 1074, N'Member', CAST(N'2022-10-23T19:15:21.610' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (37, -1, 1075, N'Document', CAST(N'2022-10-23T19:16:38.763' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (38, -1, 1076, N'Document', CAST(N'2022-10-23T19:17:17.613' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (39, -1, 1077, N'Document', CAST(N'2022-10-23T19:18:14.913' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (40, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:20:05.807' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (41, -1, -1, N'Macro', CAST(N'2022-10-23T19:20:05.933' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (42, -1, -1, N'Macro', CAST(N'2022-10-23T19:20:11.510' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (43, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:20:33.473' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (44, -1, -1, N'Macro', CAST(N'2022-10-23T19:20:33.493' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (45, -1, -1, N'Macro', CAST(N'2022-10-23T19:20:39.373' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (46, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:21:00.317' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (47, -1, -1, N'Macro', CAST(N'2022-10-23T19:21:00.347' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (48, -1, -1, N'Macro', CAST(N'2022-10-23T19:21:06.487' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (49, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:21:27.397' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (50, -1, -1, N'Macro', CAST(N'2022-10-23T19:21:27.417' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (51, -1, -1, N'Macro', CAST(N'2022-10-23T19:21:32.547' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (52, -1, 1063, N'Document', CAST(N'2022-10-23T19:22:40.790' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (53, -1, 1065, N'Document', CAST(N'2022-10-23T19:23:27.770' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (54, -1, 1075, N'Document', CAST(N'2022-10-23T19:23:47.903' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (55, -1, 1076, N'Document', CAST(N'2022-10-23T19:24:07.587' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (56, -1, 1077, N'Document', CAST(N'2022-10-23T19:24:54.073' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (57, -1, 1078, N'Media', CAST(N'2022-10-23T19:25:23.420' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (58, -1, 1079, N'Media', CAST(N'2022-10-23T19:25:44.960' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (59, -1, 1080, N'Media', CAST(N'2022-10-23T19:25:56.957' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (60, -1, 1081, N'Media', CAST(N'2022-10-23T19:26:42.700' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (61, -1, 1082, N'Media', CAST(N'2022-10-23T19:26:42.943' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (62, -1, 1083, N'Media', CAST(N'2022-10-23T19:26:43.110' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (63, -1, 1084, N'Media', CAST(N'2022-10-23T19:26:43.267' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (64, -1, 1085, N'Media', CAST(N'2022-10-23T19:27:40.827' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (65, -1, 1086, N'Media', CAST(N'2022-10-23T19:27:40.987' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (66, -1, 1087, N'Media', CAST(N'2022-10-23T19:27:41.130' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (67, -1, 1080, N'Media', CAST(N'2022-10-23T19:28:22.453' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (68, -1, 1079, N'Media', CAST(N'2022-10-23T19:28:30.883' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (69, -1, 1080, N'Media', CAST(N'2022-10-23T19:28:37.363' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (70, -1, 1088, N'Media', CAST(N'2022-10-23T19:28:59.763' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (71, -1, 1089, N'Media', CAST(N'2022-10-23T19:29:07.563' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (72, -1, 1090, N'Media', CAST(N'2022-10-23T19:29:22.707' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (73, -1, 1091, N'Media', CAST(N'2022-10-23T19:29:22.947' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (74, -1, 1092, N'Media', CAST(N'2022-10-23T19:29:23.097' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (75, -1, 1088, N'Media', CAST(N'2022-10-23T19:29:24.483' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (76, -1, 1080, N'Media', CAST(N'2022-10-23T19:29:27.903' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (77, -1, 1093, N'Media', CAST(N'2022-10-23T19:29:38.267' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (78, -1, 1094, N'Media', CAST(N'2022-10-23T19:29:38.720' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (79, -1, 1095, N'Media', CAST(N'2022-10-23T19:29:39.177' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (80, -1, 1096, N'Media', CAST(N'2022-10-23T19:29:39.467' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (81, -1, 1089, N'Media', CAST(N'2022-10-23T19:29:41.930' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (82, -1, 1089, N'Media', CAST(N'2022-10-23T19:29:47.843' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (83, -1, 1097, N'DocumentType', CAST(N'2022-10-23T19:34:22.313' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (84, -1, 1058, N'DocumentType', CAST(N'2022-10-23T19:35:46.727' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (85, -1, 1098, N'Document', CAST(N'2022-10-23T19:36:36.780' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (86, -1, 1099, N'Document', CAST(N'2022-10-23T19:37:01.293' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (87, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:37:43.047' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (88, -1, -1, N'Macro', CAST(N'2022-10-23T19:37:43.083' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (89, -1, -1, N'Macro', CAST(N'2022-10-23T19:37:49.243' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (90, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:38:42.727' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (91, -1, -1, N'Macro', CAST(N'2022-10-23T19:38:42.757' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (92, -1, -1, N'Macro', CAST(N'2022-10-23T19:38:48.417' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (93, -1, -1, N'PartialViewMacro', CAST(N'2022-10-23T19:39:16.630' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (94, -1, -1, N'Macro', CAST(N'2022-10-23T19:39:16.653' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (95, -1, -1, N'Macro', CAST(N'2022-10-23T19:39:22.033' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (96, -1, 1063, N'Document', CAST(N'2022-10-23T19:41:12.893' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (97, -1, 1062, N'Document', CAST(N'2022-10-23T19:41:18.703' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (98, -1, 1064, N'Document', CAST(N'2022-10-23T19:41:24.607' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (99, -1, 1065, N'Document', CAST(N'2022-10-23T19:41:30.927' AS DateTime), N'Publish', NULL, NULL)
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (100, -1, 1070, N'Document', CAST(N'2022-10-23T19:41:36.047' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (101, -1, 1075, N'Document', CAST(N'2022-10-23T19:41:41.950' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (102, -1, 1076, N'Document', CAST(N'2022-10-23T19:41:46.053' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (103, -1, 1077, N'Document', CAST(N'2022-10-23T19:41:50.997' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (104, -1, 1061, N'Document', CAST(N'2022-10-23T21:10:12.297' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (105, -1, 1061, N'Document', CAST(N'2022-10-23T21:11:20.777' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (106, NULL, 1074, N'Member', CAST(N'2022-10-23T21:15:13.207' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (107, NULL, 1074, N'Member', CAST(N'2022-10-23T21:15:17.310' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (108, NULL, 1074, N'Member', CAST(N'2022-10-23T21:15:50.050' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (109, -1, 1065, N'Document', CAST(N'2022-10-23T21:35:55.003' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (110, -1, 1064, N'Document', CAST(N'2022-10-23T21:57:20.680' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (111, NULL, 1074, N'Member', CAST(N'2022-10-23T21:58:28.463' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1022, NULL, 1074, N'Member', CAST(N'2022-10-24T06:42:24.207' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1023, NULL, 1074, N'Member', CAST(N'2022-10-24T06:43:13.973' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1024, -1, 1064, N'Document', CAST(N'2022-10-24T06:47:28.550' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1025, -1, 1064, N'Document', CAST(N'2022-10-24T07:30:49.477' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1026, -1, 1062, N'Document', CAST(N'2022-10-24T07:44:29.593' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1027, -1, 1062, N'Document', CAST(N'2022-10-24T07:46:07.183' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1028, -1, 1062, N'Document', CAST(N'2022-10-24T07:46:42.797' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1029, -1, 1062, N'Document', CAST(N'2022-10-24T07:48:52.363' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1030, -1, 1062, N'Document', CAST(N'2022-10-24T07:50:20.137' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1031, -1, -1, N'PartialViewMacro', CAST(N'2022-10-24T07:58:36.570' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1032, -1, -1, N'Macro', CAST(N'2022-10-24T07:58:36.650' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1033, -1, -1, N'Macro', CAST(N'2022-10-24T07:58:45.410' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1034, -1, 1061, N'Document', CAST(N'2022-10-24T07:59:03.847' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1035, -1, 1061, N'Document', CAST(N'2022-10-24T08:09:59.097' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1036, -1, 1065, N'Document', CAST(N'2022-10-24T08:16:57.323' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1037, -1, 1065, N'Document', CAST(N'2022-10-24T08:17:47.143' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1038, -1, 1065, N'Document', CAST(N'2022-10-24T08:18:37.147' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1039, -1, -1, N'PartialViewMacro', CAST(N'2022-10-24T08:23:13.063' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1040, -1, -1, N'Macro', CAST(N'2022-10-24T08:23:13.143' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1041, -1, -1, N'Macro', CAST(N'2022-10-24T08:23:20.003' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1042, -1, -1, N'Macro', CAST(N'2022-10-24T08:25:20.123' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1043, -1, 1065, N'Document', CAST(N'2022-10-24T08:26:44.797' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1044, -1, 1065, N'Document', CAST(N'2022-10-24T08:27:02.333' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1045, -1, 1065, N'Document', CAST(N'2022-10-24T08:36:23.733' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1046, -1, 1065, N'Document', CAST(N'2022-10-24T08:36:23.937' AS DateTime), N'Delete', N'Trashed content with Id: 1065 related to original parent content with Id: 1061', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1047, -1, 1065, N'Document', CAST(N'2022-10-24T08:36:32.993' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1048, -1, 1067, N'Document', CAST(N'2022-10-24T08:36:38.713' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1049, -1, 1065, N'Document', CAST(N'2022-10-24T08:36:42.213' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1050, -1, 2068, N'Document', CAST(N'2022-10-24T08:39:35.173' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1051, -1, 2068, N'Document', CAST(N'2022-10-24T08:40:42.330' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1052, -1, 2068, N'Document', CAST(N'2022-10-24T08:41:19.010' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1053, -1, 2068, N'Document', CAST(N'2022-10-24T08:41:30.523' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1054, -1, 2068, N'Document', CAST(N'2022-10-24T08:41:37.923' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1055, -1, 0, N'Document', CAST(N'2022-10-24T08:42:40.053' AS DateTime), N'Sort', N'Sorting content performed by user', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1056, -1, -1, N'PartialViewMacro', CAST(N'2022-10-24T08:53:42.733' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1057, -1, -1, N'Macro', CAST(N'2022-10-24T08:53:42.797' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1058, -1, -1, N'Macro', CAST(N'2022-10-24T08:53:48.887' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1059, -1, 2068, N'Document', CAST(N'2022-10-24T08:54:34.567' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1060, -1, 2068, N'Document', CAST(N'2022-10-24T08:54:34.683' AS DateTime), N'Delete', N'Trashed content with Id: 2068 related to original parent content with Id: 1061', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1061, -1, 2069, N'Document', CAST(N'2022-10-24T08:55:17.350' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1062, -1, 2069, N'Document', CAST(N'2022-10-24T08:59:31.927' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1063, -1, 2069, N'Document', CAST(N'2022-10-24T08:59:38.750' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1064, -1, 2069, N'Document', CAST(N'2022-10-24T08:59:38.863' AS DateTime), N'Delete', N'Trashed content with Id: 2069 related to original parent content with Id: 1061', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1065, -1, 2070, N'Document', CAST(N'2022-10-24T09:06:51.263' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1066, -1, 2070, N'Document', CAST(N'2022-10-24T09:07:07.823' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1067, -1, 2070, N'Document', CAST(N'2022-10-24T09:07:51.140' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1068, -1, 2070, N'Document', CAST(N'2022-10-24T09:08:47.947' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1069, -1, 2070, N'Document', CAST(N'2022-10-24T09:09:53.483' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1070, -1, 2070, N'Document', CAST(N'2022-10-24T09:12:20.717' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1071, -1, 2070, N'Document', CAST(N'2022-10-24T09:13:18.417' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1072, -1, 2070, N'Document', CAST(N'2022-10-24T09:14:45.387' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1073, -1, 2070, N'Document', CAST(N'2022-10-24T09:14:45.497' AS DateTime), N'Delete', N'Trashed content with Id: 2070 related to original parent content with Id: 1061', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1074, -1, 2071, N'Document', CAST(N'2022-10-24T09:17:18.890' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1075, -1, 0, N'Document', CAST(N'2022-10-24T09:17:25.440' AS DateTime), N'Sort', N'Sorting content performed by user', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1076, -1, 2071, N'Document', CAST(N'2022-10-24T09:17:27.723' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1077, -1, 2071, N'Document', CAST(N'2022-10-24T09:17:37.457' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1078, -1, 2071, N'Document', CAST(N'2022-10-24T09:20:43.077' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1079, -1, -1, N'PartialViewMacro', CAST(N'2022-10-24T09:23:09.470' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1080, -1, -1, N'Macro', CAST(N'2022-10-24T09:23:22.313' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1081, -1, 1070, N'Document', CAST(N'2022-10-24T09:24:58.227' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1082, -1, 2068, N'Document', CAST(N'2022-10-24T09:25:06.827' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1083, -1, 2069, N'Document', CAST(N'2022-10-24T09:25:09.737' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1084, -1, 2070, N'Document', CAST(N'2022-10-24T09:25:13.927' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1085, -1, -1, N'Macro', CAST(N'2022-10-24T09:25:30.293' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1086, -1, -1, N'Macro', CAST(N'2022-10-24T09:25:47.363' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1087, -1, 1070, N'Document', CAST(N'2022-10-24T09:26:18.397' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1088, -1, 1062, N'Document', CAST(N'2022-10-24T09:34:50.387' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1089, -1, 2071, N'Document', CAST(N'2022-10-24T09:35:31.837' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1090, -1, 2071, N'Document', CAST(N'2022-10-24T09:38:03.823' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1091, -1, 2071, N'Document', CAST(N'2022-10-24T10:08:31.207' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1092, -1, 2071, N'Document', CAST(N'2022-10-24T10:17:25.080' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1093, -1, 2071, N'Document', CAST(N'2022-10-24T10:18:10.277' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1094, -1, 2071, N'Document', CAST(N'2022-10-24T10:18:54.930' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1095, -1, 2071, N'Document', CAST(N'2022-10-25T06:59:34.023' AS DateTime), N'Publish', NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
GO
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (13, N'/media/hzoj3ixt/kollim.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (35, NULL)
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (36, NULL)
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (37, NULL)
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (38, N'/media/0gwanljd/02-01.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (39, N'/media/3vmhtk0m/02-02.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (40, N'/media/affigsx0/03-02.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (41, N'/media/wqbdbws2/img_6374.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (42, N'/media/xy3lnfj0/01-04.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (43, N'/media/tt2lwes1/03-05.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (44, N'/media/o0bnyxs0/04-06.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (45, NULL)
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (46, NULL)
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (47, N'/media/324lmg5h/01-04.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (48, N'/media/5rzjotte/03-05.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (49, N'/media/5pqnpsj4/04-06.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (50, N'/media/vfenabcb/04-04.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (51, N'/media/wm4jdq0a/04-05.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (52, N'/media/unxotbqo/financovanie.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (53, N'/media/kr0p3dzx/situacia.jpg')
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-1, N'916724a5-173d-4619-b97e-b9de133dd6f5', -1, 0, N'-1', 0, 0, -1, N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2022-10-23T18:11:21.333' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1061, N'0fc54525-05c4-418e-a3f7-acd5f6c7e0c8', -1, 1, N'-1,1061', 0, 0, -1, N'uvod', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T18:36:26.040' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1062, N'430956a7-216b-417b-a57f-4220876651a3', 1061, 2, N'-1,1061,1062', 0, 0, -1, N'osobne-udaje', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T18:49:48.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1063, N'e430d1c0-d854-46a7-9d70-e79c3ec3395a', 1061, 2, N'-1,1061,1063', 1, 0, -1, N'vzdelanie', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T18:50:47.167' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1064, N'22a4bb2e-0ad4-4cd2-bd6d-979e03261bae', 1061, 2, N'-1,1061,1064', 2, 0, -1, N'galeria', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T18:52:04.797' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1069, N'44866fe3-5658-46fc-ab55-c0d369134df1', 1061, 2, N'-1,1061,1069', 4, 0, -1, N'texty', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:06:55.790' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1070, N'b20cdbcb-dcaa-4bb6-b58f-a57b16d97603', 1061, 2, N'-1,1061,1070', 5, 0, -1, N'stranka-nenajdena', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:08:01.577' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1075, N'0c01d34b-856d-4805-bee2-27a7f6692ab6', 1061, 2, N'-1,1061,1075', 6, 0, -1, N'clenska-sekcia', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:16:38.693' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1076, N'a9f8dd9a-1a97-4fd1-b7c3-498ce021e9e5', 1075, 3, N'-1,1061,1075,1076', 0, 0, -1, N'prihlasenie', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:17:17.587' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1077, N'f1a0d4db-9fe7-43b9-a51f-5e59039f312d', 1061, 2, N'-1,1061,1077', 7, 0, -1, N'clenska-sekcia-nepristupna', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:18:14.847' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1098, N'519488ab-c735-49b8-8adc-c53b994b82f5', 1064, 3, N'-1,1061,1064,1098', 0, 0, -1, N'skupina1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:36:36.620' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1099, N'2ce29655-d320-41b0-8b2d-53227412ef85', 1064, 3, N'-1,1061,1064,1099', 1, 0, -1, N'skupina2', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-23T19:37:01.270' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (2071, N'465a59c5-9ed0-41e8-9f0d-0afbf897c694', 1061, 2, N'-1,1061,2071', 3, 0, -1, N'kontakt', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2022-10-24T09:17:18.820' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1066, N'a28e5d38-88f3-4256-ae70-83c83a8b1305', -1, 1, N'-1,1066', 0, 0, -1, N'Michal Kollár', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:00:22.583' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1078, N'4eaf9727-a33a-4b10-8f3b-ae7ebbaed81d', -1, 1, N'-1,1078', 1, 0, -1, N'galeria', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:25:23.370' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1079, N'bdd14bd3-c2a4-4771-b950-56ddf0fd6248', 1078, 2, N'-1,1078,1079', 0, 0, -1, N'verzia2', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:25:44.953' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1080, N'f4ec2c38-2a02-4de6-9b4e-e14ff202bfc0', 1078, 2, N'-1,1078,1080', 1, 0, -1, N'verzia1', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:25:56.947' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1081, N'ad06acd7-3123-4c76-aaa0-e3399ae656cd', 1080, 3, N'-1,1078,1080,1081', 0, 0, -1, N'02 01', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:26:42.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1082, N'ab7958eb-594c-4ef8-ab77-46113244f909', 1080, 3, N'-1,1078,1080,1082', 1, 0, -1, N'02 02', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:26:42.917' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1083, N'4a834a07-c0fa-43af-852c-a25a612846b7', 1080, 3, N'-1,1078,1080,1083', 2, 0, -1, N'03 02', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:26:43.093' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1084, N'da2003b2-765c-4c1a-bd74-09c72d1b9f02', 1080, 3, N'-1,1078,1080,1084', 3, 0, -1, N'Img 6374', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:26:43.253' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1085, N'95b63ab8-003a-40d1-b5c6-ab3a2e1d0c6c', 1080, 3, N'-1,1078,1080,1085', 4, 0, -1, N'01 04', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:27:40.777' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1086, N'12bbf89a-285b-4f52-8aaf-5ca82f08ea26', 1080, 3, N'-1,1078,1080,1086', 5, 0, -1, N'03 05', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:27:40.977' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1087, N'5ecc8370-555a-45ec-a535-b4c398aa076a', 1080, 3, N'-1,1078,1080,1087', 6, 0, -1, N'04 06', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:27:41.117' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1088, N'c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6', 1079, 3, N'-1,1078,1079,1088', 0, 0, -1, N'skupina1', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:28:59.737' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1089, N'56cc952a-c8d0-403e-be8b-7e5f6fd92ace', 1079, 3, N'-1,1078,1079,1089', 1, 0, -1, N'skupina2', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:07.553' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1090, N'1bb63ce9-c5e7-4c55-8254-71a4c53b858c', 1088, 4, N'-1,1078,1079,1088,1090', 0, 0, -1, N'01 04', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:22.677' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1091, N'4e9772fa-6e64-4da0-9e31-053c4589d630', 1088, 4, N'-1,1078,1079,1088,1091', 1, 0, -1, N'03 05', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:22.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1092, N'c9c7e1fd-fb3e-47c4-9292-58137da96917', 1088, 4, N'-1,1078,1079,1088,1092', 2, 0, -1, N'04 06', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:23.080' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1093, N'04d048af-4c41-42c8-b0de-410e68e22980', 1089, 4, N'-1,1078,1079,1089,1093', 0, 0, -1, N'04 04', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:38.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1094, N'c3913db5-7c40-4b53-a960-e8f4f1dad327', 1089, 4, N'-1,1078,1079,1089,1094', 1, 0, -1, N'04 05', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:38.530' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1095, N'86e96ea5-3e0e-4e6a-8372-0c5cd02ea283', 1089, 4, N'-1,1078,1079,1089,1095', 2, 0, -1, N'Financovanie', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:39.083' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1096, N'8ffe7452-4937-4cfd-9eb7-c04871ab3ac6', 1089, 4, N'-1,1078,1079,1089,1096', 3, 0, -1, N'Situacia', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2022-10-23T19:29:39.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1044, N'd59be02f-1df9-4228-aa1e-01917d806cda', -1, 1, N'-1,1044', 0, 0, -1, N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2022-10-23T18:11:21.367' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1073, N'9d379f28-3781-466d-9ca0-c10f31c48f85', -1, 1, N'-1,1073', 1, 0, -1, N'ClenOsobnejStranky', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2022-10-23T19:13:34.390' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-21, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', -1, 0, N'-1,-21', 0, 0, -1, N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2022-10-23T18:11:21.347' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1059, N'0b02fbbb-abed-4008-9bad-e035fd9e8eaf', -1, 1, N'-1,1059', 0, 0, NULL, N'_Layout', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2022-10-23T18:20:11.427' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1060, N'00f03b6d-705d-4978-a63b-f766ed65eb87', -1, 1, N'-1,1060', 0, 0, NULL, N'LandingPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2022-10-23T18:20:23.440' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1071, N'0a83815d-c74e-40bb-9a26-42050ff5d09a', -1, 0, N'-1,1071', 0, 0, NULL, N'ClenskaSkupinaOsobnejStranky', N'366e63b9-880f-4e13-a61c-98069b029728', CAST(N'2022-10-23T19:09:17.347' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1031, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', -1, 1, N'-1,1031', 2, 0, -1, N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1032, N'cc07b313-0843-4aa8-bbda-871c8da728c8', -1, 1, N'-1,1032', 2, 0, -1, N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1033, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', -1, 1, N'-1,1033', 2, 0, -1, N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1034, N'f6c515bb-653c-4bdc-821c-987729ebe327', -1, 1, N'-1,1034', 2, 0, -1, N'Video', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1035, N'a5ddeee0-8fd8-4cee-a658-6f1fcdb00de3', -1, 1, N'-1,1035', 2, 0, -1, N'Audio', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1036, N'a43e3414-9599-4230-a7d3-943a21b20122', -1, 1, N'-1,1036', 2, 0, -1, N'Article', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1037, N'c4b1efcf-a9d5-41c4-9621-e9d273b52a9c', -1, 1, N'-1,1037', 2, 0, -1, N'Vector Graphics (SVG)', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1056, N'e6be2ed1-5b4d-4552-9b36-b1d99e6fdac9', -1, 1, N'-1,1056', 0, 0, -1, N'CmsContent', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2022-10-23T18:19:02.550' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1057, N'754df076-4e2b-4bef-9a5b-2a539a9af5e7', -1, 1, N'-1,1057', 1, 0, -1, N'SEO', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2022-10-23T18:19:13.000' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1058, N'fb82c1af-a17d-46ab-9409-8f5570cc8b32', -1, 1, N'-1,1058', 2, 0, -1, N'LandingPage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2022-10-23T18:19:20.853' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1068, N'da474d78-7597-4e0c-a2aa-0668b88b8eaf', -1, 1, N'-1,1068', 3, 0, -1, N'Text', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2022-10-23T19:05:15.677' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1097, N'ab50b3f6-6b22-489f-9b9d-b56c76da0a46', -1, 1, N'-1,1097', 4, 0, -1, N'PolozkaPreGaleriu', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2022-10-23T19:34:22.257' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-20, N'0f582a79-1e41-4cf0-bfa0-76340651891a', -1, 0, N'-1,-20', 0, 0, -1, N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2022-10-23T18:11:21.347' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1074, N'3e64fbf3-5225-4081-952c-3c63b7b51c20', -1, 1, N'-1,1074', 0, 0, -1, N'kollar.michal21@gmail.com', N'39eb0f98-b348-42a1-8662-e7eb18487560', CAST(N'2022-10-23T19:15:21.403' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-103, N'215cb418-2153-4429-9aef-8c0f0041191b', -1, 1, N'-1,-103', 38, 0, -1, N'Upload Vector Graphics', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-102, N'bc1e266c-dac4-4164-bf08-8a1ec6a7143d', -1, 1, N'-1,-102', 37, 0, -1, N'Upload Article', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-101, N'8f430dd6-4e96-447e-9dc0-cb552c8cd1f3', -1, 1, N'-1,-101', 36, 0, -1, N'Upload Audio', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-100, N'70575fe7-9812-4396-bbe1-c81a76db71b5', -1, 1, N'-1,-100', 35, 0, -1, N'Upload Video', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-99, N'8f1ef1e1-9de4-40d3-a072-6673f631ca64', -1, 1, N'-1,-99', 39, 0, -1, N'Label (decimal)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.353' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-98, N'a97cec69-9b71-4c30-8b12-ec398860d7e8', -1, 1, N'-1,-98', 38, 0, -1, N'Label (time)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-97, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', -1, 1, N'-1,-97', 2, 0, -1, N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-96, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', -1, 1, N'-1,-96', 2, 0, -1, N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-95, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', -1, 1, N'-1,-95', 2, 0, -1, N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-94, N'0e9794eb-f9b5-4f20-a788-93acd233a7e4', -1, 1, N'-1,-94', 37, 0, -1, N'Label (datetime)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-93, N'930861bf-e262-4ead-a704-f99453565708', -1, 1, N'-1,-93', 36, 0, -1, N'Label (bigint)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-92, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', -1, 1, N'-1,-92', 35, 0, -1, N'Label (string)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-91, N'8e7f995c-bd81-4627-9932-c40e568ec788', -1, 1, N'-1,-91', 36, 0, -1, N'Label (integer)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.350' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-90, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', -1, 1, N'-1,-90', 34, 0, -1, N'Upload File', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-89, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', -1, 1, N'-1,-89', 33, 0, -1, N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-88, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', -1, 1, N'-1,-88', 32, 0, -1, N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-87, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', -1, 1, N'-1,-87', 4, 0, -1, N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-51, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', -1, 1, N'-1,-51', 2, 0, -1, N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-49, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', -1, 1, N'-1,-49', 2, 0, -1, N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-43, N'fbaf13a8-4036-41f2-93a3-974f678c312a', -1, 1, N'-1,-43', 2, 0, -1, N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-42, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', -1, 1, N'-1,-42', 2, 0, -1, N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-41, N'5046194e-4237-453c-a547-15db3a07c4e1', -1, 1, N'-1,-41', 2, 0, -1, N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-40, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', -1, 1, N'-1,-40', 2, 0, -1, N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-39, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', -1, 1, N'-1,-39', 2, 0, -1, N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-37, N'0225af17-b302-49cb-9176-b9f35cab9c17', -1, 1, N'-1,-37', 2, 0, -1, N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-36, N'e4d66c0f-b935-4200-81f0-025f7256b89a', -1, 1, N'-1,-36', 2, 0, -1, N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.360' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1041, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', -1, 1, N'-1,1041', 2, 0, -1, N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1043, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', -1, 1, N'-1,1043', 2, 0, -1, N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1046, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', -1, 1, N'-1,1046', 2, 0, -1, N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.367' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1047, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', -1, 1, N'-1,1047', 2, 0, -1, N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.367' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1048, N'135d60e0-64d9-49ed-ab08-893c9ba44ae5', -1, 1, N'-1,1048', 2, 0, -1, N'Media Picker (legacy)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.367' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1049, N'9dbbcbbb-2327-434a-b355-af1b84e5010a', -1, 1, N'-1,1049', 2, 0, -1, N'Multiple Media Picker (legacy)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1050, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', -1, 1, N'-1,1050', 2, 0, -1, N'Multi URL Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1051, N'4309a3ea-0d78-4329-a06c-c80b036af19a', -1, 1, N'-1,1051', 2, 0, -1, N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1052, N'1b661f40-2242-4b44-b9cb-3990ee2b13c0', -1, 1, N'-1,1052', 2, 0, -1, N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1053, N'ad9f0cf2-bda2-45d5-9ea1-a63cfc873fd3', -1, 1, N'-1,1053', 2, 0, -1, N'Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1054, N'0e63d883-b62b-4799-88c3-157f82e83ecc', -1, 1, N'-1,1054', 2, 0, -1, N'Multiple Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:11:21.373' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1055, N'a51f14bd-3598-4317-b554-d1705f88c746', -1, 1, N'-1,1055', 37, 0, -1, N'Grid Layout', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2022-10-23T18:18:25.507' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] ON 

INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1, 1, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"bbe63fac-dd35-4aeb-afe4-a75db20d5b3a","areas":[{"grid":"12","controls":[{"value":"<p>uvod</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (2, 2, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"bbe63fac-dd35-4aeb-afe4-a75db20d5b3a","areas":[{"grid":"12","controls":[{"value":"<p>uvod</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (3, 1, 53, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (4, 2, 53, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (5, 1, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (6, 2, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (7, 1, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (8, 2, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (9, 1, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (10, 2, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (11, 3, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"bbe63fac-dd35-4aeb-afe4-a75db20d5b3a","areas":[{"grid":"12","controls":[{"value":"<p>uvod</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (12, 3, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (13, 3, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (14, 3, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (15, 3, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (16, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"8/4","id":"7e8e1bb0-c358-4351-b930-ffff907599e0","areas":[{"grid":"8","controls":[{"value":"<h1>ÚVOD</h1>\n<p>Toto je úvodná stránka môjho osobného webu.</p>\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h2>Michal Kollár</h2>\n<p>Moje meno je Michal Kollár.</p>\n<p><br />Toto je ukážka webovej stránky.</p>\n</div>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<p><img src=\"?width=500&amp;height=374.84957882069796\" alt=\"\" width=\"500\" height=\"374.84957882069796\" data-udi=\"umb://media/a28e5d3888f34256ae7083c83a8b1305\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (17, 4, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (18, 4, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (19, 4, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (20, 4, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (21, 5, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1>OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (22, 6, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1>OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (23, 5, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (24, 6, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (25, 5, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (26, 6, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (27, 5, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (28, 6, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (29, 5, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (30, 6, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (31, 7, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"2f295135-de91-4068-93ba-cd9681d2f868","areas":[{"grid":"12","controls":[{"value":"<p>vydelanie</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (32, 8, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"2f295135-de91-4068-93ba-cd9681d2f868","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"Vzdelanie","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (33, 7, 53, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (34, 8, 53, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (35, 7, 54, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (36, 8, 54, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (37, 7, 56, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (38, 8, 56, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (39, 7, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (40, 8, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (41, 9, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1>Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (42, 10, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1>Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (43, 9, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (44, 10, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (45, 9, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (46, 10, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (47, 9, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (48, 10, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (49, 9, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (50, 10, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (61, 13, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/hzoj3ixt/kollim.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (62, 13, 7, NULL, NULL, 831, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (63, 13, 8, NULL, NULL, 623, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (64, 13, 9, NULL, NULL, NULL, NULL, NULL, N'168806', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (65, 13, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (81, 17, 57, NULL, NULL, NULL, NULL, NULL, N'+421 902 198 758', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (82, 18, 57, NULL, NULL, NULL, NULL, NULL, N'+421 902 198 758', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (83, 17, 58, NULL, NULL, NULL, NULL, NULL, N'kollar.michal21@gmail.com', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (84, 18, 58, NULL, NULL, NULL, NULL, NULL, N'kollar.michal21@gmail.com', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (85, 19, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"435f5b8b-7387-40ee-8d1b-06e3dc09cdf3","areas":[{"grid":"12","controls":[{"value":"<h1>Stránka nenájdená</h1>\n<p>Požadovaná stránka sa na tomto webu nenachádza.</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (86, 20, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"435f5b8b-7387-40ee-8d1b-06e3dc09cdf3","areas":[{"grid":"12","controls":[{"value":"<h1>Stránka nenájdená</h1>\n<p>Požadovaná stránka sa na tomto webu nenachádza.</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (87, 19, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (88, 20, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (89, 19, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (90, 20, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (91, 19, 56, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (93, 19, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (94, 20, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (95, 21, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"435f5b8b-7387-40ee-8d1b-06e3dc09cdf3","areas":[{"grid":"12","controls":[{"value":"<h1>Stránka nenájdená</h1>\n<p>Požadovaná stránka sa na tomto webu nenachádza.</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (96, 21, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (97, 21, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (98, 21, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (104, 23, 61, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (105, 23, 64, NULL, NULL, NULL, NULL, CAST(N'2022-10-23T21:15:50.000' AS DateTime), NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (106, 23, 65, NULL, NULL, NULL, NULL, CAST(N'2022-10-23T19:15:21.000' AS DateTime), NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (109, 24, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (110, 25, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (111, 24, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (112, 25, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (113, 24, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (114, 25, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (115, 24, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (116, 25, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (117, 26, 53, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (118, 27, 53, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (119, 26, 54, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (120, 27, 54, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (121, 26, 56, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (122, 27, 56, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (123, 26, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (124, 27, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (125, 28, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (126, 29, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (127, 28, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (128, 29, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (129, 28, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (130, 29, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (131, 28, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (132, 29, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (133, 30, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"2f295135-de91-4068-93ba-cd9681d2f868","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"Vzdelanie","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (134, 30, 53, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (135, 30, 54, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (136, 30, 56, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (137, 30, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (143, 25, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"5c5f5321-a212-405b-bd1f-c9369235dbdf","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"MemberInfo","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (144, 32, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"5c5f5321-a212-405b-bd1f-c9369235dbdf","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"MemberInfo","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (145, 32, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (146, 32, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (147, 32, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (148, 32, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (149, 27, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"68d617f5-5433-4c92-aaef-d322ee60267a","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"LoginForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (150, 33, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"68d617f5-5433-4c92-aaef-d322ee60267a","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"LoginForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (151, 33, 53, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (152, 33, 54, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (153, 33, 56, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (154, 33, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (155, 29, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"7451cb66-3891-4a40-9915-62b727112fe8","areas":[{"grid":"12","controls":[{"value":"<p>Nedostatočné oprávnenie do členskej sekcie</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (156, 34, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"7451cb66-3891-4a40-9915-62b727112fe8","areas":[{"grid":"12","controls":[{"value":"<p>Nedostatočné oprávnenie do členskej sekcie</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (157, 34, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (158, 34, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (159, 34, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (160, 34, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (161, 38, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/0gwanljd/02-01.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (162, 38, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (163, 38, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (164, 38, 9, NULL, NULL, NULL, NULL, NULL, N'66233', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (165, 38, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (166, 39, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/3vmhtk0m/02-02.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (167, 39, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (168, 39, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (169, 39, 9, NULL, NULL, NULL, NULL, NULL, N'63687', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (170, 39, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (171, 40, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/affigsx0/03-02.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (172, 40, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (173, 40, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (174, 40, 9, NULL, NULL, NULL, NULL, NULL, N'80641', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (175, 40, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (176, 41, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/wqbdbws2/img_6374.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (177, 41, 7, NULL, NULL, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (178, 41, 8, NULL, NULL, 568, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (179, 41, 9, NULL, NULL, NULL, NULL, NULL, N'105438', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (180, 41, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (181, 42, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/xy3lnfj0/01-04.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (182, 42, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (183, 42, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (184, 42, 9, NULL, NULL, NULL, NULL, NULL, N'87324', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (185, 42, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (186, 43, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/tt2lwes1/03-05.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (187, 43, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (188, 43, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (189, 43, 9, NULL, NULL, NULL, NULL, NULL, N'75154', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (190, 43, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (191, 44, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/o0bnyxs0/04-06.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (192, 44, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (193, 44, 8, NULL, NULL, 845, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (194, 44, 9, NULL, NULL, NULL, NULL, NULL, N'128726', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (195, 44, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (196, 47, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/324lmg5h/01-04.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (197, 47, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (198, 47, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (199, 47, 9, NULL, NULL, NULL, NULL, NULL, N'87324', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (200, 47, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (201, 48, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/5rzjotte/03-05.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (202, 48, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (203, 48, 8, NULL, NULL, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (204, 48, 9, NULL, NULL, NULL, NULL, NULL, N'75154', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (205, 48, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (206, 49, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/5pqnpsj4/04-06.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (207, 49, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (208, 49, 8, NULL, NULL, 845, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (209, 49, 9, NULL, NULL, NULL, NULL, NULL, N'128726', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (210, 49, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (211, 50, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/vfenabcb/04-04.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (212, 50, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (213, 50, 8, NULL, NULL, 849, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (214, 50, 9, NULL, NULL, NULL, NULL, NULL, N'128119', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (215, 50, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (216, 51, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/wm4jdq0a/04-05.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (217, 51, 7, NULL, NULL, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (218, 51, 8, NULL, NULL, 851, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (219, 51, 9, NULL, NULL, NULL, NULL, NULL, N'122634', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (220, 51, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (221, 52, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/unxotbqo/financovanie.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (222, 52, 7, NULL, NULL, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (223, 52, 8, NULL, NULL, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (224, 52, 9, NULL, NULL, NULL, NULL, NULL, N'94144', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (225, 52, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (226, 53, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/kr0p3dzx/situacia.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (227, 53, 7, NULL, NULL, 1618, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (228, 53, 8, NULL, NULL, 1184, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (229, 53, 9, NULL, NULL, NULL, NULL, NULL, N'285933', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (230, 53, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (231, 54, 68, NULL, NULL, NULL, NULL, NULL, N'Prva skupina', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (232, 55, 68, NULL, NULL, NULL, NULL, NULL, N'Prva skupina', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (233, 54, 69, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"d00d1b16-fafe-4e77-a98b-9fd44d36efd6","mediaKey":"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (234, 55, 69, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"d00d1b16-fafe-4e77-a98b-9fd44d36efd6","mediaKey":"c2d4b804-c8c0-4d11-8b32-39cd11f7dcb6"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (235, 56, 68, NULL, NULL, NULL, NULL, NULL, N'Druha skupina', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (236, 57, 68, NULL, NULL, NULL, NULL, NULL, N'Druha skupina', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (237, 56, 69, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"6d661c51-0a41-4a59-9e28-b4482962dfcd","mediaKey":"56cc952a-c8d0-403e-be8b-7e5f6fd92ace"}]')
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (238, 57, 69, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"6d661c51-0a41-4a59-9e28-b4482962dfcd","mediaKey":"56cc952a-c8d0-403e-be8b-7e5f6fd92ace"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (239, 58, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"2f295135-de91-4068-93ba-cd9681d2f868","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"Vzdelanie","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (240, 58, 53, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (241, 58, 54, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (242, 58, 56, NULL, NULL, NULL, NULL, NULL, N'Vzdelanie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (243, 58, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (244, 59, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (245, 59, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (246, 59, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (247, 59, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (248, 59, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (249, 60, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1>Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (250, 60, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (251, 60, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (252, 60, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (253, 60, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (259, 62, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"435f5b8b-7387-40ee-8d1b-06e3dc09cdf3","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"ContactPage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (260, 62, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (261, 62, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (262, 62, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (263, 63, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"5c5f5321-a212-405b-bd1f-c9369235dbdf","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"MemberInfo","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (264, 63, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (265, 63, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (266, 63, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (267, 63, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (268, 64, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"68d617f5-5433-4c92-aaef-d322ee60267a","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"LoginForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (269, 64, 53, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (270, 64, 54, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (271, 64, 56, NULL, NULL, NULL, NULL, NULL, N'Prihlásenie', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (272, 64, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (273, 65, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"7451cb66-3891-4a40-9915-62b727112fe8","areas":[{"grid":"12","controls":[{"value":"<p>Nedostatočné oprávnenie do členskej sekcie</p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (274, 65, 53, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (275, 65, 54, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (276, 65, 56, NULL, NULL, NULL, NULL, NULL, N'Členská sekcia neprístupná', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (277, 65, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (278, 66, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"8/4","id":"7e8e1bb0-c358-4351-b930-ffff907599e0","areas":[{"grid":"8","controls":[{"value":"<h1>ÚVOD</h1>\n<p>Toto je úvodná stránka môjho osobného webu.</p>\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h2>Michal Kollár</h2>\n<p>Moje meno je Michal Kollár.</p>\n<p><br />Toto je ukážka webovej stránky.</p>\n</div>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"Michal Kollár\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (279, 66, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (280, 66, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (281, 66, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (282, 66, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (283, 67, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"8/4","id":"7e8e1bb0-c358-4351-b930-ffff907599e0","areas":[{"grid":"8","controls":[{"value":"<h1>ÚVOD</h1>\n<p>Toto je úvodná stránka môjho osobného webu.</p>\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h2>Michal Kollár</h2>\n<p>Moje meno je Michal Kollár.</p>\n<p><br />Toto je ukážka webovej stránky.</p>\n</div>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"Michal Kollár\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null},{"name":"One column","id":"42ee8e4c-d660-4990-b367-0830d5106eb2","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"HomePage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (284, 67, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (285, 67, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (286, 67, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (287, 67, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (288, 23, 60, NULL, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (294, 69, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1>Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"Galeria3","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (295, 69, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (296, 69, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (297, 69, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (298, 69, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1076, 1016, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"Galeria3","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1077, 1016, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1078, 1016, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1079, 1016, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1080, 1016, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1081, 1017, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"0e5772e2-3816-437f-a613-36a4182e368d","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">Galéria</h1>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"Galeria3","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1082, 1017, 53, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1083, 1017, 54, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1084, 1017, 56, NULL, NULL, NULL, NULL, NULL, N'Galéria', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1085, 1017, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1086, 1018, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-dark table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1087, 1018, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1088, 1018, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1089, 1018, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1090, 1018, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1091, 1019, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-success table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1092, 1019, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1093, 1019, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1094, 1019, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1095, 1019, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1096, 1020, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<div class=\"h-100\">\n<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-success table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1097, 1020, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1098, 1020, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1099, 1020, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1100, 1020, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1101, 1021, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-success table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1102, 1021, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1103, 1021, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1104, 1021, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1105, 1021, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1106, 1022, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<div class=\"vh-100\">\n<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-success table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1107, 1022, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1108, 1022, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1109, 1022, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1110, 1022, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1111, 1023, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"42ee8e4c-d660-4990-b367-0830d5106eb2","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"HomePage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1112, 1023, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1113, 1023, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1114, 1023, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1115, 1023, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1116, 1024, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"42ee8e4c-d660-4990-b367-0830d5106eb2","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"HomePage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1117, 1024, 53, NULL, NULL, NULL, NULL, NULL, N'Osobná stránka', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1118, 1024, 54, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1119, 1024, 56, NULL, NULL, NULL, NULL, NULL, N'Úvod', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1120, 1024, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1231, 1047, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Nevahaj ma kontaktovat ...</p>\n<p class=\"contact-items\"><span class=\"glyphicon glyphicon-envelope\"></span><span>kolli.m@gmail.com</span> <br /><span class=\"glyphicon glyphicon-phone\"></span><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odosli mi spravu cez tento kontaktny formular ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1232, 1048, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Nevahaj ma kontaktovat ...</p>\n<p class=\"contact-items\"><span class=\"glyphicon glyphicon-envelope\"></span><span>kolli.m@gmail.com</span> <br /><span class=\"glyphicon glyphicon-phone\"></span><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odosli mi spravu cez tento kontaktny formular ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1233, 1047, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1234, 1048, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1235, 1047, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1236, 1048, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1237, 1047, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1238, 1048, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1239, 1047, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1240, 1048, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1241, 1049, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Nevahaj ma kontaktovat ...</p>\n<p class=\"contact-items\"><span class=\"glyphicon glyphicon-envelope\"></span><span>kolli.m@gmail.com</span> <br /><span class=\"glyphicon glyphicon-phone\"></span><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odosli mi spravu cez tento kontaktny formular ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1242, 1049, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1243, 1049, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1244, 1049, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1245, 1049, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1246, 1050, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Nevahaj ma kontaktovat ...</p>\n<p class=\"contact-items\"><span>kolli.m@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odosli mi spravu cez tento kontaktny formular ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1247, 1050, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1248, 1050, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1249, 1050, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1250, 1050, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1251, 1051, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Nevahaj ma kontaktovat ...</p>\n<p class=\"contact-items\"><span>kolli.m@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odosli mi spravu cez tento kontaktny formular ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1252, 1051, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1253, 1051, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1254, 1051, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1255, 1051, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1256, 1052, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"08af42cd-9cde-49e8-b7e7-808f86cc75b8","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"ContactPage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1257, 1052, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1258, 1052, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1259, 1052, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1260, 1053, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"08af42cd-9cde-49e8-b7e7-808f86cc75b8","areas":[{"grid":"12","controls":[{"value":{"macroAlias":"ContactPage","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1261, 1053, 53, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1262, 1053, 54, NULL, NULL, NULL, NULL, NULL, N'Stránka nenájdená', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1263, 1053, 55, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1264, 1054, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"One column","id":"95d1dc8d-4ca8-425f-9bc0-4b4bf7d3cc5b","areas":[{"grid":"12","controls":[{"value":"<div class=\"vh-100\">\n<h1 class=\"text-center\">OSOBNÉ ÚDAJE</h1>\n<table border=\"0\" class=\"table table-success table-striped\">\n<tbody>\n<tr>\n<td>Meno</td>\n<td>Michal</td>\n</tr>\n<tr>\n<td>Priezvisko</td>\n<td>Kollár</td>\n</tr>\n<tr>\n<td>Obec</td>\n<td>Prešov</td>\n</tr>\n<tr>\n<td>Stav</td>\n<td>Ženatý</td>\n</tr>\n</tbody>\n</table>\n</div>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1265, 1054, 53, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1266, 1054, 54, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1267, 1054, 56, NULL, NULL, NULL, NULL, NULL, N'Osobné údaje', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1268, 1054, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1269, 1055, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p class=\"contact-items\"><span>kolli.m@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1270, 1055, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1271, 1055, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1272, 1055, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1273, 1055, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1274, 1056, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p class=\"contact-items\"><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1275, 1056, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1276, 1056, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1277, 1056, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1278, 1056, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1279, 1057, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1280, 1057, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1281, 1057, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1282, 1057, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1283, 1057, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1284, 1058, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1285, 1058, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1286, 1058, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1287, 1058, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1288, 1058, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1289, 1059, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1290, 1059, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1291, 1059, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1292, 1059, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1293, 1059, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1294, 1060, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"min-vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1295, 1060, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1296, 1060, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1297, 1060, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1298, 1060, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1299, 1061, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Three columns","id":"b963ad1a-fe83-4421-ad31-d0a3675cffa5","areas":[{"grid":"4","controls":[{"value":"<p><img class=\"img-fluid\" src=\"/media/hzoj3ixt/kollim.jpg\" alt=\"foto\" /></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h1>Kontakt</h1>\n<p>Neváhaj ma kontaktovať ...</p>\n<p><span>kollar.michal21@gmail.com</span> <br /><span>0902198758</span></p>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"4","controls":[{"value":"<h2>Odošli mi správu cez tento kontaktný formulár ...</h2>","editor":{"alias":"rte","view":"rte"},"styles":null,"config":null},{"value":{"macroAlias":"ContactForm","macroParamsDictionary":{}},"editor":{"alias":"macro","view":"macro"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":{},"config":{"class":"min-vh-100"}}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1300, 1061, 53, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1301, 1061, 54, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1302, 1061, 56, NULL, NULL, NULL, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1303, 1061, 55, NULL, NULL, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoRelation] ON 

INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (4, 1098, 1088, 4, CAST(N'2022-10-23T19:36:36.687' AS DateTime), N'')
INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (5, 1099, 1089, 4, CAST(N'2022-10-23T19:37:01.287' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (4, N'4954ce93-3bf9-3d1e-9cd2-21bf9f9c2abf', 0, NULL, NULL, N'Related Media', N'umbMedia')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (5, N'0b93e414-5abe-36ec-a6bb-516e56f12238', 0, NULL, NULL, N'Related Document', N'umbDocument')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (1, N'http://localhost:49333/umbraco', N'DESKTOP-SOUAKIO//LM/W3SVC/2/ROOT', CAST(N'2022-10-23T18:11:49.903' AS DateTime), CAST(N'2022-10-25T07:00:24.553' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (-1, 0, 0, N'kollar.michal21@gmail.com', N'kollar.michal21@gmail.com', N'AicnmNvK+D8q8b9U9nuyRg==//5NE9HCCCBmCzzJX1+6HWzXRWh2JVjPzqQP/em7C3A=', N'{"hashAlgorithm":"HMACSHA256"}', N'kollar.michal21@gmail.com', N'en-US', N'af65b7d2-8043-4d96-a9c6-02b67725782f', 0, NULL, CAST(N'2022-10-23T18:11:27.120' AS DateTime), CAST(N'2022-10-25T06:59:15.947' AS DateTime), NULL, NULL, CAST(N'2022-10-23T18:11:21.193' AS DateTime), CAST(N'2022-10-25T06:59:15.980' AS DateTime), NULL, N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true},{"alias":"umbEmailMarketing","completed":false,"disabled":true}]')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
GO
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
GO
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7ï', CAST(N'2022-10-23T18:11:24.650' AS DateTime), CAST(N'2022-10-23T18:11:24.650' AS DateTime), N'icon-medal', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (2, N'writer', N'Writers', N'CAH:F', CAST(N'2022-10-23T18:11:24.660' AS DateTime), CAST(N'2022-10-23T18:11:24.660' AS DateTime), N'icon-edit', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5Fï', CAST(N'2022-10-23T18:11:24.660' AS DateTime), CAST(N'2022-10-23T18:11:24.660' AS DateTime), N'icon-tools', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (4, N'translator', N'Translators', N'AF', CAST(N'2022-10-23T18:11:24.660' AS DateTime), CAST(N'2022-10-23T18:11:24.660' AS DateTime), N'icon-globe', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (5, N'sensitiveData', N'Sensitive data', N'', CAST(N'2022-10-23T18:11:24.660' AS DateTime), CAST(N'2022-10-23T18:11:24.660' AS DateTime), N'icon-lock', -1, -1)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
GO
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'packages')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
GO
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'a891538a-6fe5-42e7-ab72-012dfaf6cd18', -1, CAST(N'2022-10-24T06:26:18.337' AS DateTime), CAST(N'2022-10-24T06:26:20.457' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'9e8ae98d-1b28-45db-bcde-049c8298c673', -1, CAST(N'2022-10-23T17:22:28.300' AS DateTime), CAST(N'2022-10-23T17:22:28.300' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'9ad20432-1a38-45a2-b3e4-0537d20b046a', -1, CAST(N'2022-10-23T17:40:59.957' AS DateTime), CAST(N'2022-10-23T17:46:09.907' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'd344deec-4a63-4f05-8ddf-0822c59b7fe4', -1, CAST(N'2022-10-23T16:54:59.927' AS DateTime), CAST(N'2022-10-23T16:56:48.173' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e10ec388-dd2e-4fdd-96d3-0a27b4340f18', -1, CAST(N'2022-10-24T06:29:41.903' AS DateTime), CAST(N'2022-10-24T06:29:41.903' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'50f7f157-be3c-428d-b5b2-0e3656e5ee68', -1, CAST(N'2022-10-23T17:09:04.543' AS DateTime), CAST(N'2022-10-23T17:09:04.543' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'40770cc3-8661-422a-af0c-0eb79c776207', -1, CAST(N'2022-10-23T18:04:18.417' AS DateTime), CAST(N'2022-10-23T18:04:18.700' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e2b916d9-ae42-4d4a-97cc-13763ac5382d', -1, CAST(N'2022-10-23T17:38:11.057' AS DateTime), CAST(N'2022-10-23T17:38:42.717' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'bf3d518c-dd59-48fd-a926-1de22dd3677d', -1, CAST(N'2022-10-23T18:36:42.973' AS DateTime), CAST(N'2022-10-23T18:36:42.973' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4a1a2a12-57ec-428d-b846-1e71ea88c507', -1, CAST(N'2022-10-23T17:17:17.757' AS DateTime), CAST(N'2022-10-23T17:17:17.757' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'53b1036b-16d5-4529-949a-224b889c5a07', -1, CAST(N'2022-10-23T17:20:24.513' AS DateTime), CAST(N'2022-10-23T17:20:24.513' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'83a4e60e-e8f5-4172-a531-23c635e7b8b2', -1, CAST(N'2022-10-23T19:35:54.090' AS DateTime), CAST(N'2022-10-23T19:35:54.090' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'aef1bb94-088b-444e-807b-28126203e71d', -1, CAST(N'2022-10-24T07:34:34.107' AS DateTime), CAST(N'2022-10-24T07:38:03.723' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'45b95a12-a1d4-45f0-88b0-289233336c7c', -1, CAST(N'2022-10-23T17:29:47.940' AS DateTime), CAST(N'2022-10-23T17:29:47.940' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'8a1e6485-0edb-49cb-988e-2b527fa131c4', -1, CAST(N'2022-10-23T17:13:27.870' AS DateTime), CAST(N'2022-10-23T17:13:27.870' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'de27c196-eb1d-4e20-9f07-2eafe07533d5', -1, CAST(N'2022-10-23T16:46:11.873' AS DateTime), CAST(N'2022-10-23T16:46:11.873' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'2073f7c8-5a08-4f5f-ba7a-36259d18aaba', -1, CAST(N'2022-10-23T18:36:43.037' AS DateTime), CAST(N'2022-10-23T18:36:43.037' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'd17f3b2a-9222-4eca-915b-366f8f2f63e4', -1, CAST(N'2022-10-23T16:46:35.620' AS DateTime), CAST(N'2022-10-23T16:49:48.297' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'ec29fb8e-8804-4b1e-8055-3b5d8f5bcddb', -1, CAST(N'2022-10-23T17:06:56.027' AS DateTime), CAST(N'2022-10-23T17:06:56.027' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'3c6bc235-ee15-47a0-ac61-3c44f1c1596e', -1, CAST(N'2022-10-23T16:16:11.463' AS DateTime), CAST(N'2022-10-23T16:35:28.333' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c1989572-5d15-46df-8f3d-3f32719d3db1', -1, CAST(N'2022-10-23T17:37:24.877' AS DateTime), CAST(N'2022-10-23T17:37:28.040' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'70ee89fe-8959-4338-b579-415eb24e13d1', -1, CAST(N'2022-10-23T19:39:21.433' AS DateTime), CAST(N'2022-10-23T19:56:38.600' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'78c76680-947a-4ade-9078-45d6689328f0', -1, CAST(N'2022-10-24T04:47:13.000' AS DateTime), CAST(N'2022-10-24T04:47:13.000' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'45eb536d-fc5a-483c-a389-4e945b877bf6', -1, CAST(N'2022-10-23T17:08:26.443' AS DateTime), CAST(N'2022-10-23T17:08:26.443' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4fa574ad-82a5-4409-86f4-513841d9863c', -1, CAST(N'2022-10-23T17:11:21.030' AS DateTime), CAST(N'2022-10-23T17:11:21.030' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'7eb8cc65-4224-4815-82b3-54fe05e8261d', -1, CAST(N'2022-10-23T17:09:04.543' AS DateTime), CAST(N'2022-10-23T17:09:04.543' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'ca4f779d-6e2a-4e61-b8aa-56a63be3f04b', -1, CAST(N'2022-10-23T18:32:40.233' AS DateTime), CAST(N'2022-10-23T18:35:52.827' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'024030ae-bdda-45e2-803f-57b2d9ccbfdf', -1, CAST(N'2022-10-24T06:29:42.030' AS DateTime), CAST(N'2022-10-24T06:36:04.730' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c64c1e02-d785-4739-a1fc-5944229124c7', -1, CAST(N'2022-10-23T17:20:51.907' AS DateTime), CAST(N'2022-10-23T17:20:51.907' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'9368cdaa-51f6-4b0c-a0d7-59a5e5e9463d', -1, CAST(N'2022-10-23T16:44:55.453' AS DateTime), CAST(N'2022-10-23T16:44:55.453' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'379e98e5-1e11-4956-ae36-5e3eeb2ad788', -1, CAST(N'2022-10-24T06:23:03.887' AS DateTime), CAST(N'2022-10-24T06:25:18.237' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'1928d53f-0c54-4307-8bf9-601a5f927884', -1, CAST(N'2022-10-23T17:15:47.150' AS DateTime), CAST(N'2022-10-23T17:16:38.670' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f5426da6-7df5-4a4a-a22a-636c82762dc3', -1, CAST(N'2022-10-23T19:07:49.260' AS DateTime), CAST(N'2022-10-23T19:15:32.733' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'1b7a4713-50c0-4587-b5da-660bd8dd0fc9', -1, CAST(N'2022-10-23T17:38:59.377' AS DateTime), CAST(N'2022-10-23T17:38:59.377' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'491456d7-6732-4430-b2b6-6792ff1da077', -1, CAST(N'2022-10-23T17:11:31.897' AS DateTime), CAST(N'2022-10-23T17:11:31.897' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'8bbe1bc2-1af8-4969-803e-67ecf3ee6a61', -1, CAST(N'2022-10-23T17:00:34.027' AS DateTime), CAST(N'2022-10-23T17:01:34.840' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'26d08b14-ec2a-4fc6-a78e-6a22dbe405e0', -1, CAST(N'2022-10-24T08:17:23.047' AS DateTime), CAST(N'2022-10-24T08:18:54.810' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'626f8282-ece9-43cd-8695-6bf73f8733bc', -1, CAST(N'2022-10-23T17:28:10.780' AS DateTime), CAST(N'2022-10-23T17:28:52.993' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'65f2b9f8-138f-42aa-85ba-6e0839a08f70', -1, CAST(N'2022-10-23T16:59:51.960' AS DateTime), CAST(N'2022-10-23T16:59:51.960' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'ad0e5995-fd1d-433c-8bcf-70c3fe774335', -1, CAST(N'2022-10-23T17:35:27.157' AS DateTime), CAST(N'2022-10-23T17:35:27.157' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'973d81d1-31ca-42f8-8d19-738cd70796b8', -1, CAST(N'2022-10-23T19:32:40.073' AS DateTime), CAST(N'2022-10-23T19:32:40.270' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'129327ca-e88b-4d6a-99e2-76a33ad9c685', -1, CAST(N'2022-10-23T17:34:36.617' AS DateTime), CAST(N'2022-10-23T17:34:36.617' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e1568ad4-2669-4ec1-a3fe-7afedb32b49d', -1, CAST(N'2022-10-23T17:25:12.940' AS DateTime), CAST(N'2022-10-23T17:25:12.940' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'796823cf-8aaf-4a43-a1cf-7c1656ad5c39', -1, CAST(N'2022-10-24T05:35:19.637' AS DateTime), CAST(N'2022-10-24T06:15:05.723' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'3d253825-63e9-4019-a635-7ddba2a2aff6', -1, CAST(N'2022-10-23T17:05:32.267' AS DateTime), CAST(N'2022-10-23T17:05:32.267' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'aa0825f8-1cc0-434b-9fbb-80d0efceab8d', -1, CAST(N'2022-10-23T17:36:46.903' AS DateTime), CAST(N'2022-10-23T17:36:46.903' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'1b7055dc-3eed-463c-a0a6-845e90eb91b6', -1, CAST(N'2022-10-23T17:09:49.163' AS DateTime), CAST(N'2022-10-23T17:09:49.163' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'79703dfb-e175-4af2-9d3a-8467877cc4bd', -1, CAST(N'2022-10-23T17:20:05.817' AS DateTime), CAST(N'2022-10-23T17:20:05.817' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'36806ea6-3eea-4c60-867f-87c132039159', -1, CAST(N'2022-10-23T17:05:55.363' AS DateTime), CAST(N'2022-10-23T17:06:05.327' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'12042452-7ee2-40cf-99a2-8fcdc22b5c7d', -1, CAST(N'2022-10-23T16:51:32.850' AS DateTime), CAST(N'2022-10-23T16:51:32.850' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'77752124-94bf-4c9b-a2b1-91aff40b05bc', -1, CAST(N'2022-10-23T19:57:21.360' AS DateTime), CAST(N'2022-10-23T19:57:21.360' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c4fd020f-74c7-4973-8c4c-9b3b8722ff37', -1, CAST(N'2022-10-23T17:23:53.503' AS DateTime), CAST(N'2022-10-23T17:23:53.503' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e796053d-3ab8-456f-949c-9fc16730cabd', -1, CAST(N'2022-10-24T06:38:33.227' AS DateTime), CAST(N'2022-10-24T06:48:10.907' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f2eb6d55-d90d-40d0-a052-a15fa7992fb9', -1, CAST(N'2022-10-23T16:50:09.927' AS DateTime), CAST(N'2022-10-23T16:50:09.927' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'fa589446-2fe9-4e41-b34f-a6682d9e1340', -1, CAST(N'2022-10-23T17:23:40.150' AS DateTime), CAST(N'2022-10-23T17:23:40.150' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'2ad0eb46-4598-42f6-9726-a883104a8906', -1, CAST(N'2022-10-24T08:08:07.917' AS DateTime), CAST(N'2022-10-24T08:08:08.130' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4a3d1217-0c3e-4223-9395-a8a2c59a7a37', -1, CAST(N'2022-10-23T19:34:03.463' AS DateTime), CAST(N'2022-10-23T19:34:03.463' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f08727e2-dfd0-429c-88aa-b8254ba60d02', -1, CAST(N'2022-10-23T17:35:30.960' AS DateTime), CAST(N'2022-10-23T17:35:30.960' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'1fc300c2-20f9-457b-b292-bac29c96db53', -1, CAST(N'2022-10-23T16:57:34.233' AS DateTime), CAST(N'2022-10-23T16:57:34.233' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'3b549794-e783-4143-aee0-bf7ff41c6dd1', -1, CAST(N'2022-10-23T17:13:28.347' AS DateTime), CAST(N'2022-10-23T17:14:34.247' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'de1ee621-fbcc-4c50-a863-bfcb238d1c0d', -1, CAST(N'2022-10-23T17:29:22.780' AS DateTime), CAST(N'2022-10-23T17:29:22.780' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'9559f717-e011-42ad-b33e-c5753b55a9bc', -1, CAST(N'2022-10-23T17:21:17.177' AS DateTime), CAST(N'2022-10-23T17:21:17.177' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'db1f6edd-7654-4f39-8a63-c72fc10f7b12', -1, CAST(N'2022-10-23T17:25:31.813' AS DateTime), CAST(N'2022-10-23T17:27:50.600' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'a9de663a-c6ea-4280-aefe-c8237998673f', -1, CAST(N'2022-10-23T17:31:57.337' AS DateTime), CAST(N'2022-10-23T17:33:34.627' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'5e72297a-7e66-42fb-9c4a-c9a76504d32a', -1, CAST(N'2022-10-23T17:11:47.490' AS DateTime), CAST(N'2022-10-23T17:11:47.490' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'28de6b97-4910-4807-80bb-ca2cd10a0211', -1, CAST(N'2022-10-23T17:02:39.627' AS DateTime), CAST(N'2022-10-23T17:04:58.823' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'55d01433-b809-402e-bdcb-cc43637639de', -1, CAST(N'2022-10-23T17:23:24.207' AS DateTime), CAST(N'2022-10-23T17:23:24.207' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'140d8625-5c35-418e-b07d-cc626aad630f', -1, CAST(N'2022-10-23T17:24:54.173' AS DateTime), CAST(N'2022-10-23T17:24:54.173' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'02f203f2-cfda-4c30-b62c-d0b38f975141', -1, CAST(N'2022-10-23T17:35:30.960' AS DateTime), CAST(N'2022-10-23T17:36:27.000' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'8c65bdd7-0861-42db-a4a3-d36060976d19', -1, CAST(N'2022-10-24T05:30:25.750' AS DateTime), CAST(N'2022-10-24T05:30:25.750' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'6000ac1b-c159-4957-8152-dba19256cc68', -1, CAST(N'2022-10-23T17:07:15.210' AS DateTime), CAST(N'2022-10-23T17:07:15.210' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f1bf31f8-5ba4-45ac-b2b9-de0fa88e9950', -1, CAST(N'2022-10-24T07:08:48.113' AS DateTime), CAST(N'2022-10-24T07:34:05.187' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'fe031d26-ed92-4682-ae60-de3618aff628', -1, CAST(N'2022-10-23T16:43:10.603' AS DateTime), CAST(N'2022-10-23T16:44:13.873' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'242ba68d-bada-466d-9f0c-e1a1141cdeb6', -1, CAST(N'2022-10-23T17:17:33.307' AS DateTime), CAST(N'2022-10-23T17:18:14.827' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'afd82675-ad28-4b15-a216-e5ed909002d0', -1, CAST(N'2022-10-24T06:16:56.683' AS DateTime), CAST(N'2022-10-24T06:20:26.043' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'0132a47c-1bc5-4d37-b3ef-e791061e674e', -1, CAST(N'2022-10-24T06:53:12.653' AS DateTime), CAST(N'2022-10-24T07:07:46.843' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'032a4030-e0e9-4937-bd0c-e9d1e1274a8a', -1, CAST(N'2022-10-23T17:10:56.123' AS DateTime), CAST(N'2022-10-23T17:10:56.123' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'9e61dcbb-32f9-4dd9-b093-e9e48544b6b0', -1, CAST(N'2022-10-25T04:59:16.373' AS DateTime), CAST(N'2022-10-25T04:59:16.373' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c8b18ed9-9ef1-4d13-91a5-f0ac957bb44d', -1, CAST(N'2022-10-23T17:14:42.280' AS DateTime), CAST(N'2022-10-23T17:14:42.280' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'59f6ade5-1bc3-491c-83c9-f14d8ed1fff8', -1, CAST(N'2022-10-23T16:44:55.307' AS DateTime), CAST(N'2022-10-23T16:44:55.307' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'879896a0-42a0-466d-9a94-f7ff452e0953', -1, CAST(N'2022-10-23T17:19:41.630' AS DateTime), CAST(N'2022-10-23T17:19:41.630' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'5aba50ea-419e-40c1-a2b2-f896359b36d9', -1, CAST(N'2022-10-23T17:22:54.893' AS DateTime), CAST(N'2022-10-23T17:22:54.893' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4501a0fe-8661-481b-8d2b-fd46b53f472e', -1, CAST(N'2022-10-23T17:12:18.090' AS DateTime), CAST(N'2022-10-23T17:12:18.090' AS DateTime), NULL, N'::1')
GO
/****** Object:  Index [IX_cmsContentType]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsContentType_icon]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType]
(
	[icon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_id]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsDictionary_key]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsDictionary_key] ON [dbo].[cmsDictionary]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_Parent]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsDictionary_Parent] ON [dbo].[cmsDictionary]
(
	[parent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsMacro_UniqueId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacro_UniqueId] ON [dbo].[cmsMacro]
(
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMacroPropertyAlias]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroPropertyAlias] ON [dbo].[cmsMacro]
(
	[macroAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMacroProperty_Alias]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroProperty_Alias] ON [dbo].[cmsMacroProperty]
(
	[macro] ASC,
	[macroPropertyAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsMacroProperty_UniquePropertyId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroProperty_UniquePropertyId] ON [dbo].[cmsMacroProperty]
(
	[uniquePropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMember_LoginName]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsMember_LoginName] ON [dbo].[cmsMember]
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsPropertyTypeAlias]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyTypeAlias] ON [dbo].[cmsPropertyType]
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeUniqueID]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeUniqueID] ON [dbo].[cmsPropertyType]
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeGroupUniqueID]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeGroupUniqueID] ON [dbo].[cmsPropertyTypeGroup]
(
	[uniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsTags]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTags] ON [dbo].[cmsTags]
(
	[group] ASC,
	[tag] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTags_LanguageId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTags_LanguageId] ON [dbo].[cmsTags]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTemplate_nodeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoAccess_nodeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccess_nodeId] ON [dbo].[umbracoAccess]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoAccessRule]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccessRule] ON [dbo].[umbracoAccessRule]
(
	[ruleValue] ASC,
	[ruleType] ASC,
	[accessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersion_Current]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersion_Current] ON [dbo].[umbracoContentVersion]
(
	[current] ASC
)
INCLUDE([nodeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersion_NodeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersion_NodeId] ON [dbo].[umbracoContentVersion]
(
	[nodeId] ASC,
	[current] ASC
)
INCLUDE([id],[versionDate],[text],[userId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_LanguageId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_LanguageId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_VersionId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_VersionId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[versionId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocument_Published]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocument_Published] ON [dbo].[umbracoDocument]
(
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_LanguageId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_LanguageId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_NodeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_NodeId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[nodeId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLanguage_fallbackLanguageId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLanguage_fallbackLanguageId] ON [dbo].[umbracoLanguage]
(
	[fallbackLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoLanguage_languageISOCode]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage]
(
	[languageISOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoMediaVersion]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoMediaVersion] ON [dbo].[umbracoMediaVersion]
(
	[id] ASC,
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_Level]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Level] ON [dbo].[umbracoNode]
(
	[level] ASC,
	[parentId] ASC,
	[sortOrder] ASC,
	[nodeObjectType] ASC,
	[trashed] ASC
)
INCLUDE([nodeUser],[path],[uniqueId],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ObjectType]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ObjectType] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC,
	[trashed] ASC
)
INCLUDE([uniqueId],[parentId],[level],[path],[sortOrder],[nodeUser],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ParentId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ParentId] ON [dbo].[umbracoNode]
(
	[parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoNode_Path]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Path] ON [dbo].[umbracoNode]
(
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_Trashed]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Trashed] ON [dbo].[umbracoNode]
(
	[trashed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_UniqueId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoNode_UniqueId] ON [dbo].[umbracoNode]
(
	[uniqueId] ASC
)
INCLUDE([parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_LanguageId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_LanguageId] ON [dbo].[umbracoPropertyData]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_PropertyTypeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_PropertyTypeId] ON [dbo].[umbracoPropertyData]
(
	[propertyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_Segment]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_Segment] ON [dbo].[umbracoPropertyData]
(
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_VersionId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoPropertyData_VersionId] ON [dbo].[umbracoPropertyData]
(
	[versionId] ASC,
	[propertyTypeId] ASC,
	[languageId] ASC,
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRedirectUrl]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRedirectUrl] ON [dbo].[umbracoRedirectUrl]
(
	[urlHash] ASC,
	[contentKey] ASC,
	[culture] ASC,
	[createDateUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelation_parentChildType]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelation_parentChildType] ON [dbo].[umbracoRelation]
(
	[parentId] ASC,
	[childId] ASC,
	[relType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_alias]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_alias] ON [dbo].[umbracoRelationType]
(
	[alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_name]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_name] ON [dbo].[umbracoRelationType]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelationType_UniqueId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_UniqueId] ON [dbo].[umbracoRelationType]
(
	[typeUniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_computerName]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer]
(
	[computerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoServer_isActive]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer]
(
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUser_userLogin]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser]
(
	[userLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupAlias]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupAlias] ON [dbo].[umbracoUserGroup]
(
	[userGroupAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupName]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupName] ON [dbo].[umbracoUserGroup]
(
	[userGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUser2NodePermission_nodeId]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser2NodePermission_nodeId] ON [dbo].[umbracoUserGroup2NodePermission]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserLogin_lastValidatedUtc]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserLogin_lastValidatedUtc] ON [dbo].[umbracoUserLogin]
(
	[lastValidatedUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserStartNode_startNodeType]    Script Date: 25. 10. 2022 7:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserStartNode_startNodeType] ON [dbo].[umbracoUserStartNode]
(
	[startNodeType] ASC,
	[startNode] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isElement]  DEFAULT ('0') FOR [isElement]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_isSensitive]  DEFAULT ('0') FOR [isSensitive]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_labelOnTop]  DEFAULT ('0') FOR [labelOnTop]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_type]  DEFAULT ('0') FOR [type]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD  CONSTRAINT [DF_umbracoAudit_eventDateUtc]  DEFAULT (getdate()) FOR [eventDateUtc]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD  CONSTRAINT [DF_umbracoCacheInstruction_instructionCount]  DEFAULT ('1') FOR [instructionCount]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD  CONSTRAINT [DF_umbracoConsent_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_versionDate]  DEFAULT (getdate()) FOR [versionDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_preventCleanup]  DEFAULT ('0') FOR [preventCleanup]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoKeyValue] ADD  CONSTRAINT [DF_umbracoKeyValue_updated]  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_isDefaultVariantLang]  DEFAULT ('0') FOR [isDefaultVariantLang]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueId]  DEFAULT (newid()) FOR [uniqueId]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsContentNu]  WITH NOCHECK ADD  CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsContentNu] CHECK CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsDictionary]  WITH CHECK ADD  CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsDictionary] CHECK CONSTRAINT [FK_cmsDictionary_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[umbracoDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy] CHECK CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoDataType]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDataType] CHECK CONSTRAINT [FK_umbracoDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocument]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocument] CHECK CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoDomain]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomain] CHECK CONSTRAINT [FK_umbracoDomain_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoLanguage]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoLanguage] CHECK CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoLog]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoLog] CHECK CONSTRAINT [FK_umbracoLog_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoMediaVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoMediaVersion] CHECK CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] CHECK CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startContentId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startMediaId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2App]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2App] CHECK CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserLogin] CHECK CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id]
GO

