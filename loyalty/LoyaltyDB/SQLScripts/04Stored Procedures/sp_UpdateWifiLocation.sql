IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_UpdateWifiLocation]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[sp_UpdateWifiLocation]
GO

/****** Object:  StoredProcedure [sp_UpdateWifiLocation]    Script Date: 2014/4/25 上午 11:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leo
-- Create date: 2014/4/25 上午 11:03:20
-- Description:	Stored Procedure for 
-- Pending Task: 
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateWifiLocation]
    -- Access Object
 @access_object_type INT, 
    @access_object_id INT,
    
    -- Data
	@location_id int,
	@location_no varchar(20),
	@name nvarchar(100),
	@mac_address varchar(50),
	@point float,
	@status int,
	
    -- Output
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
    BEGIN TRAN sp_UpdateWifiLocation
    
    -- Check Access Object
---    SELECT @accessObjectValid = 1, @accessObjectType = ao.type
---    FROM v_accessObject ao
---    WHERE target_id = @access_object_id AND [status] = @statusActive AND record_status <> @recDeleted
    
SET @accessObjectValid = 1 
    IF @accessObjectValid = 1
		BEGIN
		    
            SELECT @recValid = 1
    		FROM wifi_location
    		WHERE location_id = @location_id AND record_status <> @recDeleted
            
            IF @recValid = 1
    		    BEGIN
                
                    UPDATE wifi_location
                    SET
                        location_no = @location_no,
                        name = @name,
                        mac_address = @mac_address,
						point = @point,
                        status = @status,
						
                        upd_date = GETDATE(), 
upd_by_type = @access_object_type, 
                        upd_by = @access_object_id
                        
                    WHERE location_id = @location_id
                    
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
    COMMIT TRAN sp_UpdateWifiLocation
END
GO
