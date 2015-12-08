--Init file for the Plugins system.

local system = SLRP.SystemTemplate;

system.FNAME = "plugins";
system.NAME = "Plugins";
system.DIR = SLRP.DIR .. "plugins/";

if SERVER then
	MsgN("Loading System - Plugins( Server ): ");
	system.svLoadFunction();
elseif CLIENT then
	MsgN("Loading System - Plugins( Client ): ");
	system.clLoadFunction();
end
