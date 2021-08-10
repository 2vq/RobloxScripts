local NecrokiCmdGui = Instance.new("ScreenGui", MainGui)
local CmdBox = Instance.new("TextBox")
local AdminBar = CmdBox.FocusLost
local PrefixOpener = ";" --cmdbar opener?? 
local Prefix = PrefixOpener
local lp = game:GetService("Players").LocalPlayer
local KeyPress = lp:GetMouse()
local m = lp:GetMouse()
NecrokiCmdGui.Name = "NecrokiCmdGui"
NecrokiCmdGui.Parent = game.CoreGui

CmdBox.Name = "CmdBox"
CmdBox.Parent = NecrokiCmdGui
CmdBox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CmdBox.BorderColor3 = Color3.fromRGB(244,134,122)
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
