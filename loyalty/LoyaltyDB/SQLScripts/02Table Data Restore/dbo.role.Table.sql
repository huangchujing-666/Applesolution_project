DELETE FROM [dbo].[role]
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [name], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, N'Admin', 1, CAST(N'2014-10-07 12:03:58.663' AS DateTime), 2, 1, CAST(N'2015-03-09 18:18:30.157' AS DateTime), 1, 1368, 0)
INSERT [dbo].[role] ([role_id], [name], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (2, N'Staff34', 1, CAST(N'2014-10-07 12:03:58.663' AS DateTime), 2, 1, CAST(N'2015-02-27 15:44:38.447' AS DateTime), 2, 1, 0)
INSERT [dbo].[role] ([role_id], [name], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (3, N'test staff', 1, CAST(N'2014-10-10 16:02:06.423' AS DateTime), 2, 1, CAST(N'2014-10-10 16:06:57.910' AS DateTime), 2, 1, -1)
INSERT [dbo].[role] ([role_id], [name], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (4, N'Staff2', 1, CAST(N'2015-01-23 16:57:27.260' AS DateTime), 2, 1, CAST(N'2015-01-23 16:57:27.260' AS DateTime), 2, 1, 0)
INSERT [dbo].[role] ([role_id], [name], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (5, N'staff5', 1, CAST(N'2015-02-27 15:45:29.580' AS DateTime), 2, 1, CAST(N'2015-02-27 15:45:29.580' AS DateTime), 2, 1, 0)
SET IDENTITY_INSERT [dbo].[role] OFF
