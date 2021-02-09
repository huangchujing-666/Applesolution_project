﻿IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_GetSystemObject_detail]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[sp_GetSystemObject_detail]
GO

/****** Object:  StoredProcedure [sp_GetSystemObject_detail]    Script Date: 2013/12/10 下午 12:09:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leo
-- Create date: 2013/12/10 下午 12:09:58
-- Description:	Stored Procedure for GetSystemObject_detail
-- Pending Task: 
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSystemObject_detail]
    -- Access Object
    @access_object_id INT,
    
	-- Data
	@object_id INT,

    -- Output
    @sql_result INT OUTPUT,
    @sql_remark VARCHAR(100) OUTPUT
AS
	-- access object params
    DECLARE @accessObjectValid INT SET @accessObjectValid = 0
	DECLARE @accessObjectType INT SET @accessObjectType = 0
    
    -- record status and validity
	DECLARE @recValid INT SET @recValid = 0
	DECLARE @statusActive INT SET @statusActive = [dbo].fn_GetListingItemValByCodeName('Status', 'Active')
	DECLARE @recDeleted INT SET @recDeleted  = [dbo].fn_GetListingItemValByCodeName('RecordStatus', 'Deleted')
        
    -- Set default output value        
    SET @sql_result = 0
	SET @sql_remark = ''
    
BEGIN    
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
    -- Check Access Object
    SELECT @accessObjectValid = 1, @accessObjectType = ao.type
    FROM v_accessObject ao
    WHERE target_id = @access_object_id AND [status] = @statusActive AND record_status <> @recDeleted
    
    IF @accessObjectValid = 1
		BEGIN

            SELECT @recValid = 1
    		FROM system_object
    		WHERE object_id = @object_id AND record_status <> @recDeleted

            IF @recValid = 1
    		BEGIN
                SELECT
                    s.object_id, 
                    s.type, 
                    s.name, 
                    s.power_search, 
                    s.status, 
                    s.crt_date, 
                    s.crt_by_type, 
                    s.crt_by, 
                    s.upd_date, 
                    s.upd_by_type, 
                    s.upd_by, 
                    s.record_status
                FROM  system_object s
                WHERE object_id = @object_id
                AND s.[record_status] <> @recDeleted
                    
                SET @sql_result = 1
            END
	    	ELSE
    			BEGIN
					SELECT 
						s.object_id,
						s.type,
						s.name,
						s.power_search,
						s.status, 
						s.crt_date, 
						s.crt_by_type,
						s.crt_by,
						s.upd_date, 
						s.upd_by_type, 
						s.upd_by, 
						s.record_status
					FROM  system_object s
					WHERE 1=2
        			SET @sql_remark = 'RecordInvalid'
    			END
    	END
	ELSE
		BEGIN
			SET @sql_remark = 'AccessObjectInvalid'
		END
END
GO