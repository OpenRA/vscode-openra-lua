-- This is an automatically generated Lua API definition generated for {DEV_VERSION} of OpenRA.
-- https://wiki.openra.net/Utility was used with the --emmy-lua-api parameter.
-- See https://docs.openra.net/en/bleed/lua/ for human readable documentation.

--- This file only lists function "signatures", causing Lua Diagnostics errors: "Annotations specify that a return value is required here."
--- and Lua Diagnostics warnings "Unused local" for the functions' parameters.
--- Disable those specific errors for the entire file.
---@diagnostic disable: missing-return
---@diagnostic disable: unused-local


--- This function is triggered once, after the map is loaded.
function WorldLoaded() end

--- This function will hit every game tick which by default is every 40 ms.
function Tick() end


--- Base engine types.

---@class cpos
---@field X integer
---@field Y integer
---@field Layer integer
---@operator add(cvec): cpos
---@operator sub(cvec): cpos
---@operator sub(cpos): cvec

---@class wpos
---@field X integer
---@field Y integer
---@field Z integer
---@operator add(wvec): wpos
---@operator sub(wvec): wpos
---@operator sub(wpos): wvec

---@class wangle
---@field Angle integer
---@operator add(wangle): wangle
---@operator sub(wangle): wangle

---@class wdist
---@field Length integer
---@operator add(wdist): wdist
---@operator sub(wdist): wdist
---@operator unm(wdist): wdist
---@operator mul(integer): wdist
---@operator div(integer): wdist

---@class wvec
---@field X integer
---@field Y integer
---@field Z integer
---@field Facing wangle
---@operator add(wvec): wvec
---@operator sub(wvec): wvec
---@operator unm(wvec): wvec
---@operator mul(integer): wvec
---@operator div(integer): wvec

---@class cvec
---@field X integer
---@field Y integer
---@field Length integer
---@operator add(cvec): cvec
---@operator sub(cvec): cvec
---@operator unm(cvec): cvec
---@operator mul(integer): cvec
---@operator div(integer): cvec

---@class color
local color = { };


---A list of ActorInit implementations that can be used by Lua scripts.
---@class initTable
---@field Location cpos?
---@field Owner player | string
---@field Facing wangle?
---@field CreationActivityDelay integer?
---@field SubCell SubCell?
---@field CenterPosition wpos?
---@field Faction string?
---@field EffectiveOwner player?
---@field Stance UnitStance?
---@field FreeActor boolean?
---@field ParentActor actor?
---@field LineBuildDirection LineBuildDirection?
---@field LineBuildParent actor[]?
---@field Cargo string[]?
---@field DeployState DeployState?
---@field Experience integer?
---@field Health integer?
---@field HuskSpeed integer?
---@field Plug string?
---@field RallyPoint cpos[]?
---@field ProductionSpawnLocation cpos?
---@field Region cvec[]?
---@field ScriptTags string[]?
---@field TurretFacing wangle?
---@field BodyAnimationFrame integer?


---@enum SubCell
SubCell = {
    FullCell = 0,
    First = 1,
    Any = 254,
    Invalid = 255,
}

---@enum UnitStance
UnitStance = {
    HoldFire = 0,
    ReturnFire = 1,
    Defend = 2,
    AttackAnything = 3,
}

---@enum LineBuildDirection
LineBuildDirection = {
    Unset = 0,
    X = 1,
    Y = 2,
}

---@enum DeployState
DeployState = {
    Undeployed = 0,
    Deploying = 1,
    Deployed = 2,
    Undeploying = 3,
}



---Global variable provided by the game scripting engine.
Actor = {

    --- Returns the build time (in ticks) of the requested unit type.
    --- An optional second value can be used to exactly specify the producing queue type.
    ---@param type string
    ---@param queue? string
    ---@return integer
    BuildTime = function(type, queue) end;

    --- Returns the cost of the requested unit given by the Valued trait.
    ---@param type string
    ---@return integer
    Cost = function(type) end;

    --- Create a new actor. initTable specifies a list of key-value pairs that defines the initial parameters for the actor's traits.
    ---@param type string
    ---@param addToWorld boolean
    ---@param initTable initTable
    ---@return actor
    Create = function(type, addToWorld, initTable) end;

    --- Returns the cruise altitude of the requested unit type (zero if it is ground-based).
    ---@param type string
    ---@return integer
    CruiseAltitude = function(type) end;
}

---Global variable provided by the game scripting engine.
Angle = {

    --- 768 units = 90 degrees
    ---@type wangle
    East = nil;

    --- Create an arbitrary angle. 1024 units = 360 degrees. North is 0. Units increase *counter* clockwise. Comparison given to degrees increasing clockwise.
    ---@param a integer
    ---@return wangle
    New = function(a) end;

    --- 0/1024 units = 0/360 degrees
    ---@type wangle
    North = nil;

    --- 896 units = 45 degrees
    ---@type wangle
    NorthEast = nil;

    --- 128 units = 315 degrees
    ---@type wangle
    NorthWest = nil;

    --- 512 units = 180 degrees
    ---@type wangle
    South = nil;

    --- 640 units = 135 degrees
    ---@type wangle
    SouthEast = nil;

    --- 384 units = 225 degrees
    ---@type wangle
    SouthWest = nil;

    --- 256 units = 270 degrees
    ---@type wangle
    West = nil;
}

---Global variable provided by the game scripting engine.
Beacon = {

    --- Creates a new beacon that stays for the specified time at the specified WPos. Does not remove player set beacons, nor gets removed by placing them. Requires the 'PlaceBeacon' trait on the player actor.
    ---@param owner player
    ---@param position wpos
    ---@param duration? integer
    ---@param showRadarPings? boolean
    New = function(owner, position, duration, showRadarPings) end;
}

---Global variable provided by the game scripting engine.
Camera = {

    --- The center of the visible viewport.
    ---@type wpos
    Position = nil;
}

