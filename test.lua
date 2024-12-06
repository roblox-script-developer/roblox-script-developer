local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function highlightPlayer(player)
    local character = player.Character
    if character then
        local highlightPart = Instance.new("Part")
        highlightPart.Size = character.HumanoidRootPart.Size * 1.2
        highlightPart.Position = character.HumanoidRootPart.Position
        highlightPart.Anchored = true
        highlightPart.CanCollide = false
        highlightPart.BrickColor = BrickColor.new("Bright red")
        highlightPart.Transparency = 0.5
        highlightPart.Parent = workspace

        highlightPart.CFrame = character.HumanoidRootPart.CFrame

        local nameTag = Instance.new("BillboardGui")
        nameTag.Size = UDim2.new(0, 100, 0, 50)
        nameTag.Adornee = character.Head
        nameTag.Parent = character.Head
        nameTag.StudsOffset = Vector3.new(0, 2, 0)

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Text = player.Name
        nameLabel.Size = UDim2.new(1, 0, 1, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextScaled = true
        nameLabel.Parent = nameTag
    end
end

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        highlightPlayer(player)
    end
    print("Refreshed")
    wait(1)
end
