DELETE FROM [dbo].[member_service]
GO
SET IDENTITY_INSERT [dbo].[member_service] ON 

INSERT [dbo].[member_service] ([member_service_id], [member_id], [service_no], [plan_id], [point], [start_date], [end_date], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, 213, N'GT7475', 1, 0, CAST(N'2014-01-01 00:00:00.000' AS DateTime), CAST(N'2016-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2014-04-29 14:22:40.677' AS DateTime), 2, 1, CAST(N'2014-04-29 14:22:40.677' AS DateTime), 2, 1, 0)
SET IDENTITY_INSERT [dbo].[member_service] OFF