---Global variable provided by the game scripting engine.
HSLColor = {

    --- FromHex("00FFFF")
    ---@type color
    Aqua = nil;

    --- FromHex("000000")
    ---@type color
    Black = nil;

    --- FromHex("0000FF")
    ---@type color
    Blue = nil;

    --- FromHex("A52A2A")
    ---@type color
    Brown = nil;

    --- FromHex("00FFFF")
    ---@type color
    Cyan = nil;

    --- FromHex("00008B")
    ---@type color
    DarkBlue = nil;

    --- FromHex("008B8B")
    ---@type color
    DarkCyan = nil;

    --- FromHex("A9A9A9")
    ---@type color
    DarkGray = nil;

    --- FromHex("006400")
    ---@type color
    DarkGreen = nil;

    --- FromHex("FF8C00")
    ---@type color
    DarkOrange = nil;

    --- FromHex("8B0000")
    ---@type color
    DarkRed = nil;

    --- Create a new color with the specified red/green/blue/[alpha] hex string (rrggbb[aa]).
    ---@param value string
    ---@return color
    FromHex = function(value) end;

    --- Create a new color with the specified red/green/blue/[alpha] values.
    ---@param red integer
    ---@param green integer
    ---@param blue integer
    ---@param alpha? integer
    ---@return color
    FromRGB = function(red, green, blue, alpha) end;

    --- FromHex("FF00FF")
    ---@type color
    Fuchsia = nil;

    --- FromHex("FFD700")
    ---@type color
    Gold = nil;

    --- FromHex("808080")
    ---@type color
    Gray = nil;

    --- FromHex("008000")
    ---@type color
    Green = nil;

    --- FromHex("7CFC00")
    ---@type color
    LawnGreen = nil;

    --- FromHex("ADD8E6")
    ---@type color
    LightBlue = nil;

    --- FromHex("E0FFFF")
    ---@type color
    LightCyan = nil;

    --- FromHex("D3D3D3")
    ---@type color
    LightGray = nil;

    --- FromHex("90EE90")
    ---@type color
    LightGreen = nil;

    --- FromHex("FFFFE0")
    ---@type color
    LightYellow = nil;

    --- FromHex("00FF00")
    ---@type color
    Lime = nil;

    --- FromHex("32CD32")
    ---@type color
    LimeGreen = nil;

    --- FromHex("FF00FF")
    ---@type color
    Magenta = nil;

    --- FromHex("800000")
    ---@type color
    Maroon = nil;

    --- FromHex("000080")
    ---@type color
    Navy = nil;

    --- Create a new color with the specified hue/saturation/luminosity.
    ---@param hue integer
    ---@param saturation integer
    ---@param luminosity integer
    ---@return color
    New = function(hue, saturation, luminosity) end;

    --- FromHex("808000")
    ---@type color
    Olive = nil;

    --- FromHex("FFA500")
    ---@type color
    Orange = nil;

    --- FromHex("FF4500")
    ---@type color
    OrangeRed = nil;

    --- FromHex("800080")
    ---@type color
    Purple = nil;

    --- FromHex("FF0000")
    ---@type color
    Red = nil;

    --- FromHex("FA8072")
    ---@type color
    Salmon = nil;

    --- FromHex("87CEEB")
    ---@type color
    SkyBlue = nil;

    --- FromHex("008080")
    ---@type color
    Teal = nil;

    --- FromHex("FFFFFF")
    ---@type color
    White = nil;

    --- FromHex("FFFF00")
    ---@type color
    Yellow = nil;
}

---Global variable provided by the game scripting engine.
CPos = {

    --- Create a new CPos with the specified coordinates on the ground (layer = 0).
    ---@param x integer
    ---@param y integer
    ---@return cpos
    New = function(x, y) end;

    --- Create a new CPos with the specified coordinates on the specified layer. The ground is layer 0, other layers have a unique ID. Examples include tunnels, underground, and elevated bridges.
    ---@param x integer
    ---@param y integer
    ---@param layer integer
    ---@return cpos
    NewWithLayer = function(x, y, layer) end;

    --- The cell coordinate origin.
    ---@type cpos
    Zero = nil;
}

---Global variable provided by the game scripting engine.
CVec = {

    --- Create a new CVec with the specified coordinates.
    ---@param x integer
    ---@param y integer
    ---@return cvec
    New = function(x, y) end;

    --- The cell zero-vector.
    ---@type cvec
    Zero = nil;
}

---Global variable provided by the game scripting engine.
DateTime = {

    --- Get the current day (1-31).
    ---@type integer
    CurrentDay = nil;

    --- Get the current hour (0-23).
    ---@type integer
    CurrentHour = nil;

    --- Get the current minute (0-59).
    ---@type integer
    CurrentMinute = nil;

    --- Get the current month (1-12).
    ---@type integer
    CurrentMonth = nil;

    --- Get the current second (0-59).
    ---@type integer
    CurrentSecond = nil;

    --- Get the current year (1-9999).
    ---@type integer
    CurrentYear = nil;

    --- Get the current game time (in ticks).
    ---@type integer
    GameTime = nil;

    --- True on the 31st of October.
    ---@deprecated Use CurrentMonth and CurrentDay instead.
    ---@type boolean
    IsHalloween = nil;

    --- Converts the number of minutes into game time (ticks).
    ---@param minutes integer
    ---@return integer
    Minutes = function(minutes) end;

    --- Converts the number of seconds into game time (ticks).
    ---@param seconds integer
    ---@return integer
    Seconds = function(seconds) end;

    --- Return or set the time limit (in ticks). When setting, the time limit will count from now. Setting the time limit to 0 will disable it.
    ---@type integer
    TimeLimit = nil;

    --- The notification string used for custom time limit warnings. See the TimeLimitManager trait documentation for details.
    ---@type string
    TimeLimitNotification = nil;
}

---Global variable provided by the game scripting engine.
Lighting = {

    --- Strength of the lighting (0-1).
    ---@type number
    Ambient = nil;

    --- Blue component (0-1).
    ---@type number
    Blue = nil;

    --- Controls the `FlashPostProcessEffect` trait.
    ---@param type? string
    ---@param ticks? integer
    Flash = function(type, ticks) end;

    --- Green component (0-1).
    ---@type number
    Green = nil;

    --- Red component (0-1).
    ---@type number
    Red = nil;
}

