DELETE FROM [dbo].[system_object]
GO
SET IDENTITY_INSERT [dbo].[system_object] ON 

INSERT [dbo].[system_object] ([object_id], [type], [target_id], [name], [power_search], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1368, -1000, 1, N'CMS BO', NULL, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), -1000, 1, CAST(N'2015-03-09 18:02:08.247' AS DateTime), 2, 1, 0)
INSERT [dbo].[system_object] ([object_id], [type], [target_id], [name], [power_search], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1369, -1000, 2, N'Con Job', NULL, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), -1000, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), -1000, 1, 0)
INSERT [dbo].[system_object] ([object_id], [type], [target_id], [name], [power_search], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1370, -1000, 3, N'Store Procedure', NULL, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), -1000, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), -1000, 1, 0)
SET IDENTITY_INSERT [dbo].[system_object] OFF
