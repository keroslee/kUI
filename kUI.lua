function HelloWorldCommand(cmd)
	myFrame = getglobal("HelloWorldTestFrame");
	if(not myFrame:IsShown()) then
		myFrame:Show();
	else
		myFrame:Hide();
	end
end

function HelloWorldLoad()
	getglobal("HelloWorldTestFrame"):Hide();
	DEFAULT_CHAT_FRAME:AddMessage("HelloWorld is Loaded!");
	SLASH_HELLOWORLD1 = "/helloworld";
	SLASH_HELLOWORLD2 = "/hw";
	SlashCmdList["HELLOWORLD"] = HelloWorldCommand;
end

function HelloWorldFrameUpdate()
	textFPS = getglobal("HelloWorldTestFrameTextFPS");
	textDelay = getglobal("HelloWorldTestFrameTextDelay");
	textMoney = getglobal("HelloWorldTestFrameTextMoney");
	down, up, lag = GetNetStats();
	
	textFPS:SetText("FPS   "..floor(GetFramerate()));
	textDelay:SetText("Delay   "..lag.." ms");
	textMoney:SetText("Money   "..floor(GetMoney()/10000).." G");
end