---Global variable provided by the game scripting engine.
Map = {

    --- Returns a table of all actors within the requested rectangle, filtered using the specified function.
    ---@param topLeft wpos
    ---@param bottomRight wpos
    ---@param filter? fun(a: actor):boolean
    ---@return actor[]
    ActorsInBox = function(topLeft, bottomRight, filter) end;

    --- Returns a table of all actors within the requested region, filtered using the specified function.
    ---@param location wpos
    ---@param radius wdist
    ---@param filter? fun(a: actor):boolean
    ---@return actor[]
    ActorsInCircle = function(location, radius, filter) end;

    --- Returns a table of all the actors that are currently on the map/in the world.
    ---@type actor[]
    ActorsInWorld = nil;

    --- Returns a table of all actors tagged with the given string.
    ---@param tag string
    ---@return actor[]
    ActorsWithTag = function(tag) end;

    --- Returns the location of the bottom-right corner of the map (assuming zero terrain height).
    ---@deprecated This function will be removed in future versions. Use Map.ActorsInWorld instead.
    ---@type wpos
    BottomRight = nil;

    --- Returns the center of a cell in world coordinates.
    ---@param cell cpos
    ---@return wpos
    CenterOfCell = function(cell) end;

    --- Returns the closest cell on the visible border of the map from the given cell.
    ---@param givenCell cpos
    ---@return cpos
    ClosestEdgeCell = function(givenCell) end;

    --- Returns the first cell on the visible border of the map from the given cell,
    --- matching the filter function called as function(cell: cpos):boolean.
    ---@param givenCell cpos
    ---@param filter fun(cell: cpos):boolean
    ---@return cpos
    ClosestMatchingEdgeCell = function(givenCell, filter) end;

    --- Returns true if actor was originally specified in the map file.
    ---@param actor actor
    ---@return boolean
    IsNamedActor = function(actor) end;

    --- Returns true if this is a shellmap and the player has paused animations.
    ---@type boolean
    IsPausedShellmap = nil;

    --- Returns true if there is only one human player.
    ---@type boolean
    IsSinglePlayer = nil;

    --- Returns the value of a `ScriptLobbyDropdown` selected in the game lobby.
    ---@param id string
    ---@return string
    LobbyOption = function(id) end;

    --- Returns the value of a `ScriptLobbyDropdown` selected in the game lobby or fallback to a default value.
    ---@param id string
    ---@param fallback string
    ---@return string
    LobbyOptionOrDefault = function(id, fallback) end;

    --- Returns the actor that was specified with a given name in the map file (or nil, if the actor is dead or not found).
    ---@param actorName string
    ---@return actor
    NamedActor = function(actorName) end;

    --- Returns a table of all the actors that were specified in the map file.
    ---@type actor[]
    NamedActors = nil;

    --- Returns a random cell inside the visible region of the map.
    ---@return cpos
    RandomCell = function() end;

    --- Returns a random cell on the visible border of the map.
    ---@return cpos
    RandomEdgeCell = function() end;

    --- Returns the type of the terrain at the target cell.
    ---@param cell cpos
    ---@return string
    TerrainType = function(cell) end;

    --- Returns the location of the top-left corner of the map (assuming zero terrain height).
    ---@deprecated This function will be removed in future versions. Use Map.ActorsInWorld instead.
    ---@type wpos
    TopLeft = nil;
}

---Global variable provided by the game scripting engine.
Media = {

    --- Displays a debug message to the player, if "Show Map Debug Messages" is checked in the settings.
    ---@param format string
    Debug = function(format) end;

    --- Display a text message to all players.
    ---@param text string
    ---@param prefix? string
    ---@param color? color?
    DisplayMessage = function(text, prefix, color) end;

    --- Display a text message only to this player.
    ---@param player player
    ---@param text string
    ---@param prefix? string
    ---@param color? color?
    DisplayMessageToPlayer = function(player, text, prefix, color) end;

    --- Display a system message to the player. If 'prefix' is nil the default system prefix is used.
    ---@param text string
    ---@param prefix? string
    DisplaySystemMessage = function(text, prefix) end;

    --- Display a text message at the specified location.
    ---@param text string
    ---@param position wpos
    ---@param duration? integer
    ---@param color? color?
    FloatingText = function(text, position, duration, color) end;

    --- Play a video fullscreen. File name has to include the file extension.
    ---@param videoFileName string
    ---@param onPlayComplete? fun()
    PlayMovieFullscreen = function(videoFileName, onPlayComplete) end;

    --- Play a video in the radar window. File name has to include the file extension.
    ---@param videoFileName string
    ---@param onPlayComplete? fun()
    PlayMovieInRadar = function(videoFileName, onPlayComplete) end;

    --- Play track defined in music.yaml or map.yaml, or keep track empty for playing a random song.
    ---@param track? string
    ---@param onPlayComplete? fun()
    PlayMusic = function(track, onPlayComplete) end;

    --- Play a sound file
    ---@param file string
    PlaySound = function(file) end;

    --- Play a sound listed in notifications.yaml
    ---@param player player
    ---@param notification string
    PlaySoundNotification = function(player, notification) end;

    --- Play an announcer voice listed in notifications.yaml
    ---@param player player
    ---@param notification string
    PlaySpeechNotification = function(player, notification) end;

    --- Play track defined in music.yaml or map.yaml as background music. If music is already playing use Media.StopMusic() to stop it and the background music will start automatically. Keep the track empty to disable background music.
    ---@param track? string
    SetBackgroundMusic = function(track) end;

    --- Stop the current song.
    StopMusic = function() end;
}

---Global variable provided by the game scripting engine.
Player = {

    --- Returns the player with the specified internal name, or nil if a match is not found.
    ---@param name string
    ---@return player
    GetPlayer = function(name) end;

    --- Returns a table of players filtered by the specified function.
    ---@param filter fun(p: player):boolean
    ---@return player[]
    GetPlayers = function(filter) end;
}

---Global variable provided by the game scripting engine.
Radar = {

    --- Creates a new radar ping that stays for the specified time at the specified WPos.
    ---@param player player
    ---@param position wpos
    ---@param color color
    ---@param duration? integer
    Ping = function(player, position, color, duration) end;
}

---Global variable provided by the game scripting engine.
Reinforcements = {

    --- Send reinforcements consisting of multiple units. Supports ground-based, naval and air units. The first member of the entryPath array will be the units' spawnpoint, while the last one will be their destination. If actionFunc is given, it will be executed once a unit has reached its destination. actionFunc will be called as actionFunc(a: actor). Returns a table containing the deployed units.
    ---@param owner player
    ---@param actorTypes string[]
    ---@param entryPath cpos[]
    ---@param interval? integer
    ---@param actionFunc? fun(a: actor)
    ---@return actor[]
    Reinforce = function(owner, actorTypes, entryPath, interval, actionFunc) end;

    --- Send reinforcements in a transport. A transport can be a ground unit (APC etc.), ships and aircraft. The first member of the entryPath array will be the spawnpoint for the transport, while the last one will be its destination. The last member of the exitPath array is be the place where the transport will be removed from the game. When the transport has reached the destination, it will unload its cargo unless a custom actionFunc has been supplied. Afterwards, the transport will follow the exitPath and leave the map, unless a custom exitFunc has been supplied. actionFunc will be called as actionFunc(transport: actor, cargo: actor[]). exitFunc will be called as exitFunc(transport: actor). dropRange determines how many cells away the transport will try to land if the actual destination is blocked (if the transport is an aircraft). Returns a table in which the first value is the transport, and the second a table containing the deployed units.
    ---@param owner player
    ---@param actorType string
    ---@param cargoTypes string[]|nil
    ---@param entryPath cpos[]
    ---@param exitPath? cpos[]
    ---@param actionFunc? fun(transport: actor, cargo: actor[])
    ---@param exitFunc? fun(transport: actor)
    ---@param dropRange? integer
    ---@return { [1]: actor, [2]: actor[] }
    ReinforceWithTransport = function(owner, actorType, cargoTypes, entryPath, exitPath, actionFunc, exitFunc, dropRange) end;
}

