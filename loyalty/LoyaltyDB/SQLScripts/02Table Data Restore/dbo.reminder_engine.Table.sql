DELETE FROM [dbo].[reminder_engine]
GO
SET IDENTITY_INSERT [dbo].[reminder_engine] ON 

INSERT [dbo].[reminder_engine] ([reminder_engine_id], [name], [target_type], [target_value], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, N'Purchase Reminder', 1, N'1003', 1, CAST(N'2015-02-03 18:41:00.813' AS DateTime), 2, 1, CAST(N'2015-02-03 18:41:00.813' AS DateTime), 2, 1, 0)
INSERT [dbo].[reminder_engine] ([reminder_engine_id], [name], [target_type], [target_value], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (2, N'Member Inactive Visit Reminder', 5, N'3', 1, CAST(N'2015-02-04 10:42:19.130' AS DateTime), 2, 1, CAST(N'2015-02-04 10:42:19.130' AS DateTime), 2, 1, 0)
SET IDENTITY_INSERT [dbo].[reminder_engine] OFF
