game.StarterGui:SetCore("SendNotification", {
Title = "Innovation Arctic Base";
Text = "Scipt Executed";
Duration = 5;
})

game.StarterGui:SetCore("SendNotification", {
Title = "Version 1.1";
Text = "script by AlexandrosB007gr";
Duration = 5;
})

-- Gui

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local main = library:CreateWindow("Main")
local manual = library:CreateWindow("Manual Control")
local misc = library:CreateWindow("Misc")
local control = main:CreateFolder("Control")
local mutation = main:CreateFolder("Mutation")
local esps = main:CreateFolder("Esp")
local core = manual:CreateFolder("Core")
local credits = misc:CreateFolder("Credits")
local logs = misc:CreateFolder("Update Logs")
_G.spam = false
_G.check = false

-- Esp

local esp_settings = {
    textsize = 8,
    colour = 255,255,255
}
 
local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)

gui.Name = "Cracked esp";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour)

-- Everything else

core:Dropdown("Core Fan",{"0","1","2","3","4"},true,function(mob)
    _G.fan = mob
end)

core:Dropdown("Pump 1",{"0","1","2"},true,function(mob)
    _G.pump1 = mob
end)

core:Dropdown("Pump 2",{"0","1","2"},true,function(mob)
    _G.pump2 = mob
end)

core:Dropdown("Valve 1",{"Open","Close"},true,function(mob)
    _G.valve1 = mob
end)

core:Dropdown("Valve 2",{"Open","Close"},true,function(mob)
    _G.valve2 = mob
end)

core:Button("Core Fan",function()
    fireclickdetector(Workspace.Core.FanButtons[_G.fan].ClickDetector)
end)

core:Button("Pump 1",function()
    fireclickdetector(Workspace.Core.Pump1Buttons[_G.pump1].ClickDetector)
end)

core:Button("Pump 2",function()
    fireclickdetector(Workspace.Core.Pump2Buttons[_G.pump2].ClickDetector)
end)

core:Button("Valve 1",function()
    if _G.valve1 == "Open" then
        if Workspace.Core.Valve1.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
    elseif _G.valve1 == "Close" then
        if Workspace.Core.Valve1.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
    end
end)

core:Button("Valve 2",function()
    if _G.valve2 == "Open" then
        if Workspace.Core.Valve2.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    elseif _G.valve2 == "Close" then
        if Workspace.Core.Valve2.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    end
end)

core:Toggle("Spam Fan",function(bool)
    _G.spamfan = bool
end)

core:Toggle("Spam Pump 1",function(bool)
    _G.spampump1 = bool
end)

core:Toggle("Spam Pump 2",function(bool)
    _G.spampump2 = bool
end)

core:Toggle("Spam Valve 1",function(bool)
    _G.spamvalve1 = bool
end)

core:Toggle("Spam Valve 2",function(bool)
    _G.spamvalve2 = bool
end)

local secs = control:Label("???",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,0,0);
    BgColor = Color3.fromRGB(69,69,69);
})

