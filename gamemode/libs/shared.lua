--Init file for the Library system.

local system = SLRP.SystemTemplate;

system.FNAME = "libs";
system.NAME = "Libraries";
system.DIR = SLRP.DIR .. "libs/";

if SERVER then
	MsgN("Loading System - Libraries( Server ): ");
	system.svLoadFunction();
elseif CLIENT then
	MsgN("Loading System - Libraries( Client ): ");
	system.clLoadFunction();
end