---Global variable provided by the game scripting engine.
Trigger = {

    --- Call a function after a specified delay. The callback function will be called as func().
    ---@param delay integer
    ---@param func fun()
    AfterDelay = function(delay, func) end;

    --- Removes the specified trigger from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
    ---@param actor actor
    ---@param triggerName string
    Clear = function(actor, triggerName) end;

    --- Removes all triggers from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
    ---@param actor actor
    ClearAll = function(actor) end;

    --- Call a function when this actor is added to the world. The callback function will be called as func(self: actor).
    ---@param actor actor
    ---@param func fun(self: actor)
    OnAddedToWorld = function(actor, func) end;

    --- Call a function when all of the actors in a group are killed. The callback function will be called as func().
    ---@param actors actor[]
    ---@param func fun()
    OnAllKilled = function(actors, func) end;

    --- Call a function when all of the actors in a group have been killed or captured. This trigger is only called once. The callback function will be called as func().
    ---@param actors actor[]
    ---@param func fun()
    OnAllKilledOrCaptured = function(actors, func) end;

    --- Call a function when all of the actors in a group have been removed from the world. The callback function will be called as func().
    ---@param actors actor[]
    ---@param func fun()
    OnAllRemovedFromWorld = function(actors, func) end;

    --- Call a function when one of the actors in a group is killed. This trigger is only called once. The callback function will be called as func(killed: actor).
    ---@param actors actor[]
    ---@param func fun(killed: actor)
    OnAnyKilled = function(actors, func) end;

    --- Call a function when any actor produces another actor. The callback function will be called as func(producer: actor, produced: actor, productionType: string).
    ---@param func fun(producer: actor, produced: actor, productionType: string)
    OnAnyProduction = function(func) end;

    --- Call a function when this actor is captured. The callback function will be called as func(self: actor, captor: actor, oldOwner: player, newOwner: player).
    ---@param actor actor
    ---@param func fun(self: actor, captor: actor, oldOwner: player, newOwner: player)
    OnCapture = function(actor, func) end;

    --- Call a function when the actor is damaged. Repairs or other negative damage can activate this trigger. The callback function will be called as func(self: actor, attacker: actor, damage: integer).
    ---@param actor actor
    ---@param func fun(self: actor, attacker: actor, damage: integer)
    OnDamaged = function(actor, func) end;

    --- Call a function when this actor is discovered by an enemy or a player with a Neutral stance. The callback function will be called as func(discovered: actor, discoverer: player). The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
    ---@param actor actor
    ---@param func fun(discovered: actor, discoverer: player)
    OnDiscovered = function(actor, func) end;

    --- Call a function when a ground-based actor enters this cell footprint. Returns the trigger ID for later removal using RemoveFootprintTrigger(id: integer). The callback function will be called as func(a: actor, id: integer).
    ---@param cells cpos[]
    ---@param func fun(a: actor, id: integer)
    ---@return integer
    OnEnteredFootprint = function(cells, func) end;

    --- Call a function when an actor enters this range. Returns the trigger ID for later removal using RemoveProximityTrigger(id: integer). The callback function will be called as func(a: actor, id: integer).
    ---@param pos wpos
    ---@param range wdist
    ---@param func fun(a: actor, id: integer)
    ---@return integer
    OnEnteredProximityTrigger = function(pos, range, func) end;

    --- Call a function when a ground-based actor leaves this cell footprint. Returns the trigger ID for later removal using RemoveFootprintTrigger(id: integer). The callback function will be called as func(a: actor, id: integer).
    ---@param cells cpos[]
    ---@param func fun(a: actor, id: integer)
    ---@return integer
    OnExitedFootprint = function(cells, func) end;

    --- Call a function when an actor leaves this range. Returns the trigger ID for later removal using RemoveProximityTrigger(id: integer). The callback function will be called as func(a: actor, id: integer).
    ---@param pos wpos
    ---@param range wdist
    ---@param func fun(a: actor, id: integer)
    ---@return integer
    OnExitedProximityTrigger = function(pos, range, func) end;

    --- Call a function each tick that the actor is idle. The callback function will be called as func(self: actor).
    ---@param actor actor
    ---@param func fun(self: actor)
    OnIdle = function(actor, func) end;

    --- Call a function when this actor is infiltrated. The callback function will be called as func(self: actor, infiltrator: actor).
    ---@param actor actor
    ---@param func fun(self: actor, infiltrator: actor)
    OnInfiltrated = function(actor, func) end;

    --- Call a function when the actor is killed. The callback function will be called as func(self: actor, killer: actor).
    ---@param actor actor
    ---@param func fun(self: actor, killer: actor)
    OnKilled = function(actor, func) end;

    --- Call a function when this actor is killed or captured. This trigger is only called once. The callback function will be called as func().
    ---@param actor actor
    ---@param func fun()
    OnKilledOrCaptured = function(actor, func) end;

    --- Call a function when this player is assigned a new objective. The callback function will be called as func(p: player, objectiveId: integer).
    ---@param player player
    ---@param func fun(p: player, objectiveId: integer)
    OnObjectiveAdded = function(player, func) end;

    --- Call a function when this player completes an objective. The callback function will be called as func(p: player, objectiveId: integer).
    ---@param player player
    ---@param func fun(p: player, objectiveId: integer)
    OnObjectiveCompleted = function(player, func) end;

    --- Call a function when this player fails an objective. The callback function will be called as func(p: player, objectiveId: integer).
    ---@param player player
    ---@param func fun(p: player, objectiveId: integer)
    OnObjectiveFailed = function(player, func) end;

    --- Call a function for each passenger when it enters a transport. The callback function will be called as func(transport: actor, passenger: actor).
    ---@param actor actor
    ---@param func fun(transport: actor, passenger: actor)
    OnPassengerEntered = function(actor, func) end;

    --- Call a function for each passenger when it exits a transport. The callback function will be called as func(transport: actor, passenger: actor).
    ---@param actor actor
    ---@param func fun(transport: actor, passenger: actor)
    OnPassengerExited = function(actor, func) end;

    --- Call a function when this player is discovered by an enemy or neutral player. The callback function will be called as func(discovered: player, discoverer: player, discoveredActor: actor).The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
    ---@param discovered player
    ---@param func fun(discovered: player, discoverer: player, discoveredActor: actor)
    OnPlayerDiscovered = function(discovered, func) end;

    --- Call a function when this player fails any primary objective. The callback function will be called as func(p: player).
    ---@param player player
    ---@param func fun(p: player)
    OnPlayerLost = function(player, func) end;

    --- Call a function when this player completes all primary objectives. The callback function will be called as func(p: player).
    ---@param player player
    ---@param func fun(p: player)
    OnPlayerWon = function(player, func) end;

    --- Call a function when this actor produces another actor. The callback function will be called as func(producer: actor, produced: actor).
    ---@param actor actor
    ---@param func fun(producer: actor, produced: actor)
    OnProduction = function(actor, func) end;

    --- Call a function when this actor is removed from the world. The callback function will be called as func(self: actor).
    ---@param actor actor
    ---@param func fun(self: actor)
    OnRemovedFromWorld = function(actor, func) end;

    --- Call a function when this actor is sold. The callback function will be called as func(self: actor).
    ---@param actor actor
    ---@param func fun(self: actor)
    OnSold = function(actor, func) end;

    --- Call a function when the game timer expires. The callback function will be called as func().
    ---@param func fun()
    OnTimerExpired = function(func) end;

    --- Removes a previously created footprint trigger.
    ---@param id integer
    RemoveFootprintTrigger = function(id) end;

    --- Removes a previously created proximity trigger.
    ---@param id integer
    RemoveProximityTrigger = function(id) end;
}