local temp = control:Label(math.ceil(Workspace.GameState.Core.Temperature.Value),{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

local text = control:Label("None",{
    TextSize = 25;
    TextColor = Color3.fromRGB(0,255,0);
    BgColor = Color3.fromRGB(69,69,69);
})

control:Toggle("Spam",function(bool)
    _G.spam = bool
end)

control:Button("Meltdown",function()
    _G.option = "meltdown"
    text:Refresh("Meltdown")
end)

control:Button("Save",function()
    _G.option = "save"
    text:Refresh("Save")
end)

mutation:Toggle("Stop mutation",function(bool)
    _G.mutationpower = bool
end)

mutation:Toggle("No zombie",function(bool)
    _G.nozombie = bool
end)

mutation:Toggle("Yes zombie",function(bool)
    _G.yeszombie = bool
end)

mutation:Toggle("Fast a f",function(bool)
    _G.fast = bool
end)

mutation:Toggle("Tanky",function(bool)
    _G.tank = bool
end)

esps:Button("Cores Esp",function()
    for i,v in pairs (workspace:GetChildren()) do
        if v.Name == "EnergyCore" then
            if v.Part:FindFirstChild("Cracked esp")==nil then
                esp.Text = "{"..v.Name.."}"
                gui:Clone().Parent = v.Part
            end
        end
    end
end)


game:GetService("RunService").RenderStepped:Connect(function()
    if _G.spam == true and _G.option == "save" then
        fireclickdetector(Workspace.Core.Pump1Buttons["2"].ClickDetector)
        fireclickdetector(Workspace.Core.Pump2Buttons["2"].ClickDetector)
        fireclickdetector(Workspace.Core.FanButtons["4"].ClickDetector)
        if Workspace.Core.Valve1.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
        if Workspace.Core.Valve2.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    elseif _G.spam == true and _G.option == "meltdown" then
        fireclickdetector(Workspace.Core.Pump1Buttons["0"].ClickDetector)
        fireclickdetector(Workspace.Core.Pump2Buttons["0"].ClickDetector)
        fireclickdetector(Workspace.Core.FanButtons["0"].ClickDetector)
        if Workspace.Core.Valve1.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
        if Workspace.Core.Valve2.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.spamfan == true then
        fireclickdetector(Workspace.Core.FanButtons[_G.fan].ClickDetector)
    end
    if _G.spampump1 == true then
        fireclickdetector(Workspace.Core.Pump1Buttons[_G.pump1].ClickDetector)
    end
    if _G.spampump2 == true then
        fireclickdetector(Workspace.Core.Pump2Buttons[_G.pump2].ClickDetector)
    end
    if _G.spamvalve1 == true then
        if _G.valve1 == "Open" then
        if Workspace.Core.Valve1.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
    elseif _G.valve1 == "Close" then
        if Workspace.Core.Valve1.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve1.ClickDetector)
        end
    end
    end
    if _G.spamvalve2 == true then
        if _G.valve2 == "Open" then
        if Workspace.Core.Valve2.Motor.DesiredAngle ~= 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    elseif _G.valve2 == "Close" then
        if Workspace.Core.Valve2.Motor.DesiredAngle == 0 then
            fireclickdetector(Workspace.Core.Valve2.ClickDetector)
        end
    end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    temp:Refresh(math.ceil(Workspace.GameState.Core.Temperature.Value))
    if Workspace.GameState.Meltdown.Value == true and _G.check == false then
        explosion()
    end
    if _G.mutationpower == true and Workspace.MutatorMachine.PowerBreaker.Motor.DesiredAngle ~= 0 then
        fireclickdetector(Workspace.MutatorMachine.PowerBreaker.Lever.ClickPart.ClickDetector)
    end
    if _G.nozombie == true then
        fireclickdetector(Workspace.MutatorMachine.DisinfectButton.ClickDetector)
    end
    if _G.yeszombie == true then
        fireclickdetector(Workspace.MutatorMachine.InfectButton.ClickDetector)
    end
    if _G.fast == true then
        fireclickdetector(Workspace.MutatorMachine.BlueButton.ClickDetector)
        fireclickdetector(Workspace.MutatorMachine.GreenButton.ClickDetector)
    end
    if _G.tank == true then
        fireclickdetector(Workspace.MutatorMachine.RedButton.ClickDetector)
        fireclickdetector(Workspace.MutatorMachine.OrangeButton.ClickDetector)
    end
end)

function explosion()
    _G.check = true
    seconds = 0
    repeat
        secs:Refresh(seconds)
        wait(1)
        seconds = seconds + 1
    until Workspace.GameState.MeltdownFinalExplosion.Value == true
    repeat
        wait()
    until Workspace.GameState.Meltdown.Value == false
    _G.check = false
end

-- Misc

credits:Label("Script by AlexandrosB007gr",{
    TextSize = 15;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(38,38,38);
    
})

credits:Label("Library by Aika",{
    TextSize = 15;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(38,38,38);
    
})

logs:Label("Version 1.1",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(38,38,38);
    
})

logs:Label("",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0);
    
})

logs:Label("+ misc",{
    TextSize = 25;
    TextColor = Color3.fromRGB(0,255,0);
    BgColor = Color3.fromRGB(38,38,38);
    
})
logs:Label("+ credits",{
    TextSize = 25;
    TextColor = Color3.fromRGB(0,255,0);
    BgColor = Color3.fromRGB(38,38,38);
    
})

logs:Label("+ update logs",{
    TextSize = 25;
    TextColor = Color3.fromRGB(0,255,0);
    BgColor = Color3.fromRGB(38,38,38);
    
})

logs:Label("",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0);
    
})


logs:Label("[-] change buttons order",{
    TextSize = 18;
    TextColor = Color3.fromRGB(255,255,0);
    BgColor = Color3.fromRGB(38,38,38);
    
})

logs:Label("",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0);
    
})

logs:Label("- zombies esp",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,0,0);
    BgColor = Color3.fromRGB(38,38,38);
    
})
