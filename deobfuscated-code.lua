--[[ 
Obfuscated By Slayerson Bot Testing V1
--]] 

loadstring("local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library/main/Library", true))()

local window = library:AddWindow("public script| i made this for fun", {
    main_color = Color3.fromRGB(0, 0, 255),
    min_size = Vector2.new(580, 480),
    can_resize = false,
})

local Main = window:AddTab("MAIN")
local folder = Main:AddFolder("BRAWL")

local Stuff = window:AddTab("AUTO STUFF")

local godModeToggle = false
folder:AddSwitch("God Mode (Brawl)", function(State)
    godModeToggle = State
    if State then
        task.spawn(function()
            while godModeToggle do
                game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait(0)
            end
        end)
    end
end)

local autoJoinToggle = false
folder:AddSwitch("Auto Join Brawl", function(State)
    autoJoinToggle = State
    if State then
        task.spawn(function()
            while autoJoinToggle do
                game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait(2)
            end
        end)
    end
end)

local folder2 = Main:AddFolder("Misc")

folder2:AddButton("Destroy Ad Teleport", function()
    local part = workspace:FindFirstChild("RobloxForwardPortals")
    if part then
        part:Destroy()
    end
end)

folder2:AddButton("Walk On Water", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/xNUMcmvW'))()
end)

folder2:AddButton("Permanent Shift Lock", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
end)

folder2:AddButton("Anti AFK", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
end)

folder2:AddButton("Free AutoLift Gamepass", function()
    local gamepassFolder = game:GetService("ReplicatedStorage").gamepassIds
    local player = game:GetService("Players").LocalPlayer
    for _, gamepass in pairs(gamepassFolder:GetChildren()) do
        local value = Instance.new("IntValue")
        value.Name = gamepass.Name
        value.Value = gamepass.Value
        value.Parent = player.ownedGamepasses
    end
end)

folder2:AddSwitch("Disable Trade", function(State)
    if State then
        game:GetService("ReplicatedStorage").rEvents.tradingEvent:FireServer("disableTrading")
    else
        game:GetService("ReplicatedStorage").rEvents.tradingEvent:FireServer("enableTrading")
    end
end)

folder2:AddSwitch("Hide Pets", function(State)
    if State then
        game:GetService("ReplicatedStorage").rEvents.showPetsEvent:FireServer("hidePets")
    else
        game:GetService("ReplicatedStorage").rEvents.showPetsEvent:FireServer("showPets")
    end
end)

Main:AddLabel("---Auto equip Here---")

local folder = Stuff:AddFolder("Auto Farm Jungle")

local autoRepToggle = false
folder:AddSwitch("Auto Lift", function(State)
    autoRepToggle = State
    if State then
        task.spawn(function()
            while autoRepToggle do
                game:GetService("Players").LocalPlayer:WaitForChild("muscleEvent"):FireServer("rep")
                task.wait(0.1)
            end
        end)
    end
end)

folder:AddSwitch("Auto Jungle Boulder", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8617, 37, 2677))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Boulder"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder:AddSwitch("Auto Jungle Bench", function(State)
    local jungleBenchToggle = false
    jungleBenchToggle = State
    if State then
        task.spawn(function()
            while jungleBenchToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8629.88086, 64.8842468, 1855.03467))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Bench"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder:AddSwitch("Auto Jungle Bar Lift", function(State)
    local jungleBarLiftToggle = false
    jungleBarLiftToggle = State
    if State then
        task.spawn(function()
            while jungleBarLiftToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8678.05566, 14.5030098, 2089.25977))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Bar Lift"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder:AddSwitch("Auto Jungle Squat", function(State)
    local jungleSquatToggle = false
    jungleSquatToggle = State
    if State then
        task.spawn(function()
            while jungleSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8374.25586, 34.5933418, 2932.44995))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Squat"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local folder2 = Stuff:AddFolder("Auto Farm Muscle King")

local MuscleKingSquatToggle = false
folder2:AddSwitch("Auto Muscle Boulder", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8940.12402, 13.1642084, -5699.13477))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["King Boulder"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder2:AddSwitch("Auto Muscle Bench", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8590.06152, 46.0167427, -6043.34717))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Muscle King Bench"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder2:AddSwitch("Auto Muscle Squat", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8759, 44, -6044))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Muscle King Squat"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder2:AddSwitch("Auto Muscle Dead Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-8773, 50, -5664))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Muscle King Lift"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local folder3 = Stuff:AddFolder("Auto Farm Lygends Gym")

local MuscleKingSquatToggle = false
folder3:AddSwitch("Auto Legends Boulder", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4189, 1010, -3904))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Throw"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder3:AddSwitch("Auto Legends Bench", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4109, 1020, -3803))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Press"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder3:AddSwitch("Auto legends Squat", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4304, 1020, -4123))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Pullup"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder3:AddSwitch("Auto Legends Dead Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4532, 1023, -4003))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Lift"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local folder4 = Stuff:AddFolder("Auto Farm Eternal Gym")

folder4:AddSwitch("Auto Eternal Bench", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-7174, 45, -1106))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Eternal Press"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local folder5 = Stuff:AddFolder("Auto Farm Froze Gym")

