-- Basic Commandbar


local Name = game.Players.LocalPlayer.Name
local RipcordCmdGui = Instance.new("ScreenGui")
local CmdBox = Instance.new("TextBox")
local AdminBar = CmdBox.FocusLost
local PrefixOpener = ";"
local Prefix = PrefixOpener
local lp = game:GetService("Players").LocalPlayer
local KeyPress = lp:GetMouse()
local added = game.Workspace.ChildAdded
local hum = lp.Character.Humanoid
local m = lp:GetMouse()
local uis = game:GetService('UserInputService')
local ChatCmd = true
local Chat = game.Players.LocalPlayer.Chatted
CommandBarGui.Name = "CommandBarGui"
CommandBarGui.Parent = game.CoreGui

CmdBox.Name = "CmdBox"
CmdBox.Parent = CommandBarGui
CmdBox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CmdBox.BorderSizePixel = 3
CmdBox.Position = UDim2.new(0, 0, 0.533333333333, 0)
CmdBox.Size = UDim2.new(0, 0, 0, 20)
CmdBox.ClearTextOnFocus = false
CmdBox.Font = Enum.Font.GothamBlack
CmdBox.Text = ""
CmdBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBox.TextSize = 15
CmdBox.Visible = false
KeyPress.KeyDown:connect(function(key)
	if key == Prefix then
		wait()
		CmdBox.Text = ""
		CmdBox.Visible = true
		CmdBox:CaptureFocus()
		CmdBox:TweenPosition(UDim2.new(0, 0, 0.533333333333, 0), "Out", "Quad", 0.3, true)
		CmdBox:TweenSize(UDim2.new(0, 227,0, 27), "Out", "Quad", 0.3, true)
		CmdBox.Text = ""
		wait()
		CmdBox.Text = ""
	end
end)
CmdBox.FocusLost:Connect(function(PressedEnter)
	CmdBox:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.5,false)
	CmdBox:TweenPosition(UDim2.new(0,0,0), "Out", "Quad", 0.3, false)
	if PressedEnter then
		wait()
		CmdBox.Text = ""
		CmdBox.Visible = false
	else
		wait()
		CmdBox.Text = ""
		CmdBox.Visible = false
	end
end)
