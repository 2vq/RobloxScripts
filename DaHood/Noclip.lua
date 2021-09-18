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
local a=getrawmetatable(game)or debug.getrawmetatable(game)or getmetatable(game)if setreadonly then setreadonly(a,false)else make_writeable(a,true)end;local b=a.__index;local c=a.__newindex;local d=a.__namecall;local e=newcclosure or read_me;local f=getcallingscript or get_calling_script;local g=checkcaller or is_protosmasher_caller;a.__newindex=e(function(self,h,i)if checkcaller()then return c(self,h,i)end;if self:IsDescendantOf(Client.Character)and self.Name=="HumanoidRootPart"or self.Name=="Torso"then if h=="CFrame"or h=="Position"or h=="Anchored"then return nil end end;return c(self,h,i)end)if setreadonly then setreadonly(a,true)else make_writeable(a,false)end

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
