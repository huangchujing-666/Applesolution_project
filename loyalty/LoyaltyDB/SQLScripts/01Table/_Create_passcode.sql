﻿IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[passcode]') AND type in (N'U'))
DROP TABLE [dbo].[passcode]
GO

/****** Object:  Table [dbo].[passcode]    Script Date: 2013/8/9 下午 06:31:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[passcode](
	[passcode_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pin_value] [varchar](30) NOT NULL,
	[generate_id] [int] NOT NULL,
	[passcode_prefix_id] [int] NOT NULL,
	
	[active_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NOT NULL,

	[point] [float] NOT NULL,
	[product_id] [int] NOT NULL,
	
	[status] [int] NOT NULL,	--Status: Active/Inactive
	[registered] [int] NOT NULL DEFAULT 0,	-- YesNo
	[void_date] [datetime] NULL, -- void passcode
	[void_reason] [NVARCHAR](MAX) NULL, -- void passcode reason

	[crt_date] [datetime] NOT NULL,
	[crt_by_type] [int] NOT NULL,
	[crt_by] [int] NOT NULL,

	[upd_date] [datetime] NOT NULL,
	[upd_by_type] [int] NOT NULL,
	[upd_by] [int] NOT NULL,

	[record_status] [int] NOT NULL DEFAULT 0

CONSTRAINT [PK_passcode] PRIMARY KEY CLUSTERED
(
	[passcode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO