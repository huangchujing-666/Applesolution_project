IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_CreateReminderSchedule]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[sp_CreateReminderSchedule]
GO

/****** Object:  StoredProcedure [sp_CreateReminderSchedule]    Script Date: 2015/2/2 下午 04:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leo
-- Create date: 2015/2/2 下午 04:36:42
-- Description:	Stored Procedure for 
-- Pending Task: 
-- =============================================
CREATE PROCEDURE [dbo].[sp_CreateReminderSchedule]
    -- Access Object
 @access_object_type INT, 
    @access_object_id INT,
    
    -- Data
	@reminder_engine_id int,
	@day int,
	@template_type int,
	@template_id int,
	
    -- Output
    @new_id  INT OUTPUT,
    @sql_result INT OUTPUT
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
    
BEGIN    
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
    -- Begin Transaction
    BEGIN TRAN sp_CreateReminderSchedule
    
    -- Check Access Object
---    SELECT @accessObjectValid = 1, @accessObjectType = ao.type
---    FROM v_accessObject ao
---    WHERE target_id = @access_object_id AND [status] = @statusActive AND record_status <> @recDeleted
    
SET @accessObjectValid = 1 
    IF @accessObjectValid = 1
		BEGIN
		    
            SET @recValid = 1
    		
            IF @recValid = 1
    		    BEGIN
                    
                    INSERT INTO reminder_schedule
                    (
                        reminder_engine_id, 
                        day, 
                        template_type, 
                        template_id, 
                        crt_date, 
                        crt_by_type, 
                        crt_by, 
                        upd_date, 
                        upd_by_type, 
                        upd_by 
                    )
                    VALUES (
                        @reminder_engine_id,  --reminder_engine_id
                        @day,  --day
                        @template_type,  --template_type
                        @template_id,  --template_id
                        GETDATE(),  --crt_date
@access_object_type,
                        @access_object_id,  --crt_by
                        GETDATE(),  --upd_date
@access_object_type,
                        @access_object_id  --upd_by
                        
                    )                   
                      
                    SET @new_id = SCOPE_IDENTITY()
                    SET @sql_result = 100 --normal
                END
	    	ELSE
    		    BEGIN
        			SET @sql_result = 1112  --Record Invalid
    		    END
    	END
	ELSE
		BEGIN
		    SET @sql_result = 1111 --no_permission
		END
        
    -- Commit Transaction
    COMMIT TRAN sp_CreateReminderSchedule
END
GO
