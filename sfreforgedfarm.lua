local plr = game.Players.LocalPlayer.Character.HumanoidRootPart; -- character

local function attack() -- fire a remote click event
    args = {
    [1] = "Attack",
    [2] = false
    }
    game:GetService("Players").LocalPlayer.Character.Sword.SwordScriptNew.Attack:FireServer(unpack(args))
end

local function gemfarm() -- auto farm
    for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
        if v:IsA('Model') and v:FindFirstChild('HumanoidRootPart') then
            plr.CFrame = v.HumanoidRootPart.CFrame
            wait(0.4)
            attack()
            wait(0.5)
        end
    end
end

while wait(1) do
    if farm == true then
        gemfarm()
    end
end