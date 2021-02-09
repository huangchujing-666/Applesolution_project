DELETE FROM [dbo].[passcode_prefix]
GO
SET IDENTITY_INSERT [dbo].[passcode_prefix] ON 

INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (1, 1, 1, N'MU1', 0, 0, 1, CAST(N'2013-06-01 00:00:00.000' AS DateTime), CAST(N'2013-06-01 00:00:00.000' AS DateTime), 1, 1, 0)
INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (2, 13, 1, N'S01', 1000, 0.0012, 1, CAST(N'2014-01-16 13:26:54.177' AS DateTime), CAST(N'2014-01-16 13:33:22.287' AS DateTime), 1, 1, 0)
INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (3, 71, 1, N'test', 0, 0, 1, CAST(N'2014-02-17 16:52:10.953' AS DateTime), CAST(N'2014-02-17 16:52:10.953' AS DateTime), 1, 1, 0)
INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (4, 90, 1, N'BB1', 11000, 0.0131, 1, CAST(N'2014-03-10 15:31:00.110' AS DateTime), CAST(N'2014-12-29 14:33:40.547' AS DateTime), 1, 1, 0)
INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (5, 1004, 1, N'TS1', 4, 0, 1, CAST(N'2014-12-29 14:34:47.770' AS DateTime), CAST(N'2014-12-29 14:49:18.993' AS DateTime), 1, 1, 0)
INSERT [dbo].[passcode_prefix] ([prefix_id], [product_id], [format_id], [prefix_value], [current_generated], [usage_precent], [status], [crt_date], [upd_date], [crt_by], [upd_by], [record_status]) VALUES (6, 1002, 1, N'TS2', 100, 0.0001, 1, CAST(N'2014-12-29 14:54:57.937' AS DateTime), CAST(N'2014-12-29 15:03:12.963' AS DateTime), 1, 1, 0)
SET IDENTITY_INSERT [dbo].[passcode_prefix] OFF
