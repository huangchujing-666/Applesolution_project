DELETE FROM [dbo].[passcode_format]
GO
SET IDENTITY_INSERT [dbo].[passcode_format] ON 

INSERT [dbo].[passcode_format] ([format_id], [passcode_format], [number_combination], [safetyLimit_precent], [maximum_generate], [expiry_month], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (1, N'%%%-####-$$$$', 16796160000, 0.5, 83980800, 60, 1, CAST(N'2014-01-14 19:02:37.283' AS DateTime), CAST(N'2014-01-14 19:02:37.283' AS DateTime), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[passcode_format] OFF
