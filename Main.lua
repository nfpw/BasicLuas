while getgenv().AntiAfk == true do
    Players = game:GetService("Players")
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
wait(10)
end

function AutoClick()
    while getgenv().AutoClick == true do
        ClickRemote:InvokeServer()
        wait(0.3)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Hi",Name = "nfpw-Lazy.lua", HidePremium = true})
getgenv().AntiAfk = true
local ClickRemote = game:GetService("ReplicatedStorage").Knit.Services.ClickerService.RF.GQIhXRfoRgwQELLNGaSu
getgenv().AutoClick = false

local FarmTab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "Auto-Clicker",
	Default = false,
	Callback = function(Value)
        getgenv().AutoClick = Value 
        AutoClick() 
    end
})

OrionLib:Init()

--workspace.Runtime.RaceChunk.ServerCheckpoint
--Attributes Number: 1
--loadstring(game:HttpGet("https://raw.githubusercontent.com/nfpw/BasicLuas/main/test"))()
