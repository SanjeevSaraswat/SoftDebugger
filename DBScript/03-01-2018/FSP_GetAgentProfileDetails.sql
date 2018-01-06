
CREATE PROCEDURE FSP_GetAgentProfileDetails
(
@CompanyID VARCHAR(2),
@TokenID VARCHAR(100)
)
AS

BEGIN

IF (SELECT COUNT(*) FROM Agent_Master WHERE Tokenid=@TokenID and CompanyID=@CompanyID)>0  

BEGIN

SELECT  (FirstName+LastName) AS AgentName,Email,IsAdmin,* FROM Agent_Master
END
END