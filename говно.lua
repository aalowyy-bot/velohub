-- Automatically save config on value change

local function autoSaveConfig()
    local configFilePath = "path/to/config.lua"  -- Update this to the correct path
    local config = {}  -- Your existing config

    -- Logic to check for value change and save
    -- This is a placeholder for your variable changes
    config.value = newValue -- Example of value change

    local file = io.open(configFilePath, "w")
    if file then
        file:write(table.concat(config, '\n'))
        file:close()
    else
        print("Error saving config file!")
    end
end

-- Call this function whenever a variable changes
-- Example: autoSaveConfig() when variable 'value' updates.