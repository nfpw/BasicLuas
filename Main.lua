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

local Arara = workspace:GetDescendants()

function AutoClick()
	while getgenv().AutoClick == true do
		for _, SoktumunClickRemotunuDestroylamayin in ipairs(game:GetService("ReplicatedStorage").Knit.Services.ClickerService.RF:GetChildren()) do
			if SoktumunClickRemotunuDestroylamayin.Name == "GQIhXRfoRgwQELLNGaSu" then
				SoktumunClickRemotunuDestroylamayin:GetFullName():InvokeServer()
			else
				print("Remotunu Yemişler")
			end
		end
		wait(0.3)
	end
end

function AutoRace()
	while getgenv().AutoRace == true do
		print("*AutoRacing*")
		wait()
	end
end

local function RoundChecker(str)
	return string.find(str, "%d") ~= nil
end

local nfpw = game.Players.LocalPlayer
local RoundTimer = nfpw.PlayerGui.ScreenGui.RoundTimer.Text
local berke081 = nfpw.Character
local Osursx = berke081 and berke081:FindFirstChild("HumanoidRootPart")

while true do
	if RoundChecker(RoundTimer) then
		if getgenv().AutoRace == true then
			for _, OmerFaruq in ipairs(Arara) do
				if OmerFaruq:IsA("Part") and OmerFaruq.Name == "ServerCheckpoint" then
					if OmerFaruq:GetAttributes(16) then
						Osursx.CFrame = OmerFaruq.CFrame
					end
				end
			end
		end
	else
		print("Round not started")
	end
	task.wait()
end



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Hi",Name = "nfpw-Lazy.lua", HidePremium = true})
getgenv().AntiAfk = true
getgenv().AutoClick = false
getgenv().AutoRace = false

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

FarmTab:AddToggle({
	Name = "Auto-Race",
	Default = false,
	Callback = function(Value)
		getgenv().AutoRace = Value 
		AutoRace() 
	end
})

OrionLib:Init()

--workspace.Runtime.RaceChunk.ServerCheckpoint
--Attributes Number: 1
--loadstring(game:HttpGet("https://raw.githubusercontent.com/nfpw/BasicLuas/main/test"))()
