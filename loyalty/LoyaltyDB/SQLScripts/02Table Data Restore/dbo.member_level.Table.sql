DELETE FROM [dbo].[member_level]
GO
SET IDENTITY_INSERT [dbo].[member_level] ON 

INSERT [dbo].[member_level] ([level_id], [name], [point_required], [redeem_discount], [display_order], [status], [crt_date], [upd_date], [crt_by], [upd_by]) VALUES (1, N'初級會員', 0, 0, 1, 1, CAST(N'2014-03-28 15:24:22.110' AS DateTime), CAST(N'2014-03-28 15:24:22.110' AS DateTime), 1, 1)
INSERT [dbo].[member_level] ([level_id], [name], [point_required], [redeem_discount], [display_order], [status], [crt_date], [upd_date], [crt_by], [upd_by]) VALUES (2, N'高級會員', 2000, 5, 2, 1, CAST(N'2014-03-28 15:24:22.110' AS DateTime), CAST(N'2014-03-28 15:24:22.110' AS DateTime), 1, 1)
INSERT [dbo].[member_level] ([level_id], [name], [point_required], [redeem_discount], [display_order], [status], [crt_date], [upd_date], [crt_by], [upd_by]) VALUES (3, N'金級會員', 6000, 10, 3, 1, CAST(N'2014-03-28 15:24:22.110' AS DateTime), CAST(N'2014-03-28 15:24:22.110' AS DateTime), 1, 1)
INSERT [dbo].[member_level] ([level_id], [name], [point_required], [redeem_discount], [display_order], [status], [crt_date], [upd_date], [crt_by], [upd_by]) VALUES (4, N'白金級會員', 10000, 15, 4, 1, CAST(N'2016-06-02 13:15:28.000' AS DateTime), CAST(N'2016-06-02 13:15:28.000' AS DateTime), 1, 1)
INSERT [dbo].[member_level] ([level_id], [name], [point_required], [redeem_discount], [display_order], [status], [crt_date], [upd_date], [crt_by], [upd_by]) VALUES (5, N'星級會員', 20000, 20, 5, 1, CAST(N'2016-06-02 13:51:12.000' AS DateTime), CAST(N'2016-06-02 13:51:12.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[member_level] OFF