---Global variable provided by the game scripting engine.
UserInterface = {

    --- Formats a language string for a given string key defined in the language files (*.ftl). Args can be passed to be substituted into the resulting message.
    ---@param key string
    ---@param args? { string: any }
    ---@return string
    GetFluentMessage = function(key, args) end;

    --- Displays a text message at the top center of the screen.
    ---@param text string
    ---@param color? color?
    SetMissionText = function(text, color) end;
}

---Global variable provided by the game scripting engine.
Utils = {

    --- Returns true if func returns true for all elements in a collection.
    ---@generic T
    ---@param collection T[]
    ---@param func fun(item: T):boolean?
    ---@return boolean
    All = function(collection, func) end;

    --- Returns true if func returns true for any element in a collection.
    ---@generic T
    ---@param collection T[]
    ---@param func fun(item: T):boolean?
    ---@return boolean
    Any = function(collection, func) end;

    --- Concatenates two Lua tables into a single table.
    ---@generic T
    ---@param firstCollection T[]
    ---@param secondCollection T[]
    ---@return T[]
    Concat = function(firstCollection, secondCollection) end;

    --- Calls a function on every element in a collection.
    ---@generic T
    ---@param collection T[]
    ---@param func fun(item: T)
    Do = function(collection, func) end;

    --- Expands the given footprint one step along the coordinate axes, and (if requested) diagonals.
    ---@param footprint cpos[]
    ---@param allowDiagonal boolean
    ---@return cpos[]
    ExpandFootprint = function(footprint, allowDiagonal) end;

    --- Returns the ticks formatted to HH:MM:SS.
    ---@param ticks integer
    ---@param leadingMinuteZero? boolean
    ---@return string
    FormatTime = function(ticks, leadingMinuteZero) end;

    --- Returns a random value from a collection.
    ---@generic T
    ---@param collection T[]
    ---@return T
    Random = function(collection) end;

    --- Returns a random integer x in the range low &lt;= x &lt; high.
    ---@param low integer
    ---@param high integer
    ---@return integer
    RandomInteger = function(low, high) end;

    --- Returns the collection in a random order.
    ---@generic T
    ---@param collection T[]
    ---@return T[]
    Shuffle = function(collection) end;

    --- Skips over the first numElements members of a table and return the rest.
    ---@generic T
    ---@param table T[]
    ---@param numElements integer
    ---@return T[]
    Skip = function(table, numElements) end;

    --- Returns the first n values from a collection.
    ---@generic T
    ---@param n integer
    ---@param source T[]
    ---@return T[]
    Take = function(n, source) end;

    --- Returns the original collection filtered with the func.
    ---@generic T
    ---@param collection T[]
    ---@param func fun(item: T):boolean?
    ---@return T[]
    Where = function(collection, func) end;
}

---Global variable provided by the game scripting engine.
WDist = {

    --- Create a new WDist by cell distance.
    ---@param numCells integer
    ---@return wdist
    FromCells = function(numCells) end;

    --- Create a new WDist.
    ---@param r integer
    ---@return wdist
    New = function(r) end;
}

---Global variable provided by the game scripting engine.
WPos = {

    --- Create a new WPos with the specified coordinates.
    ---@param x integer
    ---@param y integer
    ---@param z integer
    ---@return wpos
    New = function(x, y, z) end;

    --- The world coordinate origin.
    ---@type wpos
    Zero = nil;
}

---Global variable provided by the game scripting engine.
WVec = {

    --- Create a new WVec with the specified coordinates.
    ---@param x integer
    ---@param y integer
    ---@param z integer
    ---@return wvec
    New = function(x, y, z) end;

    --- The world zero-vector.
    ---@type wvec
    Zero = nil;
}

