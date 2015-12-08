-- These are the default settings for the game mode

--Gamemode base!
DeriveGamemode( "sandbox" );

--Gamemode information!
SLRP.Name = "SeriouslyLight RP";
SLRP.Author = "Cee";
SLRP.Email = "";
SLRP.Website = "";
SLRP.DIR = "slrp/gamemode/";

SLRP.Version = "0.15A";

if SERVER then
	SLRP.SMetaData = {
		"money",
		"status"
	};
end

if CLIENT then
	SLRP.DONOTDRAW = {
		"CHudHealth",
		"CHudBattery",
		"CHudAmmo",
		"CHudSecondaryAmmo",
		"CHudDeathNotice"
	};
end