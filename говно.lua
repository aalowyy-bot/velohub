-- Code for toggling the menu with the Insert key
local menuToggleKey = Enum.KeyCode.Insert

-- Simplified animation speed to 0.5 seconds
local animationSpeed = 0.5

function toggleMenu()
    -- Your menu toggle logic here
end

-- Bind the toggle function to the key
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == menuToggleKey then
        toggleMenu()
    end
end)