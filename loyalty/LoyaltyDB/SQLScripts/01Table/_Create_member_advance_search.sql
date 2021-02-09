﻿/****** Object:  Table [dbo].[member_advance_search]    Script Date: 2013/10/8 下午 03:39:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[member_advance_search]') AND type in (N'U'))
DROP TABLE [dbo].[member_advance_search]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[member_advance_search](
	[search_id] [int] IDENTITY(1,1) NOT NULL,

	[name] [nvarchar](100) NOT NULL,

	[status] [int] NOT NULL,
	
	[crt_date] [datetime] NOT NULL,
	[crt_by_type] [int] NOT NULL,
	[crt_by] [int] NOT NULL,

	[upd_date] [datetime] NOT NULL,
	[upd_by_type] [int] NOT NULL,
	[upd_by] [int] NOT NULL,

	[record_status] [int] NOT NULL DEFAULT 0

 CONSTRAINT [PK_member_advance_search] PRIMARY KEY CLUSTERED 
(
	[search_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] --TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO