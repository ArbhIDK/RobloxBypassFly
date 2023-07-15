local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
humanoid:ChangeState(Enum.HumanoidStateType.Flying)

while wait() do
    humanoid.PlatformStand = true -- Prevents character from falling through the ground
    humanoid.Sit = true -- Additional bypass to prevent anti-fly measures
    
    -- Advanced bypass technique: Manipulate the humanoid's state directly
    humanoid.Swimming = true
    humanoid.Sit = false
    humanoid.Climbing = true
end