---@class actor
--- Specifies whether the actor is in the world.
---@field IsInWorld boolean
--- The player that owns the actor.
---@field Owner player
--- Current actor stance. Returns nil if this actor doesn't support stances.
---@field Stance string
--- Current health of the actor.
--- **Requires Trait:** [IHealth](https://docs.openra.net/en/release/traits/#ihealth)
---@field Health integer
--- Query or set a factory's rally point.
--- **Requires Trait:** [RallyPoint](https://docs.openra.net/en/release/traits/#rallypoint)
---@field RallyPoint cpos
--- Query or set the factory's primary building status.
--- **Requires Trait:** [PrimaryBuilding](https://docs.openra.net/en/release/traits/#primarybuilding)
---@field IsPrimaryBuilding boolean
local __actor = {

    --- Fly within the cell grid.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/release/traits/#aircraft)
    ---@param cell cpos
    ---@diagnostic disable-next-line: duplicate-index
    Move = function(cell) end;

    --- Return to the base, which is either the destination given, or an auto-selected one otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/release/traits/#aircraft)
    ---@param destination? actor
    ReturnToBase = function(destination) end;

    --- Queues a landing activity on the specified actor.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/release/traits/#aircraft)
    ---@param landOn actor
    Land = function(landOn) end;

    --- Starts the resupplying activity when being on a host building.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/release/traits/#aircraft)
    Resupply = function() end;

    --- Activate the actor's Airstrike Power. Returns the aircraft that will attack.
    --- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/release/traits/#airstrikepower)
    ---@param target wpos
    ---@param facing? wangle?
    ---@return actor[]
    TargetAirstrike = function(target, facing) end;

    --- Returns the count of the actor's specified ammopool.
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/release/traits/#ammopool)
    ---@param poolName? string
    ---@return integer
    AmmoCount = function(poolName) end;

    --- Returns the maximum count of ammo the actor can load.
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/release/traits/#ammopool)
    ---@param poolName? string
    ---@return integer
    MaximumAmmoCount = function(poolName) end;

    --- Adds the specified amount of ammo to the specified ammopool.
    --- (Use a negative amount to remove ammo.)
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/release/traits/#ammopool)
    ---@param poolName? string
    ---@param amount? integer
    Reload = function(poolName, amount) end;

    --- Captures the target actor.
    --- **Requires Trait:** [CaptureManager](https://docs.openra.net/en/release/traits/#capturemanager)
    ---@param target actor
    Capture = function(target) end;

    --- Checks if the target actor can be captured.
    --- **Requires Trait:** [CaptureManager](https://docs.openra.net/en/release/traits/#capturemanager)
    ---@param target actor
    ---@return boolean
    CanCapture = function(target) end;

    --- Pick up the target actor.
    --- *Queued Activity*
    --- **Requires Trait:** [Carryall](https://docs.openra.net/en/release/traits/#carryall)
    ---@param target actor
    PickupCarryable = function(target) end;

    --- Drop the actor being carried at the target location.
    --- *Queued Activity*
    --- **Requires Trait:** [Carryall](https://docs.openra.net/en/release/traits/#carryall)
    ---@param target cpos
    DeliverCarryable = function(target) end;

    --- Returns true if the actor is cloaked.
    --- **Requires Trait:** [Cloak](https://docs.openra.net/en/release/traits/#cloak)
    ---@type boolean
    IsCloaked = nil;

    --- Ignoring visibility, find the closest hostile target and attack move to within 2 cells of it.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase), [IMove](https://docs.openra.net/en/release/traits/#imove)
    Hunt = function() end;

    --- Move to a cell, but stop and attack anything within range on the way. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase), [IMove](https://docs.openra.net/en/release/traits/#imove)
    ---@param cell cpos
    ---@param closeEnough? integer
    AttackMove = function(cell, closeEnough) end;

    --- Patrol along a set of given waypoints. The action is repeated by default, and the actor will wait for `wait` ticks at each waypoint.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase), [IMove](https://docs.openra.net/en/release/traits/#imove)
    ---@param waypoints cpos[]
    ---@param loop? boolean
    ---@param wait? integer
    Patrol = function(waypoints, loop, wait) end;

    --- Patrol along a set of given waypoints until a condition becomes true. The actor will wait for `wait` ticks at each waypoint. The callback function will be called as func(self: actor):boolean.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase), [IMove](https://docs.openra.net/en/release/traits/#imove)
    ---@param waypoints cpos[]
    ---@param func fun(self: actor):boolean
    ---@param wait? integer
    PatrolUntil = function(waypoints, func, wait) end;

    --- Attack the target actor. The target actor needs to be visible.
    --- **Requires Trait:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase)
    ---@param targetActor actor
    ---@param allowMove? boolean
    ---@param forceAttack? boolean
    Attack = function(targetActor, allowMove, forceAttack) end;

    --- Checks if the targeted actor is a valid target for this actor.
    --- **Requires Trait:** [AttackBase](https://docs.openra.net/en/release/traits/#attackbase)
    ---@param targetActor actor
    ---@return boolean
    CanTarget = function(targetActor) end;

    --- Grant an external condition on this actor and return the revocation token.
    --- Conditions must be defined on an ExternalConditions trait on the actor.
    --- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/release/traits/#externalcondition)
    ---@param condition string
    ---@param duration? integer
    ---@return integer
    GrantCondition = function(condition, duration) end;

    --- Revoke a condition using the token returned by GrantCondition.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/release/traits/#externalcondition)
    ---@param token integer
    RevokeCondition = function(token) end;

    --- Check whether this actor accepts a specific external condition.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/release/traits/#externalcondition)
    ---@param condition string
    ---@return boolean
    AcceptsCondition = function(condition) end;

    --- Deliver cash to the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/release/traits/#imove), [DeliversCash](https://docs.openra.net/en/release/traits/#deliverscash)
    ---@param target actor
    DeliverCash = function(target) end;

    --- Deliver experience to the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/release/traits/#imove), [DeliversExperience](https://docs.openra.net/en/release/traits/#deliversexperience)
    ---@param target actor
    DeliverExperience = function(target) end;

    --- Demolish the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/release/traits/#imove), [Demolition](https://docs.openra.net/en/release/traits/#demolition)
    ---@param target actor
    Demolish = function(target) end;

    --- Gives the actor experience. If 'silent' is true, no animation or sound will be played if the actor levels up.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@param amount integer
    ---@param silent? boolean
    GiveExperience = function(amount, silent) end;

    --- Gives the actor level(s). If 'silent' is true, no animation or sound will be played.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@param numLevels integer
    ---@param silent? boolean
    GiveLevels = function(numLevels, silent) end;

    --- The actor's amount of experience.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@type integer
    Experience = nil;

    --- The actor's level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@type integer
    Level = nil;

    --- The actor's maximum possible level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@type integer
    MaxLevel = nil;

    --- Returns true if the actor can gain a level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/release/traits/#gainsexperience)
    ---@type boolean
    CanGainLevel = nil;

    --- Test whether an actor has a specific property.
    ---@param name string
    ---@return boolean
    HasProperty = function(name) end;

    --- Render a target flash on the actor.
    ---@param color color
    ---@param count? integer
    ---@param interval? integer
    ---@param delay? integer
    Flash = function(color, count, interval, delay) end;

    --- Specifies whether the actor is alive or dead.
    ---@type boolean
    IsDead = nil;

    --- Specifies whether the actor is idle (not performing any activities).
    ---@type boolean
    IsIdle = nil;

    --- The type of the actor (e.g. "e1").
    ---@type string
    Type = nil;

    --- The effective (displayed) owner of the actor. This may differ from the true owner in some cases, such as disguised actors.
    ---@type player
    EffectiveOwner = nil;

    --- Instantly moves the actor to the specified cell.
    --- *Queued Activity*
    ---@param cell cpos
    Teleport = function(cell) end;

    --- Run an arbitrary Lua function.
    --- *Queued Activity*
    ---@param func fun()
    CallFunc = function(func) end;

    --- Wait for a specified number of game ticks (25 ticks = 1 second).
    --- *Queued Activity*
    ---@param ticks integer
    Wait = function(ticks) end;

    --- Remove the actor from the game, without triggering any death notification.
    --- *Queued Activity*
    Destroy = function() end;

    --- Attempt to cancel any active activities.
    Stop = function() end;

    --- Add a tag to the actor. Returns true on success, false otherwise (for example the actor may already have the given tag).
    ---@param tag string
    ---@return boolean
    AddTag = function(tag) end;

    --- Remove a tag from the actor. Returns true on success, false otherwise (tag was not present).
    ---@param tag string
    ---@return boolean
    RemoveTag = function(tag) end;

    --- Specifies whether or not the actor has a particular tag.
    ---@param tag string
    ---@return boolean
    HasTag = function(tag) end;

    --- The actor's tooltip name. Returns nil if the actor has no tooltip.
    ---@type string
    TooltipName = nil;

    --- Specifies whether or not the actor supports 'tags'.
    ---@type boolean
    IsTaggable = nil;

    --- The actor position in cell coordinates.
    --- **Requires Trait:** [IOccupySpace](https://docs.openra.net/en/release/traits/#ioccupyspace)
    ---@type cpos
    Location = nil;

    --- The actor position in world coordinates.
    --- **Requires Trait:** [IOccupySpace](https://docs.openra.net/en/release/traits/#ioccupyspace)
    ---@type wpos
    CenterPosition = nil;

    --- The direction that the actor is facing.
    --- **Requires Trait:** [IFacing](https://docs.openra.net/en/release/traits/#ifacing)
    ---@type wangle
    Facing = nil;

    --- Guard the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [Guard](https://docs.openra.net/en/release/traits/#guard), [IMove](https://docs.openra.net/en/release/traits/#imove)
    ---@param targetActor actor
    Guard = function(targetActor) end;

    --- Search for nearby resources and begin harvesting.
    --- *Queued Activity*
    --- **Requires Trait:** [Harvester](https://docs.openra.net/en/release/traits/#harvester)
    FindResources = function() end;

    --- Kill the actor. damageTypes may be omitted, specified as a string, or as table of strings.
    --- **Requires Trait:** [IHealth](https://docs.openra.net/en/release/traits/#ihealth)
    ---@param damageTypes? string|{ [unknown]: string }
    Kill = function(damageTypes) end;

    --- Maximum health of the actor.
    --- **Requires Trait:** [IHealth](https://docs.openra.net/en/release/traits/#ihealth)
    ---@type integer
    MaxHealth = nil;

    --- Enter the target actor to repair it instantly.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/release/traits/#imove), [InstantlyRepairs](https://docs.openra.net/en/release/traits/#instantlyrepairs)
    ---@param target actor
    InstantlyRepair = function(target) end;

    --- Moves within the cell grid. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    ---@param cell cpos
    ---@param closeEnough? integer
    ---@diagnostic disable-next-line: duplicate-index
    Move = function(cell, closeEnough) end;

    --- Moves within the cell grid, ignoring lane biases.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    ---@param cell cpos
    ScriptedMove = function(cell) end;

    --- Moves from outside the world into the cell grid.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    ---@param cell cpos
    MoveIntoWorld = function(cell) end;

    --- Leave the current position in a random direction.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    Scatter = function() end;

    --- Move to and enter the transport.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    ---@param transport actor
    EnterTransport = function(transport) end;

    --- Whether the actor can move (false if immobilized).
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/release/traits/#mobile)
    ---@type boolean
    IsMobile = nil;

    --- Activate the actor's NukePower.
    --- **Requires Trait:** [NukePower](https://docs.openra.net/en/release/traits/#nukepower)
    ---@param target cpos
    ActivateNukePower = function(target) end;

    --- Command transport to paradrop passengers near the target cell.
    --- *Queued Activity*
    --- **Requires Traits:** [Cargo](https://docs.openra.net/en/release/traits/#cargo), [ParaDrop](https://docs.openra.net/en/release/traits/#paradrop)
    ---@param cell cpos
    Paradrop = function(cell) end;

    --- Activate the actor's Paratroopers Power. Returns the aircraft that will drop the reinforcements.
    --- **Requires Trait:** [ParatroopersPower](https://docs.openra.net/en/release/traits/#paratrooperspower)
    ---@param target wpos
    ---@param facing? wangle?
    ---@return actor[]
    TargetParatroopers = function(target, facing) end;

    --- Returns the power drained/provided by this actor.
    --- **Requires Trait:** [Power](https://docs.openra.net/en/release/traits/#power)
    ---@type integer
    Power = nil;

    --- Build a unit, ignoring the production queue. The activity will wait if the exit is blocked.
    --- If productionType is nil or unavailable, then an exit will be selected based on 'Buildable.BuildAtProductionType'.
    --- If 'Buildable.BuildAtProductionType' is not set either, a random exit will be selected.
    --- *Queued Activity*
    --- **Requires Trait:** [Production](https://docs.openra.net/en/release/traits/#production)
    ---@param actorType string
    ---@param factionVariant? string
    ---@param productionType? string
    Produce = function(actorType, factionVariant, productionType) end;

    --- Build the specified set of actors using a TD-style (per building) production queue. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(actors: actor[]) once production of all actors has been completed.  The actors array is guaranteed to only contain alive actors.
    --- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/release/traits/#scripttriggers)
    ---@param actorTypes string[]
    ---@param actionFunc? fun(actors: actor[])
    ---@return boolean
    Build = function(actorTypes, actionFunc) end;

    --- Check whether the factory's production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
    --- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/release/traits/#scripttriggers)
    ---@param actorType string
    ---@return boolean
    IsProducing = function(actorType) end;

    --- Start repairs on this building. `repairer` can be an allied player.
    --- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/release/traits/#repairablebuilding)
    ---@param repairer? player
    StartBuildingRepairs = function(repairer) end;

    --- Stop repairs on this building. `repairer` can be an allied player.
    --- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/release/traits/#repairablebuilding)
    ---@param repairer? player
    StopBuildingRepairs = function(repairer) end;

    --- Makes the unit automatically run around and become faster.
    --- *Queued Activity*
    --- **Requires Trait:** [ScaredyCat](https://docs.openra.net/en/release/traits/#scaredycat)
    Panic = function() end;

    --- Start selling the actor.
    --- **Requires Trait:** [Sellable](https://docs.openra.net/en/release/traits/#sellable)
    Sell = function() end;

    --- Queue a new transformation.
    --- *Queued Activity*
    --- **Requires Trait:** [Transforms](https://docs.openra.net/en/release/traits/#transforms)
    Deploy = function() end;

    --- Teleport an existing actor inside this transport.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@param a actor
    LoadPassenger = function(a) end;

    --- Remove an existing actor (or first actor if none specified) from the transport.  This actor is not added to the world.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@param a? actor
    ---@return actor
    UnloadPassenger = function(a) end;

    --- Command transport to unload passengers.
    --- *Queued Activity*
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@param cell? cpos?
    ---@param unloadRange? integer
    UnloadPassengers = function(cell, unloadRange) end;

    --- Returns references to passengers inside the transport.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@type actor[]
    Passengers = nil;

    --- Specifies whether transport has any passengers.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@type boolean
    HasPassengers = nil;

    --- Specifies the amount of passengers.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/release/traits/#cargo)
    ---@type integer
    PassengerCount = nil;

    --- Chronoshift a group of actors. A duration of 0 will teleport the actors permanently. If a given cell is unexplored for this power's owner, the closest valid cell will be used instead.
    --- **Requires Trait:** [ChronoshiftPower](https://docs.openra.net/en/release/traits/#chronoshiftpower)
    ---@param unitLocationPairs { [actor]: cpos }
    ---@param duration? integer
    ---@param killCargo? boolean
    Chronoshift = function(unitLocationPairs, duration, killCargo) end;

    --- Disguises as the target actor.
    --- **Requires Trait:** [Disguise](https://docs.openra.net/en/release/traits/#disguise)
    ---@param target actor
    DisguiseAs = function(target) end;

    --- Disguises as the target type with the specified owner.
    --- **Requires Trait:** [Disguise](https://docs.openra.net/en/release/traits/#disguise)
    ---@param actorType string
    ---@param newOwner player
    DisguiseAsType = function(actorType, newOwner) end;

    --- Infiltrate the target actor.
    --- **Requires Trait:** [Infiltrates](https://docs.openra.net/en/release/traits/#infiltrates)
    ---@param target actor
    Infiltrate = function(target) end;

    --- Activate the actor's IonCannonPower.
    --- **Requires Trait:** [IonCannonPower](https://docs.openra.net/en/release/traits/#ioncannonpower)
    ---@param target cpos
    ActivateIonCannon = function(target) end;
}

---@class player
--- Get or set the current experience.
--- **Requires Trait:** [PlayerExperience](https://docs.openra.net/en/release/traits/#playerexperience)
---@field Experience integer
--- Whether the player should receive a notification when low on power.
--- **Requires Trait:** [PowerManager](https://docs.openra.net/en/release/traits/#powermanager)
---@field PlayLowPowerNotification boolean
--- The amount of harvestable resources held by the player.
--- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/release/traits/#playerresources)
---@field Resources integer
--- The amount of cash held by the player.
--- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/release/traits/#playerresources)
---@field Cash integer
local __player = {

    --- Returns true if the player is allied with the other player.
    ---@param targetPlayer player
    ---@return boolean
    IsAlliedWith = function(targetPlayer) end;

    --- Add a mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param description string
    ---@param type? string
    ---@param required? boolean
    ---@return integer
    AddObjective = function(description, type, required) end;

    --- Add a primary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param description string
    ---@return integer
    AddPrimaryObjective = function(description) end;

    --- Add a secondary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param description string
    ---@return integer
    AddSecondaryObjective = function(description) end;

    --- Mark an objective as completed.  This needs the objective ID returned by AddObjective as argument.  When this player has completed all primary objectives, (s)he has won the game.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    MarkCompletedObjective = function(id) end;

    --- Mark an objective as failed.  This needs the objective ID returned by AddObjective as argument.  Secondary objectives do not have any influence whatsoever on the outcome of the game. It is possible to mark a completed objective as a failure.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    MarkFailedObjective = function(id) end;

    --- Returns true if the objective has been successfully completed, false otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    ---@return boolean
    IsObjectiveCompleted = function(id) end;

    --- Returns true if the objective has been failed, false otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    ---@return boolean
    IsObjectiveFailed = function(id) end;

    --- Returns the description of an objective.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    ---@return string
    GetObjectiveDescription = function(id) end;

    --- Returns the type of an objective.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@param id integer
    ---@return string
    GetObjectiveType = function(id) end;

    --- Returns true if this player has lost all units/actors that have the MustBeDestroyed trait (according to the short game option).
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/release/traits/#missionobjectives)
    ---@return boolean
    HasNoRequiredUnits = function() end;

    --- Grant an external condition on the player actor and return the revocation token.
    --- Conditions must be defined on an ExternalConditions trait on the player actor.
    --- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
    ---@param condition string
    ---@param duration? integer
    ---@return integer
    GrantCondition = function(condition, duration) end;

    --- Revoke a condition using the token returned by GrantCondition.
    ---@param token integer
    RevokeCondition = function(token) end;

    --- Check whether this player actor accepts a specific external condition.
    ---@param condition string
    ---@return boolean
    AcceptsCondition = function(condition) end;

    --- Returns all living actors staying inside the world for this player.
    ---@return actor[]
    GetActors = function() end;

    --- Returns an array of actors representing all ground attack units of this player.
    ---@return actor[]
    GetGroundAttackers = function() end;

    --- Returns all living actors of the specified type of this player.
    ---@param type string
    ---@return actor[]
    GetActorsByType = function(type) end;

    --- Returns all living actors of the specified types of this player.
    ---@param types string[]
    ---@return actor[]
    GetActorsByTypes = function(types) end;

    --- Check if the player has these prerequisites available.
    ---@param type string[]
    ---@return boolean
    HasPrerequisites = function(type) end;

    --- The player's internal name.
    ---@type string
    InternalName = nil;

    --- The player's name.
    ---@type string
    Name = nil;

    --- The player's color.
    ---@type color
    Color = nil;

    --- The player's faction.
    ---@type string
    Faction = nil;

    --- The player's spawnpoint ID.
    ---@type integer
    Spawn = nil;

    --- The player's home/starting location.
    ---@type cpos
    HomeLocation = nil;

    --- The player's team ID.
    ---@type integer
    Team = nil;

    --- The player's handicap level.
    ---@type integer
    Handicap = nil;

    --- Returns true if the player is a bot.
    ---@type boolean
    IsBot = nil;

    --- Returns true if the player is non combatant.
    ---@type boolean
    IsNonCombatant = nil;

    --- Returns true if the player is the local player.
    ---@type boolean
    IsLocalPlayer = nil;

    --- The combined value of units killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    KillsCost = nil;

    --- The combined value of all units lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    DeathsCost = nil;

    --- The total number of units killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    UnitsKilled = nil;

    --- The total number of units lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    UnitsLost = nil;

    --- The total number of buildings killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    BuildingsKilled = nil;

    --- The total number of buildings lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/release/traits/#playerstatistics)
    ---@type integer
    BuildingsLost = nil;

    --- Triggers low power for the chosen amount of ticks.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/release/traits/#powermanager)
    ---@param ticks integer
    TriggerPowerOutage = function(ticks) end;

    --- Returns the total of the power the player has.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/release/traits/#powermanager)
    ---@type integer
    PowerProvided = nil;

    --- Returns the power used by the player.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/release/traits/#powermanager)
    ---@type integer
    PowerDrained = nil;

    --- Returns the player's power state ("Normal", "Low" or "Critical").
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/release/traits/#powermanager)
    ---@type string
    PowerState = nil;

    --- Build the specified set of actors using classic (RA-style) production queues. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(actors: actor[]) once production of all actors has been completed. The actors array is guaranteed to only contain alive actors. Note: This function will fail to work when called during the first tick.
    --- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/release/traits/#scripttriggers)
    ---@param actorTypes string[]
    ---@param actionFunc? fun(actors: actor[])
    ---@return boolean
    Build = function(actorTypes, actionFunc) end;

    --- Check whether the production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
    --- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/release/traits/#scripttriggers)
    ---@param actorType string
    ---@return boolean
    IsProducing = function(actorType) end;

    --- The maximum resource storage of the player.
    --- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/release/traits/#playerresources)
    ---@type integer
    ResourceCapacity = nil;
}

