DELETE FROM [dbo].[member_card]
GO
SET IDENTITY_INSERT [dbo].[member_card] ON 

INSERT [dbo].[member_card] ([card_id], [member_id], [card_no], [card_version], [card_type], [card_status], [issue_date], [old_card_id], [remark], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (4, 213, N'LTLMC0001', 0, 1, 3, NULL, 0, N'', 1, CAST(N'2014-05-13 11:19:12.190' AS DateTime), 2, 1, CAST(N'2014-05-13 15:04:17.353' AS DateTime), 2, 1, 0)
INSERT [dbo].[member_card] ([card_id], [member_id], [card_no], [card_version], [card_type], [card_status], [issue_date], [old_card_id], [remark], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (7, 214, N'LTMC0002', 0, 1, 1, NULL, 0, N'', 1, CAST(N'2014-05-13 15:03:58.680' AS DateTime), 2, 1, CAST(N'2014-05-13 15:03:58.680' AS DateTime), 2, 1, 0)
INSERT [dbo].[member_card] ([card_id], [member_id], [card_no], [card_version], [card_type], [card_status], [issue_date], [old_card_id], [remark], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (8, 213, N'LTMC0001-1', 1, 3, 3, NULL, 4, N'', 1, CAST(N'2014-05-13 15:04:17.373' AS DateTime), 2, 1, CAST(N'2014-05-13 15:57:41.347' AS DateTime), 2, 1, 0)
INSERT [dbo].[member_card] ([card_id], [member_id], [card_no], [card_version], [card_type], [card_status], [issue_date], [old_card_id], [remark], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (9, 213, N'LTMC0001-2', 2, 3, 1, NULL, 8, N'', 1, CAST(N'2014-05-13 15:57:41.370' AS DateTime), 2, 1, CAST(N'2014-05-13 15:57:41.370' AS DateTime), 2, 1, 0)
SET IDENTITY_INSERT [dbo].[member_card] OFF
