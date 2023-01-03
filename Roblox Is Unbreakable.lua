local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local Esp = library:CreateWindow("Esp")

local Settings = Esp:CreateFolder("Settings")
local Arrows = Esp:CreateFolder("Arrows")
local ReqArrows = Esp:CreateFolder("Requiem Arrows")
local Lokakaka = Esp:CreateFolder("Lokakaka")
local Mask = Esp:CreateFolder("Stone Mask")
local Ball = Esp:CreateFolder("Steel Ball")
local Cash = Esp:CreateFolder("Cash")
local Coin = Esp:CreateFolder("Coins")
local Presents = Esp:CreateFolder("Presents")

local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
local debounce = 0.5
local autopickup = false

Settings:Toggle("Auto Pickup",function(bool)
    autopickup = bool
end)

Arrows:Toggle("Active",function(bool)
    Arrowesp = bool
end)
Arrows:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Arrow") then
        local arrow = workspace.Map.Items.SpawnedItems:FindFirstChild("Arrow")
        HRP.CFrame = arrow.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(arrow.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)
ReqArrows:Toggle("Active",function(bool)
    ReqArrowesp = bool
end)
ReqArrows:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Requiem Arrow") then
        local reqarrow = workspace.Map.Items.SpawnedItems:FindFirstChild("Requiem Arrow")
        HRP.CFrame = reqarrow.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(reqarrow.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Lokakaka:Toggle("Active",function(bool)
    Roka = bool
end)
Lokakaka:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Lokakaka") then
        local roka = workspace.Map.Items.SpawnedItems:FindFirstChild("Lokakaka")
        HRP.CFrame = roka.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(roka.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Mask:Toggle("Active",function(bool)
    maskesp = bool
end)
Mask:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Stone Mask") then
        local mask = workspace.Map.Items.SpawnedItems:FindFirstChild("Stone Mask")
        HRP.CFrame = mask.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(mask.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Ball:Toggle("Active",function(bool)
    ballsesp = bool
end)
Ball:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Steel Ball") then
        local ball = workspace.Map.Items.SpawnedItems:FindFirstChild("Steel Ball")
        HRP.CFrame = ball.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(ball.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Cash:Toggle("Active",function(bool)
    cashesp = bool
end)
Cash:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Cash") then
        local cash = workspace.Map.Items.SpawnedItems:FindFirstChild("Cash")
        HRP.CFrame = cash.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(cash.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Coin:Toggle("Active",function(bool)
    coinesp = bool
end)
Coin:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Coin") then
        local coin = workspace.Map.Items.SpawnedItems:FindFirstChild("Coin")
        HRP.CFrame = coin.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(coin.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end)

Presents:Toggle("Active",function(bool)
    presentesp = bool
end)
Presents:Button("Teleport",function()
    if workspace.Map.Items.SpawnedItems:FindFirstChild("Present") then
        local present = workspace.Map.Items.SpawnedItems:FindFirstChild("Present")
        HRP.CFrame = present.Handle.CFrame
        if autopickup then
            wait(debounce)
            fireproximityprompt(present.Handle:FindFirstChildWhichIsA("ProximityPrompt",true))
        end
    end
end) 

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
esp.BorderColor3 = Color3.new(255,255,255)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = 14
esp.TextColor3 = Color3.fromRGB(255,255,255)
 
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
        if v:IsA("Model") then
            if v:FindFirstChild("Handle") == nil then
                v:Destroy()
            end
        end
    end

    for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
        if Arrowesp then
            if v.Name == "Arrow" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(204,0,204)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Arrow" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if ReqArrowesp then
            if v.Name == "Requiem Arrow" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(0,0,255)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Requiem Arrow" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if Rokaesp then
            if v.Name == "Locacaca" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(Rokacolor)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Locacaca" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if maskesp then
            if v.Name == "Stone Mask" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(204,0,204)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Stone Mask" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if ballsesp then
            if v.Name == "Steel Ball" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(204,0,204)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Steel Ball" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if cashesp then
            if v.Name == "Cash" then
                if v:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(0,255,0)
                    esp.Text = v.Name
                    gui:Clone().Parent = v
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Cash" then
                    if v:FindFirstChild("Cracked esp") then
                        v:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if coinesp then
            if v.Name == "Coin" then
                if v:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(0,255,0)
                    esp.Text = v.Name
                    gui:Clone().Parent = v
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Coin" then
                    if v:FindFirstChild("Cracked esp") then
                        v:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
        if presentesp then
            if v.Name == "Present" then
                if v.Handle:FindFirstChild("Cracked esp")==nil then
                    esp.TextColor3 = Color3.fromRGB(255,0,0)
                    esp.Text = v.Name
                    gui:Clone().Parent = v.Handle
                end
            end
        else
            for i,v in pairs (workspace.Map.Items.SpawnedItems:GetChildren()) do
                if v.Name == "Present" then
                    if v.Handle:FindFirstChild("Cracked esp") then
                        v.Handle:FindFirstChild("Cracked esp"):Destroy()
                    end
                end
            end
        end
    end
end)
