    --//UserSets
    settings().Physics.PhysicsEnvironmentalThrottle = 1
    settings().Rendering.QualityLevel = 'Level01'
    UserSettings():GetService("UserGameSettings").MasterVolume = 0
for _,v in pairs(game:GetDescendants()) do
        if v:IsA('Decal') or v:IsA('Texture') or v:IsA('SpotLight') or v:IsA('WedgePart') or v:IsA('UnionOperation') then
            v:Destroy()
        elseif v:IsA('Part') then
            v.Material = Enum.Material.Air
            v.Transparency = 1
        elseif v.Name == 'Terrian' then
            v.WaterReflectace = 1
            v.WaterTransparency = 1
        elseif v:IsA('MeshPart') then
            v.TextureID = 0
            v.Transparency = 1
        end
    end
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
     if v:IsA("BasePart") then
     v:Destroy()
  end
end
wait(.1)
game:GetService("Lighting").Bloom:Destroy()
game:GetService("Lighting").ColorCorrection:Destroy()
game:GetService("Lighting").SunRays:Destroy()
game:GetService("Lighting").Sky:Destroy()
game:GetService("Lighting").PepperSprayBlur:Destroy()
game:GetService("Lighting").SnowBlur:Destroy()
