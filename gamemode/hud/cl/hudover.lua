--This file will over ride the default hud.

function GM:HUDShouldDraw(name)

	local flag = true;

	for _,v in pairs(SLRP.DONOTDRAW) do
		if name == v then
			flag = false;
			break;
		end
	end

	return flag;
end
