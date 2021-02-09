﻿IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reminder_template]') AND type in (N'U'))
DROP TABLE [dbo].[reminder_template]
GO

/****** Object:  Table [dbo].[reminder_template]    Script Date: 2013/7/17 上午 11:50:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reminder_template](
	[reminder_template_id] [int] IDENTITY(1,1) NOT NULL,

	[name] [nvarchar](50) NOT NULL,
	[sms_template] [nvarchar](max) NOT NULL,
	[email_template] [nvarchar](max) NOT NULL,
	
	[status] [INT] NOT NULL,

	[crt_date] [datetime] NOT NULL,
	[crt_by_type] [int] NOT NULL,
	[crt_by] [int] NOT NULL,
	
	[upd_date] [datetime] NOT NULL,
	[upd_by_type] [int] NOT NULL,
	[upd_by] [int] NOT NULL,

	[record_status] [int] NOT NULL DEFAULT 0

 CONSTRAINT [PK_reminder_template] PRIMARY KEY CLUSTERED 
(
	[reminder_template_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


