--Init file for the Plugins system.

local system = SLRP.SystemTemplate;

system.FNAME = "hud";
system.NAME = "hud";
system.DIR = SLRP.DIR .. "hud/";

if CLIENT then
	MsgN("Loading System - Hud( Client ): ");
	system.clLoadFunction();
elseif SERVER then
	system.svLoadFunction();
end
