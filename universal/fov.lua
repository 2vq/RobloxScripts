loadstring(game:HttpGet(("https://gist.githubusercontent.com/illegal1337/5e8837176b8036eecfbfe59d1b86860d/raw/7f21e32194bfd4791cac6aa108cbd0ac007b5e15/NecrokiNotify.lua"), true))()
local Input = game:GetService("UserInputService")
local FovAmount = 70
Input.InputEnded:Connect(function(Key, Typing)
    if Typing then return end 
    if Key.KeyCode == Enum.KeyCode.Equals then
        FovAmount = FovAmount + 5
        game:GetService'Workspace'.Camera.FieldOfView = FovAmount
        notify('Field-Of-View: '..tonumber(FovAmount))
    end
end)
Input.InputEnded:Connect(function(Key, Typing)
    if Typing then return end 
    if Key.KeyCode == Enum.KeyCode.Minus then
        FovAmount = FovAmount - 5
        game:GetService'Workspace'.Camera.FieldOfView = FovAmount
        notify('Field-Of-View: '..tonumber(FovAmount))
    end
end)
