------ UI Library ------
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()

------ UI Locals ------
local a = UI:Create("Prtty much evry gam brdr evr", UDim2.new(0,290,0,515))

------ Credits ------
a:Divider("v1.1.9")
a:Divider("Created by Boblox#4481")
a:Divider("UI Library by AbstractPoo")

--[[------ LocalPlayer ------
a:Divider("LocalPlayer")

a:Slider("Speed", "Player walk speed", 0, 120, 16, function(value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

a:Slider("Jump Power", "Player jump power", 0, 110, 50, function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)]]

------ Main ------
a:Divider("Main")

a:Button("Hitbox expander", "Just a simple hitbox expander", function()
   _G.HeadSize = 8
   _G.TorsoSize = 8
   _G.LeftArmSize = 8
   _G.RightArmSize = 8
   _G.LeftLeg = 8
   _G.RightLeg = 8
   _G.Disabled = true

   game:GetService("RunService").RenderStepped:Connect(
       function()
           if _G.Disabled then
               for i, v in next, game:GetService("Players"):GetPlayers() do
                   if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                       pcall(
                           function()
                               v.Character.HumanoidRootPart.Size =
                                   Vector3.new(
                                   _G.HeadSize,
                                   _G.HeadSize,
                                   _G.HeadSize,
                                   _G.TorsoSize,
                                   _G.TorsoSize,
                                   _G.TorsoSize,
                                   _G.LeftArmSize,
                                   _G.LeftArmSize,
                                   _G.LeftArmSize,
                                   _G.RightArmSize,
                                   _G.RightArmSize,
                                   _G.RightArmSize,
                                   _G.LeftLeg,
                                   _G.LeftLeg,
                                   _G.LeftLeg,
                                   _G.RightLeg,
                                   _G.RightLeg,
                                   _G.RightLeg
                               )
                               v.Character.HumanoidRootPart.Transparency = 0.9
                               v.Character.HumanoidRootPart.BrickColor = BrickColor.new("white")
                               v.Character.HumanoidRootPart.Material = "Neon"
                               v.Character.HumanoidRootPart.CanCollide = false
                           end
                       )
                   end
               end
           end
       end
   )
end)

a:Button("Infinite Stamina", "Makes you have infinite stamina", function()
   game.Players.LocalPlayer.Character.Stamina.Value = math.huge

   local guiService = game:GetService("StarterGui")

   wait()
 
   guiService:SetCore("SendNotification", {
 
   Title = "Note";
   Text = "Run Infinite Stamina everytime you die";
   Duration = 4.5;
})
end)

a:Button("Claim Treasure", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 432.064392
   local y = 6.19999981
   local z = -930.866882
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Get Fake Passport", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -52.9068298
   local y = 7.00021362
   local z = -139.543213
   b:MoveTo(Vector3.new(x, y, z))
   wait(1)
   for _,v in pairs(game.Workspace.Signs.Other.GiveFakePassport:GetDescendants()) do
      if v:IsA("ClickDetector") then
         fireclickdetector(v)
      end
   end
end)

a:Button("Get Real Passport", "Requires 5 coins", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -52.8677902
   local y = 7.00021362
   local z = -133.809967
   b:MoveTo(Vector3.new(x, y, z))
   wait(1)
   for _,v in pairs(game.Workspace.Signs.Other.BuyProbablyRealPassport:GetDescendants()) do
      if v:IsA("ClickDetector") then
         fireclickdetector(v)
      end
   end
end)

a:Button("Autofarm Bread", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -268.265839
   local y = 7.00021362
   local z = -323.770355
   b:MoveTo(Vector3.new(x, y, z))
   wait(1)
   for _,v in pairs(game.Workspace.Gameplay.DoughStation.Part:GetDescendants()) do
      if v:IsA("ProximityPrompt") then
         fireproximityprompt(v)
      end
   end
end)

------ Map ------
a:Divider("Map")

a:Button("Brick God", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -408.022675
   local y = 73.0715714
   local z = -362.053925
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Mainland", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -264.230347
   local y = 7.04021406
   local z = -143.300339
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Checkpoint 1", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -118.95787
   local y = 6.00021362
   local z = -107.390602
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Checkpoint 2", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -118.78038
   local y = 6.00021362
   local z = -42.9065666
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Evil Brick God", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 615.980225
   local y = 39.0002747
   local z = 39.435051
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Viking Isle", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 726.743774
   local y = 6.99977112
   local z = -48.330265
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Raider Isle room", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 634.575684
   local y = 6.99984741
   local z = -19.7050133
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Sorcerer", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -380.348938
   local y = 6.00013733
   local z = -344.396606
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Witch", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 614.71759
   local y = 6.99984741
   local z = 38.7001114
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Noob King castle", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -350.078186
   local y = 16.0002136
   local z = -23.5329895
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Kings Throne", "At Noob King castle", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -288.007355
   local y = 18.0500565
   local z = 9.90033817
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Guardian Isle", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = -545.569885
   local y = 306.000092
   local z = 705.791382
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("Treasure Island", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 432.301971
   local y = 6
   local z = -904.138367
   b:MoveTo(Vector3.new(x, y, z))
end)

a:Button("VC Chamber", "", function()
   local a = game.Players.LocalPlayer
   local b = a.Character

   local x = 841.892029
   local y = 306.000061
   local z = -678.037476
   b:MoveTo(Vector3.new(x, y, z))
end)
