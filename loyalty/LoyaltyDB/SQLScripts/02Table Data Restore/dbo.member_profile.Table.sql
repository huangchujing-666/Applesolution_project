DELETE FROM [dbo].[member_profile]
GO
SET IDENTITY_INSERT [dbo].[member_profile] ON 

INSERT [dbo].[member_profile] ([member_id], [member_no], [password], [email], [fbid], [fbemail], [mobile_no], [salutation], [firstname], [middlename], [lastname], [fullname], [birth_year], [birth_month], [birth_day], [gender], [hkid], [address1], [address2], [address3], [district], [region], [reg_source], [referrer], [reg_status], [reg_ip], [activate_key], [hash_key], [session], [status], [opt_in], [member_level_id], [member_category_id], [available_point], [crt_date], [upd_date], [crt_by_type], [crt_by], [upd_by_type], [upd_by], [record_status]) VALUES (1, N'AA0001', N'53C8DA1F-6250D049-F838954F-A7D5F497-F2D0CEB7-0A26FFC0-4EED86F3-2CBE4B31', N'p@p.com', NULL, NULL, N'', 1, N'le', N'', N'le', N'le le', 0, 0, 0, 1, N'', N'', N'', N'', 0, 0, 0, 0, 0, N'', N'', N'123456', NULL, 1, 0, 1, 0, 0, CAST(N'2016-07-22 12:00:29.740' AS DateTime), CAST(N'2016-07-22 12:00:29.800' AS DateTime), 0, 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[member_profile] OFF
