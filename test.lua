local Players = game:GetService("Players")

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
    end
end

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        highlightPlayer(player)
    end
    print("Refreshed")
    wait(1)
end
