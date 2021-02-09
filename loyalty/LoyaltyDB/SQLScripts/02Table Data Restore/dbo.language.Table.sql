DELETE FROM [dbo].[language]
GO
SET IDENTITY_INSERT [dbo].[language] ON 

INSERT [dbo].[language] ([lang_id], [code], [name], [display_order], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, N'en', N'English', 1, 1, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, 0)
INSERT [dbo].[language] ([lang_id], [code], [name], [display_order], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (2, N'tc', N'Traditional Chinese', 2, 1, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, 0)
INSERT [dbo].[language] ([lang_id], [code], [name], [display_order], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (3, N'sc', N'Simplified Chinese', 3, 1, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, CAST(N'2014-01-14 19:01:20.290' AS DateTime), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[language] OFF
