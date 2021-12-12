--[[
	Might work on other games?
  	Dont know :shrug:
]]--

--[[ Notify ]]--
getgenv().notify = function(title, text, icon, time)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Icon = icon;
        Time = time;
    })
end

--[[ Locals ]]--
local RService = game:GetService("RunService")
local Input = game:GetService("UserInputService")
local Client = game:GetService("Players").LocalPlayer
local Noclip = false

--[[ Start of NoClip ]]--
RService.Stepped:Connect(
	function()
		if Noclip == true then
			for i = 1, #Client.Character:GetChildren() do
				local CG = Client.Character:GetChildren()[i]
				if CG:IsA("BasePart") then
					CG.CanCollide = false
				end
			end
		end
	end)

Input.InputBegan:Connect(function(hotkey)
    if hotkey.KeyCode == Enum.KeyCode.X then
        Noclip = not Noclip
        notify("Noclip ", "NoClip: "..tostring(Noclip), "", 3)
    end
end)
--[[ End ]]--
notify("WARNING", "if you get banned it is NOT my fault.", "", 3)
wait(1)
notify("lynx", "Noclip Toggle key: X", "", 3)
