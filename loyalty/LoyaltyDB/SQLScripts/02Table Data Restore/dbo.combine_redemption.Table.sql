DELETE FROM [dbo].[combine_redemption]
GO
SET IDENTITY_INSERT [dbo].[combine_redemption] ON 

INSERT [dbo].[combine_redemption] ([combine_id], [member_id], [coupon_id], [position], [no_of_ppl], [join_combine_id], [notified_host], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (1, 3, 123, 1, 3, 0, 0, 1, CAST(N'2015-05-27 17:42:29.567' AS DateTime), 1, 1, CAST(N'2015-05-29 18:19:53.543' AS DateTime), 1, 1, 0)
INSERT [dbo].[combine_redemption] ([combine_id], [member_id], [coupon_id], [position], [no_of_ppl], [join_combine_id], [notified_host], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (2, 123, 22, 2, 0, 1, 0, 2, CAST(N'2015-05-27 17:43:45.787' AS DateTime), 1, 1, CAST(N'2015-05-27 17:43:45.787' AS DateTime), 1, 1, 0)
INSERT [dbo].[combine_redemption] ([combine_id], [member_id], [coupon_id], [position], [no_of_ppl], [join_combine_id], [notified_host], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (3, 55, 34, 2, 0, 1, 0, 2, CAST(N'2015-05-27 17:46:58.103' AS DateTime), 1, 1, CAST(N'2015-05-27 17:46:58.103' AS DateTime), 1, 1, 0)
INSERT [dbo].[combine_redemption] ([combine_id], [member_id], [coupon_id], [position], [no_of_ppl], [join_combine_id], [notified_host], [status], [crt_date], [crt_by_type], [crt_by], [upd_date], [upd_by_type], [upd_by], [record_status]) VALUES (4, 34, 0, 2, 0, 1, 0, 2, CAST(N'2015-05-27 17:51:25.097' AS DateTime), 1, 1, CAST(N'2015-05-29 18:21:57.790' AS DateTime), 1, 1, 0)
SET IDENTITY_INSERT [dbo].[combine_redemption] OFF
