local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Список имен того, что мы аннигилируем
local targets = {
    ["Backpack"] = true,
    ["Mesh"] = true,
    ["RightLeg"] = true,
    ["LeftLeg"] = true
}

-- Функция мгновенного скрытия
local function hide(obj)
    if targets[obj.Name] and obj:IsA("BasePart") then
        obj.Transparency = 1
        obj.LocalTransparencyModifier = 1
        -- Защита от того, чтобы скрипты игры не вернули видимость
        obj:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
            obj.LocalTransparencyModifier = 1
        end)
    end
end

-- Функция для мониторинга персонажа
local function setup(character)
    -- Проверяем всё, что уже есть (на случай если сумка уже на тебе)
    for _, desc in ipairs(character:GetDescendants()) do
        hide(desc)
    end
    
    -- Главный триггер: срабатывает В ЛЮБОЙ МОМЕНТ, когда в персонажа что-то падает
    character.DescendantAdded:Connect(hide)
end

-- Запуск при старте скрипта
if player.Character then setup(player.Character) end

-- Перезапуск при респавне
player.CharacterAdded:Connect(setup)