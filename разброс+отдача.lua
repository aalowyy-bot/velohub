while wait() do
local function BGun(gun)
            if game.Players.LocalPlayer.Backpack:FindFirstChild(gun) then
                game.Players.LocalPlayer.Backpack[gun]:SetAttribute("HRecoil", Vector2.new(0, 0))
                game.Players.LocalPlayer.Backpack[gun]:SetAttribute("VRecoil", Vector2.new(0, 0))
                game.Players.LocalPlayer.Backpack[gun]:SetAttribute("MaxSpread", 0)
                game.Players.LocalPlayer.Backpack[gun]:SetAttribute("MinSpread", 0)
                game.Players.LocalPlayer.Backpack[gun]:SetAttribute("SwayBase", 0)
            end
        end

        BGun("Remington 870")
        end