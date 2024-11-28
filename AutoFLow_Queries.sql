Kindly provide data for impacted record from production.
 
select * from FINANCIALAPPLICATION where OWNERID=985 and CUSTOMOBJECTID  in ();  -- Enter Case id --
 
select * from FINANCIALAPPLICATIONHISTORY where OWNERID=985 and CUSTOMOBJECTID in () order by historyid desc;  -- Enter Case id --
 
select * from FIA_ex1 where FIA_ex1_id in ();
 
select * from FIA_ex2 where FIA_ex2_id in ();
 
select * from FIA_ex3 where FIA_ex3_id in ();
 
select * from FIA_ex4 where FIA_ex4_id in ();
 
select * from FIA_ex5 where FIA_ex5_id in ();
 
select * from FIA_ex6 where FIA_ex6_id in ();
 
select * from FIA_ex7 where FIA_ex7_id in ();
 
**NOTE: Please replace the 'Case' object with the required object name as per requirement.
 
--------------------------------
 
select * from flow.FLOWOBJECT where objectid  in ();  -- Object id is case id --
 
select * from flow.screenflowinstance where INSTANCEID in ();	-- Copy Instance id from above flow.flowobject table for respective case --					
 
select * from flow.FLOWOBJECT where INSTANCEID in ();  -- Enter instance id --
 
select * from flow.flowstagetrace where INSTANCEID in ();  -- Enter instance id --
 
select * from flow.flowstatetrace where INSTANCEID in ();  -- Enter instance id --
 
select * from flow.screenflowtrace where INSTANCEID in ();  -- Enter instance id --
 
 
----------------------------------------
declare @subscriberid int = ?
declare @flowid bigint
declare @instanceid bigint
declare @version nvarchar(36)
declare @objecttype int = ?
declare @objectid int =  ?     -- Object id is record id -- 
select @subscriberid = SubscriberId, @flowId = FlowId, @version = Version, @instanceid = InstanceId from flow.flowobject where subscriberid = @subscriberid and objecttype = @objecttype and objectid = @objectid
select    s.Type, s.Label, s.LaneId, s.StepId, t.Status, t.StepCompletedOn, t.ErrorMessage, t.StepStartedOn, t.Bookmark, t.BookmarkedOn, t.Data,t.InstanceId
from    flow.ScreenFlowTrace t
        inner join flow.flowsteps s
        on s.UniqueId = t.StepId 
where    s.SubscriberId = @subscriberid and s.FlowId = @flowid and s.Version = @version and t.InstanceId = @instanceid order by TraceId
-------------------------------
 
 
-------------------------------------
 
declare @subscriberid int = ?
declare @flowid bigint
declare @version nvarchar(36)
declare @objecttype int = ?
declare @objectid int =   ?    -- Object id is record id -- 	
select @subscriberid = SubscriberId, @flowId = FlowId, @version = Version from flow.flowobject where subscriberid = @subscriberid and objecttype = @objecttype and objectid = @objectid
select * from flow.FlowDefinition where SubscriberId = @subscriberid and FlowId = @flowid and Version = @version;