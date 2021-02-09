DELETE FROM [dbo].[wifi_location]
GO
SET IDENTITY_INSERT [dbo].[wifi_location] ON 

INSERT [dbo].[wifi_location] ([location_id], [location_no], [name], [mac_address], [point], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, N'AP01', N'CM-Palmary-Meraki-Test', N'00:18:0a:26:91:c2', 10, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, 0)
INSERT [dbo].[wifi_location] ([location_id], [location_no], [name], [mac_address], [point], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (2, N'AP02', N'CM-Palmary-Test2', N'22:22:22:22:22:22', 12, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, 0)
INSERT [dbo].[wifi_location] ([location_id], [location_no], [name], [mac_address], [point], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (3, N'AP03', N'CM-Palmary-Test3', N'33:33:33:33:33:33', 13, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, 0)
INSERT [dbo].[wifi_location] ([location_id], [location_no], [name], [mac_address], [point], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (4, N'AP04', N'CM-Palmary-Test4', N'44:44:44:44:44:44', 2222, 1, CAST(N'2014-08-28 17:09:46.000' AS DateTime), 2, 1, CAST(N'2014-11-04 15:06:09.710' AS DateTime), 2, 1, 0)
SET IDENTITY_INSERT [dbo].[wifi_location] OFF
