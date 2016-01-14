if CLIENT then
	--Written for patch information

	local PATCHURL = "http://ceeit0.github.io/slrp/";
	 
	local function PATCHMenu()

		local buttonFlag = false;
		
		local MF = vgui.Create("DFrame")
		MF:SetSize(ScrW() - 100, ScrH() - 100);
		MF:Center()
		MF:SetTitle( SLRP.Name .. " : " .. SLRP.Version )
		MF:SetBackgroundBlur( true )
		MF:SetVisible( true )
		MF:SetDraggable( false )
		MF:ShowCloseButton( false )
		MF:MakePopup()
		
		--HTML view. :D
		html = vgui.Create("HTML");
		html:SetParent(MF)
		html:SetPos(5,25)
		html:SetSize(ScrW() - 110, ScrH() - 165);

		
		local B = vgui.Create("DButton", MF)
		B:SetSize(50,20)
		B:SetPos( ((ScrW() - 100) / 2) - 20, (ScrH() - 140) + 8)
		B:SetText("Close")
		B.DoClick = function(ply)
			MF:Close()
		end 
		
		html:OpenURL(PATCHURL);
	end	

	concommand.Add("patchinfo", PATCHMenu);
elseif SERVER then
	function GM:PlayerInitialSpawn(ply)
		ply:ConCommand("patchinfo");
	end
end