folder5:AddSwitch("Auto Froze Bench Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-3009, 38, -338))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Frost Press"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder5:AddSwitch("Auto Dead Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-2918, 40, -210))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Frost Lift"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder5:AddSwitch("Auto Squat Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-2721, 29, -592))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Frost Squat"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local folder6 = Stuff:AddFolder("Auto Farm Mythical Gym")

folder6:AddSwitch("Auto Bench Lift", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(2369, 38, 1243))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mythical Press"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder6:AddSwitch("Auto Boulder", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(2667, 46, 1203))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mytical Throw"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

folder6:AddSwitch("Auto Mythical Pull up", function(State)
    MuscleKingSquatToggle = State
    if State then
        task.spawn(function()
            while MuscleKingSquatToggle do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(2487, 30, 848))
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mytical Pullup"].interactSeat)
                task.wait(0.1)
            end
        end)
    end
end)

local AutoEquip = Main:AddFolder("Auto Equip")

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local equipWeightToggle = false
local equipPushupsToggle = false
local equipSitupsToggle = false
local equipHandstandToggle = false

local function handleTool(toolName, toggleState)
    local character = player.Character
    if not character then
        warn("Auto " .. toolName .. " - No character found!")
        return false
    end

    local equippedTool = character:FindFirstChild(toolName)
    if not equippedTool then
        local tool = player.Backpack:FindFirstChild(toolName)
        if not tool then
            warn("Auto " .. toolName .. " - " .. toolName .. " not found in Backpack!")
            return false
        end

        tool.Parent = character
        task.wait(0.1)
        if not character:FindFirstChild(toolName) then
            warn("Auto " .. toolName .. " - Failed to equip " .. toolName .. "!")
            return false
        end
        print("Auto " .. toolName .. " - Equipped " .. toolName .. "!")
    end

    local muscleEvent = player:WaitForChild("muscleEvent", 5)
    if not muscleEvent then
        warn("Auto " .. toolName .. " - muscleEvent not found!")
        return false
    end

    local success, result = pcall(function()
        return muscleEvent:FireServer("rep")
    end)
    if success then
        if result then
            print("Auto " .. toolName .. " - Rep successful!")
        else
            warn("Auto " .. toolName .. " - Rep failed: " .. tostring(result))
        end
    else
        warn("Auto " .. toolName .. " - Rep error: " .. tostring(result))
    end
    return true
end

AutoEquip:AddSwitch("Auto Weight & Lift", function(State)
    equipWeightToggle = State
    print("Auto Weight & Lift toggle: " .. (State and "ON" or "OFF"))
    if State then
        task.spawn(function()
            print("Auto Weight & Lift starting...")
            handleTool("Weight")
            while equipWeightToggle do
                local character = player.Character
                if character then
                    handleTool("Weight")
                else
                    print("Auto Weight & Lift - Waiting for character...")
                    character = player.CharacterAdded:Wait()
                end
                task.wait()
            end
            print("Auto Weight & Lift stopped")
        end)
    end
end)

AutoEquip:AddSwitch("Auto Pushups & Lift", function(State)
    equipPushupsToggle = State
    print("Auto Pushups & Lift toggle: " .. (State and "ON" or "OFF"))
    if State then
        task.spawn(function()
            print("Auto Pushups & Lift starting...")
            handleTool("Pushups")
            while equipPushupsToggle do
                local character = player.Character
                if character then
                    handleTool("Pushups")
                else
                    print("Auto Pushups & Lift - Waiting for character...")
                    character = player.CharacterAdded:Wait()
                end
                task.wait()
            end
            print("Auto Pushups & Lift stopped")
        end)
    end
end)

AutoEquip:AddSwitch("Auto Situps & Lift", function(State)
    equipSitupsToggle = State
    print("Auto Situps & Lift toggle: " .. (State and "ON" or "OFF"))
    if State then
        task.spawn(function()
            print("Auto Situps & Lift starting...")
            handleTool("Situps")
            while equipSitupsToggle do
                local character = player.Character
                if character then
                    handleTool("Situps")
                else
                    print("Auto Situps & Lift - Waiting for character...")
                    character = player.CharacterAdded:Wait()
                end
                task.wait()
            end
            print("Auto Situps & Lift stopped")
        end)
    end
end)

AutoEquip:AddSwitch("Auto Handstands & Lift", function(State)
    equipHandstandToggle = State
    print("Auto Handstands & Lift toggle: " .. (State and "ON" or "OFF"))
    if State then
        task.spawn(function()
            print("Auto Handstands & Lift starting...")
            handleTool("Handstands")
            while equipHandstandToggle do
                local character = player.Character
                if character then
                    handleTool("Handstands")
                else
                    print("Auto Handstands & Lift - Waiting for character...")
                    character = player.CharacterAdded:Wait()
                end
                task.wait()
            end
            print("Auto Handstands & Lift stopped")
        end)
    end
end)

player.CharacterAdded:Connect(function()
    print("Character respawned - Checking toggles...")
    if equipWeightToggle then
        handleTool("Weight")
    end
    if equipPushupsToggle then
        handleTool("Pushups")
    end
    if equipSitupsToggle then
        handleTool("Situps")
    end
    if equipHandstandToggle then
        handleTool("Handstands")
    end
end)

local Rebirth = Main:AddFolder("Auto Rebirths")

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local autoToggle = false

local function equipWeight()
    local character = player.Character
    if not character then
        warn("Auto Equip - No character found!")
        return false
    end

    local equippedWeight = character:FindFirstChild("Weight")
    if equippedWeight then
        print("Auto Equip - Weight already equipped!")
        return true
    end

    local weightTool = player.Backpack:FindFirstChild("Weight")
    if not weightTool then
        warn("Auto Equip - Weight not found in Backpack!")
        return false
    end

    weightTool.Parent = character
    task.wait(0.1)
    if character:FindFirstChild("Weight") then
        print("Auto Equip - Equipped Weight!")
        return true
    else
        warn("Auto Equip - Failed to equip Weight!")
        return false
    end
end

Rebirth:AddSwitch("Auto Lift & Equip", function(State)
    autoToggle = State
    print("Auto Lift & Equip toggle: " .. (State and "ON" or "OFF"))
    if State then
        task.spawn(function()
            print("Auto Lift & Equip starting...")
            while autoToggle do
                local character = player.Character
                if not character then
                    print("Auto Lift & Equip - Waiting for character...")
                    character = player.CharacterAdded:Wait()
                end

                if not character:FindFirstChild("Weight") then
                    equipWeight()
                end

                local muscleEvent = player:WaitForChild("muscleEvent", 5)
                if not muscleEvent then
                    warn("Auto Lift & Equip - muscleEvent not found! Stopping.")
                    autoToggle = false
                    break
                end

                local success, result = pcall(function()
                    return muscleEvent:FireServer("rep")
                end)
                if success then
                    if result then
                        print("Auto Lift & Equip - Rep successful!")
                    else
                        warn("Auto Lift & Equip - Rep failed: " .. tostring(result))
                    end
                else
                    warn("Auto Lift & Equip - Rep error: " .. tostring(result))
                end

                task.wait()
            end
            print("Auto Lift & Equip stopped")
        end)
    end
end)

player.CharacterAdded:Connect(function()
    if autoToggle then
        print("Character respawned - Auto equipping weight...")
        equipWeight()
    end
end)

local RB = {}
RB.__index = RB

function RB.new(tab)
    local self = setmetatable({}, RB)
    self.on = false
    self.target = 1
    self.tab = tab
    self:ui()
    return self
end

function RB:ui()
    self.input = self.tab:AddTextBox("Target", function(v)
        local n = tonumber(v)
        if n and n >= 1 then
            self.target = n
        else
            self.input:Set("")
        end
    end, { placeholder = "Enter target rebirths" })

    self.tab:AddSwitch("Auto Rebirth(Target)", function(s)
        self.on = s
        if s then
            self:run()
        end
    end)
end

function RB:run()
    task.spawn(function()
        local leaderstats = LocalPlayer:WaitForChild("leaderstats")
        local rebirths = leaderstats and leaderstats:WaitForChild("Rebirths")
        local events = ReplicatedStorage:WaitForChild("rEvents")
        local remote = events and events:WaitForChild("rebirthRemote")

        if not (rebirths and remote) then
            self.on = false
            return
        end

        while self.on do
            if rebirths.Value >= self.target then
                self.on = false
                print("Target rebirths reached! Stopping auto rebirth.")
                break
            end

            local success, errorMessage = pcall(function()
                remote:InvokeServer("rebirthRequest")
            end)

            if not success then
                warn("Failed to send rebirth request: " .. tostring(errorMessage))
            end

            task.wait(1)
        end
    end)
end

local myRebirth = RB.new(Rebirth)

local autoRebirth = false
local switch = Rebirth:AddSwitch("Auto Rebirth (infinite)", function(state)
    autoRebirth = state
    while autoRebirth do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):InvokeServer("rebirthRequest")
        task.wait(0.1)
    end
end)

local autoSizeLoop = nil
local switch = Rebirth:AddSwitch("Auto Size 2", function(state)
    if state then
        autoSizeLoop = task.spawn(function()
            while task.wait(0) do
                game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
            end
        end)
    else
        if autoSizeLoop then
            task.cancel(autoSizeLoop)
            autoSizeLoop = nil
        end
    end
end)

local switch = Rebirth:AddSwitch("Hide All Frames", function(state)
    local rSto = game:GetService("ReplicatedStorage")
    for _, obj in pairs(rSto:GetChildren()) do
        if obj.Name:match("Frame$") then
            obj.Visible = not state
        end
    end
end)

Rebirth:AddLabel("---Op Stuff---")

local activeTasks = {}
local switch = Rebirth:AddSwitch("Speed Grind (No Rebirth)", function(Value)
    local player = game:GetService("Players").LocalPlayer
    local muscleEvent = player:WaitForChild("muscleEvent")

    if Value then
        for i = 1, 12 do
            local taskFunc = task.spawn(function()
                while task.wait() do
                    muscleEvent:FireServer("rep")
                end
            end)
            table.insert(activeTasks, taskFunc)
        end
    else
        for _, taskFunc in pairs(activeTasks) do
            task.cancel(taskFunc)
        end
        activeTasks = {}
    end
end)

local AutoFarmTab = window:AddTab("FARM ROCKS")
local player = game.Players.LocalPlayer

repeat wait() until game:IsLoaded() and player.Character and player.Character:FindFirstChild("Humanoid") and game.Workspace

local ROCK_MODE = "shrink"

local function gettool()
    local tool = player.Backpack:FindFirstChild("Punch") or player.Character:FindFirstChild("Punch")
    if tool and tool.Parent ~= player.Character then
        tool.Parent = player.Character
        wait(0.1)
    elseif not tool then
        warn("Punch tool not found in Backpack or Character")
    end
    return tool
end

local function modifyRock(rock)
    if not rock then return end
    if ROCK_MODE == "shrink" then
        local originalSize = rock.Size
        rock.Size = originalSize * 0.1
    elseif ROCK_MODE == "hide" then
        rock.Transparency = 0
        rock.CanCollide = false
    end
end

local function farmRocks(neededDurabilityValue)
    while getgenv().autoFarm do
        wait(0)
        local character = player.Character
        local machinesFolder = game:GetService("Workspace"):FindFirstChild("machinesFolder")

        if not character then
            warn("Character not loaded")
            return
        end
        if not machinesFolder then
            warn("machinesFolder not found in Workspace")
            return
        end

        if player.Durability.Value >= neededDurabilityValue then
            for _, v in pairs(machinesFolder:GetDescendants()) do
                if v.Name == "neededDurability" and v.Value == neededDurabilityValue then
                    local rock = v.Parent:FindFirstChild("Rock")
                    if rock and character:FindFirstChild("LeftHand") and character:FindFirstChild("RightHand") then
                        local punchTool = gettool()
                        if punchTool then
                            player.muscleEvent:FireServer("punch", "rightHand")
                            player.muscleEvent:FireServer("punch", "leftHand")
                            firetouchinterest(rock, character.RightHand, 0)
                            firetouchinterest(rock, character.RightHand, 1)
                            firetouchinterest(rock, character.LeftHand, 0)
                            firetouchinterest(rock, character.LeftHand, 1)
                            modifyRock(rock)
                        end
                    else
                        warn("Rock or hands not found for durability: " .. neededDurabilityValue)
                    end
                end
            end
        end
    end
end

AutoFarmTab:AddLabel("-----Glitching Rock-----", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    gettool()
                end
                wait(0.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Jungle Rock(10M)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(10000000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Muscle Rock(1M)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(5000000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Legends Rock(1M)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(1000000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddLabel("------------Additional Rock Farm-------------")

AutoFarmTab:AddSwitch("Tiny Rock(0)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(0)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Punching Rock(10)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(10)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Large Rock(100)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(100)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Beach Rock(5K)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(5000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Froz Rock(150K)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(150000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Ethernal Rock(750K)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(750000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

AutoFarmTab:AddSwitch("Msytic Rock(400K)", function()
    _G.fastHitActive = not _G.fastHitActive
    if _G.fastHitActive then
        getgenv().autoFarm = true
        coroutine.wrap(function()
            local iterations = 10
            while _G.fastHitActive do
                local character = player.Character
                if character then
                    for _ = 1, iterations do
                        gettool()
                        farmRocks(400000)
                    end
                end
                wait(.1)
            end
        end)()
    else
        getgenv().autoFarm = false
        local character = player.Character
        local equipped = character and character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = player.Backpack
        end
    end
end)

local Stats = window:AddTab("YOUR STATS")

local function abbreviateNumber(value)
    if value >= 1e15 then
        return string.format("%.1fQa", value / 1e15)
    elseif value >= 1e12 then
        return string.format("%.1fT", value / 1e12)
    elseif value >= 1e9 then
        return string.format("%.1fB", value / 1e9)
    elseif value >= 1e6 then
        return string.format("%.1fM", value / 1e6)
    elseif value >= 1e3 then
        return string.format("%.1fK", value / 1e3)
    else
        return tostring(value)
    end
end

local labels = {
    TimeSpentLabel = Stats:AddLabel("Time spent in this server: 00:00"),
    StrengthGainedLabel = Stats:AddLabel("Amount of strength gained in this server: 0"),
    DurabilityGainedLabel = Stats:AddLabel("Amount of durability gained in this server: 0"),
    AgilityGainedLabel = Stats:AddLabel("Amount of agility gained in this server: 0"),
    KillsGainedLabel = Stats:AddLabel("Amount of kills gained in this server: 0"),
    EvilKarmaGainedLabel = Stats:AddLabel("Amount of Evil Karma gained in this server: 0"),
    GoodKarmaGainedLabel = Stats:AddLabel("Amount of Good Karma gained in this server: 0"),
    RebirthsGainedLabel = Stats:AddLabel("Amount of rebirths gained in this server: 0")
}

local function createMyLabels()
    local player = game.Players.LocalPlayer
    if not player then
        warn("Player not found!")
        return
    end

    local leaderstats = player:WaitForChild("leaderstats", 10)
    if not leaderstats then
        warn("leaderstats not found!")
        return
    end

    local strengthStat = leaderstats:WaitForChild("Strength", 5)
    local durabilityStat = player:WaitForChild("Durability", 5)
    local agilityStat = player:WaitForChild("Agility", 5)
    local killsStat = leaderstats:WaitForChild("Kills", 5)
    local evilKarmaStat = player:WaitForChild("evilKarma", 5)
    local goodKarmaStat = player:WaitForChild("goodKarma", 5)
    local rebirthStat = leaderstats:WaitForChild("Rebirths", 5)

    if not (strengthStat and durabilityStat and agilityStat and killsStat and evilKarmaStat and goodKarmaStat and rebirthStat) then
        warn("One or more stats not found! Check stat names.")
        return
    end

    local initialStrength = strengthStat.Value or 0
    local initialDurability = durabilityStat.Value or 0
    local initialAgility = agilityStat.Value or 0
    local initialKills = killsStat.Value or 0
    local initialEvilKarma = evilKarmaStat.Value or 0
    local initialGoodKarma = goodKarmaStat.Value or 0
    local initialRebirths = rebirthStat.Value or 0

    local startTime = tick()

    local function updateLabels()
        local strengthGained = strengthStat.Value - initialStrength
        local durabilityGained = durabilityStat.Value - initialDurability
        local agilityGained = agilityStat.Value - initialAgility
        local killsGained = killsStat.Value - initialKills
        local evilKarmaGained = evilKarmaStat.Value - initialEvilKarma
        local goodKarmaGained = goodKarmaStat.Value - initialGoodKarma
        local rebirthsGained = rebirthStat.Value - initialRebirths

        labels.StrengthGainedLabel.Text = "Amount of strength gained in this server: " .. abbreviateNumber(strengthGained)
        labels.DurabilityGainedLabel.Text = "Amount of durability gained in this server: " .. abbreviateNumber(durabilityGained)
        labels.AgilityGainedLabel.Text = "Amount of agility gained in this server: " .. abbreviateNumber(agilityGained)
        labels.KillsGainedLabel.Text = "Amount of kills gained in this server: " .. abbreviateNumber(killsGained)
        labels.EvilKarmaGainedLabel.Text = "Amount of Evil Karma gained in this server: " .. abbreviateNumber(evilKarmaGained)
        labels.GoodKarmaGainedLabel.Text = "Amount of Good Karma gained in this server: " .. abbreviateNumber(goodKarmaGained)
        labels.RebirthsGainedLabel.Text = "Amount of rebirths gained in this server: " .. abbreviateNumber(rebirthsGained)
    end

    local function updateTimeSpent()
        local timeSpent = tick() - startTime
        local minutes = math.floor(timeSpent / 60)
        local seconds = math.floor(timeSpent % 60)
        labels.TimeSpentLabel.Text = string.format("Time spent in this server: %02d:%02d", minutes, seconds)
    end

    strengthStat.Changed:Connect(updateLabels)
    durabilityStat.Changed:Connect(updateLabels)
    agilityStat.Changed:Connect(updateLabels)
    killsStat.Changed:Connect(updateLabels)
    evilKarmaStat.Changed:Connect(updateLabels)
    goodKarmaStat.Changed:Connect(updateLabels)
    rebirthStat.Changed:Connect(updateLabels)

    game:GetService("RunService").Heartbeat:Connect(updateTimeSpent)

    updateLabels()
end

createMyLabels()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local walkSpeedValue = 16
local setSpeed = false
local speedLoop = nil

Stats:AddTextBox("WalkSpeed", function(text)
    local speed = tonumber(text)
    if speed and speed >= 1 and speed <= 500 then
        walkSpeedValue = speed
    end
end)

Stats:AddSwitch("Set Speed", function(state)
    setSpeed = state

    if setSpeed then
        speedLoop = task.spawn(function()
            while setSpeed and task.wait(0.1) do
                local char = Players.LocalPlayer.Character
                if char then
                    local humanoid = char:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                        if remote then
                            remote:InvokeServer("changeSpeed", walkSpeedValue)
                        else
                            humanoid.WalkSpeed = walkSpeedValue
                        end
                    end
                end
            end
        end)
    else
        if speedLoop then
            task.cancel(speedLoop)
            speedLoop = nil
        end
        local char = Players.LocalPlayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                if remote then
                    remote:InvokeServer("changeSpeed", 16)
                else
                    humanoid.WalkSpeed = 16
                end
            end
        end
    end
end)

local jumpPowerValue = 50
local applyJumpPower = false
local jumpLoop = nil

Stats:AddTextBox("JumpPower", function(text)
    local jump = tonumber(text)
    if jump and jump >= 0 and jump <= 500 then
        jumpPowerValue = jump
    end
end)

Stats:AddSwitch("Apply JumpPower", function(state)
    applyJumpPower = state

    if applyJumpPower then
        local char = Players.LocalPlayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.UseJumpPower = true
            end
        end
        jumpLoop = task.spawn(function()
            while applyJumpPower and task.wait(0.1) do
                local char = Players.LocalPlayer.Character
                if char then
                    local humanoid = char:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                        if remote then
                            remote:InvokeServer("changeJumpPower", jumpPowerValue)
                        else
                            humanoid.JumpPower = jumpPowerValue
                        end
                    end
                end
            end
        end)
    else
        if jumpLoop then
            task.cancel(jumpLoop)
            jumpLoop = nil
        end
        local char = Players.LocalPlayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                if remote then
                    remote:InvokeServer("changeJumpPower", 50)
                else
                    humanoid.JumpPower = 50
                end
            end
        end
    end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(char)
    local humanoid = char:WaitForChild("Humanoid", 5)
    if humanoid then
        if setSpeed then
            local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
            if remote then
                remote:InvokeServer("changeSpeed", walkSpeedValue)
            else
                humanoid.WalkSpeed = walkSpeedValue
            end
        end
        if applyJumpPower then
            humanoid.UseJumpPower = true
            local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
            if remote then
                remote:InvokeServer("changeJumpPower", jumpPowerValue)
            else
                humanoid.JumpPower = jumpPowerValue
            end
        end
    end
end)

local sizeValue = 1
local setSize = false
local sizeLoop = nil

Stats:AddTextBox("Size", function(text)
    local size = tonumber(text)
    if size and size >= 1 and size <= 100 then
        sizeValue = size
    end
end)

Stats:AddSwitch("Set Sizes", function(state)
    setSize = state

    if setSize then
        sizeLoop = task.spawn(function()
            while setSize and task.wait(0.1) do
                local char = Players.LocalPlayer.Character
                if char then
                    local humanoid = char:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                        if remote then
                            remote:InvokeServer("changeSize", sizeValue)
                        else
                            humanoid.BodyDepthScale.Value = sizeValue
                            humanoid.BodyHeightScale.Value = sizeValue
                            humanoid.BodyWidthScale.Value = sizeValue
                            humanoid.HeadScale.Value = sizeValue
                        end
                    end
                end
            end
        end)
    else
        if sizeLoop then
            task.cancel(sizeLoop)
            sizeLoop = nil
        end
        local char = Players.LocalPlayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                if remote then
                    remote:InvokeServer("changeSize", 1)
                else
                    humanoid.BodyDepthScale.Value = 1
                    humanoid.BodyHeightScale.Value = 1
                    humanoid.BodyWidthScale.Value = 1
                    humanoid.HeadScale.Value = 1
                end
            end
        end
    end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(char)
    if setSize then
        task.spawn(function()
            local humanoid = char:WaitForChild("Humanoid", 5)
            if humanoid and setSize then
                local remote = ReplicatedStorage:FindFirstChild("rEvents") and ReplicatedStorage.rEvents:FindFirstChild("changeSpeedSizeRemote")
                if remote then
                    remote:InvokeServer("changeSize", sizeValue)
                else
                    humanoid.BodyDepthScale.Value = sizeValue
                    humanoid.BodyHeightScale.Value = sizeValue
                    humanoid.BodyWidthScale.Value = sizeValue
                    humanoid.HeadScale.Value = sizeValue
                end
            end
        end)
    end
end)

local switch = Stats:AddSwitch("Lock Position", function(Value)
    if Value then
        local currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        getgenv().posLock = game:GetService("RunService").Heartbeat:Connect(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPos
            end
        end)
    else
        if getgenv().posLock then
            getgenv().posLock:Disconnect()
            getgenv().posLock = nil
        end
    end
end)

local Killing = window:AddTab("KILLING")

local autoPunchNoAnim = false
Killing:AddSwitch("Auto Punch", function(state)
    autoPunchNoAnim = state

    while autoPunchNoAnim do
        local player = game.Players.LocalPlayer
        local playerName = player.Name
        local punchTool = player.Backpack:FindFirstChild("Punch") or game.Workspace:FindFirstChild(playerName):FindFirstChild("Punch")

        if punchTool then
            if punchTool.Parent ~= game.Workspace:FindFirstChild(playerName) then
                punchTool.Parent = game.Workspace:FindFirstChild(playerName)
            end

            player.muscleEvent:FireServer("punch", "rightHand")
            player.muscleEvent:FireServer("punch", "leftHand")
        else
            warn("Punch tool not found")
            autoPunchNoAnim = false
        end

        wait()
    end
end)

Killing:AddButton("Speed Punch", function()
    local player = game.Players.LocalPlayer
    local punch = player.Backpack:FindFirstChild("Punch")
    local character = game.Workspace:FindFirstChild(player.Name)
    local punch1

    if character then
        punch1 = character:FindFirstChild("Punch")
    end

    local attackTime = 0

    if punch and punch:FindFirstChild("attackTime") then
        punch.attackTime.Value = attackTime
    elseif punch1 and punch1:FindFirstChild("attackTime") then
        punch1.attackTime.Value = attackTime
    end
end)

Killing:AddButton("Normal Punch", function()
    local player = game.Players.LocalPlayer
    local punch = player.Backpack:FindFirstChild("Punch")
    local character = game.Workspace:FindFirstChild(player.Name)
    local punch1

    if character then
        punch1 = character:FindFirstChild("Punch")
    end

    local attackTime = .1

    if punch and punch:FindFirstChild("attackTime") then
        punch.attackTime.Value = attackTime
    elseif punch1 and punch1:FindFirstChild("attackTime") then
        punch1.attackTime.Value = attackTime
    end
end)

Killing:AddTextBox("Whitelist Player", function(text)
    local targetPlayer = game.Players:FindFirstChild(text)
    if targetPlayer then
        whitelist[targetPlayer.Name] = true
    end
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local whitelist = {}
local killMethod = "Teleport"

local function equipTool(toolName)
    local character = LocalPlayer.Character
    local backpack = LocalPlayer.Backpack
    if not (character and backpack) then return end
    local tool = backpack:FindFirstChild(toolName)
    if tool then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:EquipTool(tool)
        end
    end
end

local function autoKill(toggleState)
    _G.autoKillActive = toggleState
    if toggleState then
        equipTool("Punch")
        task.spawn(function()
            while _G.autoKillActive do
                local character = LocalPlayer.Character
                local leftHand = character and character:FindFirstChild("LeftHand")
                if not leftHand then
                    task.wait(0.3)
                    continue
                end
                local muscleEvent = LocalPlayer:FindFirstChild("muscleEvent")
                if muscleEvent then
                    muscleEvent:FireServer("punch", "rightHand")
                    muscleEvent:FireServer("punch", "leftHand")
                end
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and not table.find(whitelist, player.Name) then
                        local targetChar = player.Character
                        local head = targetChar and targetChar:FindFirstChild("Head")
                        if head then
                            if killMethod == "Teleport" then
                                head.CFrame = leftHand.CFrame
                                for _, part in pairs(targetChar:GetDescendants()) do
                                    if part:IsA("BasePart") and part.Name == "Handle" then
                                        part.CFrame = leftHand.CFrame
                                    end
                                end
                                local sweatPart = targetChar:FindFirstChild("sweatPart")
                                if sweatPart then
                                    sweatPart.CFrame = leftHand.CFrame
                                end
                            end
                        end
                    end
                end
                task.wait(0.3)
            end
        end)
    end
end

Killing:AddSwitch("Enable Auto Kill", function(state)
    autoKill(state)
end)

Killing:AddSwitch("Fastest Kill", function(state)
    _G.fasterAutoKill = state
    local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
    local punchEquipped = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
    if punch and punch:FindFirstChild("attackTime") then
        punch.attackTime.Value = state and 0 or 0.5
    elseif punchEquipped and punchEquipped:FindFirstChild("attackTime") then
        punchEquipped.attackTime.Value = state and 0 or 0.5
    end
end)

local targetPlayerName = nil

Killing:AddTextBox("Player Username", function(text)
    targetPlayerName = text
end)

local killTarget = false
Killing:AddSwitch("Auto Kill Player", function(bool)
    killTarget = bool
    while killTarget do
        local player = game.Players.LocalPlayer
        local target = game.Players:FindFirstChild(targetPlayerName)

        if target and target ~= player then
            local targetChar = target.Character
            local rootPart = targetChar and targetChar:FindFirstChild("HumanoidRootPart")

            if rootPart then
                local rightHand = player.Character and player.Character:FindFirstChild("RightHand")
                local leftHand = player.Character and player.Character:FindFirstChild("LeftHand")

                if rightHand and leftHand then
                    firetouchinterest(rightHand, rootPart, 1)
                    firetouchinterest(leftHand, rootPart, 1)
                    firetouchinterest(rightHand, rootPart, 0)
                    firetouchinterest(leftHand, rootPart, 0)
                end
            end
        end

        wait(0.1)
    end
end)

local switch = Killing:AddSwitch("View Player", function(Value)
end)

Killing:AddLabel("-------------ADDITIONAL STUFF------------")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local currentRadius = 75

local function gettool()
    local character = LocalPlayer.Character
    local backpack = LocalPlayer.Backpack
    if not (character and backpack) then return false end
    local tool = backpack:FindFirstChild("Punch")
    if not tool then return false end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:EquipTool(tool)
        return true
    end
    return false
end

Killing:AddTextBox("Matrix Size", function(text)
    local value = tonumber(text)
    if value then
        currentRadius = math.clamp(value, 1, 150)
    end
end)

Killing:AddSwitch("Matrix Kill Aura", function(state)
    getgenv().killNearby = state
    local radiusVisual = Instance.new("Part")
    radiusVisual.Anchored = true
    radiusVisual.CanCollide = false
    radiusVisual.Transparency = 0.8
    radiusVisual.Material = Enum.Material.ForceField
    radiusVisual.Color = Color3.fromRGB(0, 0, 25)
    radiusVisual.Size = Vector3.new(1, 0.1, 1)
    task.spawn(function()
        while getgenv().killNearby do
            local myCharacter = LocalPlayer.Character
            local myRoot = myCharacter and myCharacter:FindFirstChild("HumanoidRootPart")
            local myLeftHand = myCharacter and myCharacter:FindFirstChild("LeftHand")
            if myRoot and myLeftHand then
                radiusVisual.Parent = workspace
                radiusVisual.Size = Vector3.new(currentRadius * 2, 0.1, currentRadius * 2)
                radiusVisual.CFrame = myRoot.CFrame * CFrame.new(0, -2, 0)
                gettool()
                local muscleEvent = LocalPlayer:FindFirstChild("muscleEvent")
                if muscleEvent then
                    muscleEvent:FireServer("punch", "rightHand")
                    muscleEvent:FireServer("punch", "leftHand")
                end
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer then
                        local char = player.Character
                        local root = char and char:FindFirstChild("HumanoidRootPart")
                        local head = char and char:FindFirstChild("Head")
                        if root and head then
                            local distance = (root.Position - myRoot.Position).Magnitude
                            if distance <= currentRadius then
                                head.CFrame = myLeftHand.CFrame
                                for _, part in pairs(char:GetDescendants()) do
                                    if part:IsA("BasePart") and part.Name == "Handle" then
                                        part.CFrame = myLeftHand.CFrame
                                    end
                                end
                                local sweatPart = char:FindFirstChild("sweatPart")
                                if sweatPart then
                                    sweatPart.CFrame = myLeftHand.CFrame
                                end
                            end
                        end
                    end
                end
            end
            task.wait(0.3)
        end
        radiusVisual:Destroy()
    end)
end)

getgenv().killNearby = false

local Teleport = window:AddTab("TELEPORT")

Teleport:AddButton("Tiny Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31.8626194, 6.0588026, 2087.88672, -0.999396682, -9.72631931e-09, 0.034730725, -6.63278898e-09, 1, 8.91870684e-08, -0.034730725, 8.8902901e-08, -0.999396682)
end)

Teleport:AddButton("Starter Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(226.252472, 8.1526947, 219.366516, -0.00880406145, 3.58277887e-08, -0.999961257, -4.41204939e-08, 1, 3.62176351e-08, 0.999961257, 4.44376482e-08, -0.00880406145)
end)

Teleport:AddButton("Beach", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-365.798309, 44.5082932, -501.618591, 0.00878552441, -6.19950713e-09, 0.999961436, -4.37451603e-10, 1, 6.20358964e-09, -0.999961436, -4.91936492e-10, 0.00878552441)
end)

Teleport:AddButton("Frost Gym", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2933.47998, 29.6399612, -579.946045, 0.0345239155, -1.03010173e-07, 0.999403894, 1.03015294e-08, 1, 1.02715752e-07, -0.999403894, 6.74923806e-09, 0.0345239155)
end)

Teleport:AddButton("Mythical Gym", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2659.50635, 21.6095238, 934.690613, 0.999999881, 4.98906161e-08, 0.000502891606, -4.98585742e-08, 1, -6.37288338e-08, -0.000502891606, 6.37037516e-08, 0.999999881)
end)

Teleport:AddButton("Eternal Gym", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7176.19141, 45.394104, -1106.31421, 0.971191287, -2.38377185e-09, 0.238301158, 1.41694778e-09, 1, 4.22844915e-09, -0.238301158, -3.76897269e-09, 0.971191287)
end)

Teleport:AddButton("Legend Gym", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4446.91699, 1004.46698, -3983.76074, -0.999961317, -1.97616366e-08, 0.00879266672, -1.93830077e-08, 1, 4.31365149e-08, -0.00879266672, 4.29661292e-08, -0.999961317)
end)

Teleport:AddButton("Muscle King", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8626, 15, -5730)
end)

Teleport:AddButton("Jungle Gym", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8137, 28, 2820)
end)

local autoTeleportLoop = nil

Rebirth:AddSwitch("Auto Muscle King", function(state)
    if state then
        autoTeleportLoop = task.spawn(function()
            while task.wait(0) do
                local player = game.Players.LocalPlayer
                if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(-8626, 15, -5730)
                end
            end
        end)
    else
        if autoTeleportLoop then
            task.cancel(autoTeleportLoop)
            autoTeleportLoop = nil
        end
    end
end)

local Crystal = window:AddTab("Crystal")

local selectedCrystal = "Galaxy Oracle Crystal"
local autoCrystalRunning = false

local dropdown = Crystal:AddDropdown("Select Crystal", function(text)
    selectedCrystal = text
end)

local crystalNames = {
    "Blue Crystal", "Green Crystal", "Frozen Crystal", "Mythical Crystal",
    "Inferno Crystal", "Legends Crystal", "Muscle Elite Crystal",
    "Galaxy Oracle Crystal", "Sky Eclipse Crystal", "Jungle Crystal"
}

for _, name in ipairs(crystalNames) do
    dropdown:Add(name)
end

local function autoOpenCrystal()
    while autoCrystalRunning do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer("openCrystal", selectedCrystal)
        wait(0.1)
    end
end

local switch = Crystal:AddSwitch("Auto Crystal", function(state)
    autoCrystalRunning = state

    if autoCrystalRunning then
        task.spawn(autoOpenCrystal)
    end
end)

")()