-- This is an automatically generated Lua API definition generated for {DEV_VERSION} of OpenRA.
-- https://wiki.openra.net/Utility was used with the --emmy-lua-api parameter.
-- See https://docs.openra.net/en/latest/release/lua/ for human readable documentation.


--
-- SECTION Manually added:
--


--- This function is triggered once, after the map is loaded.
function WorldLoaded() end

--- This function will hit every game tick which by default is every 40 ms.
function Tick() end

---@alias Color HSLColor

---A subset of all ActorInit implementations.
---@class initTable
---@field Location cpos
---@field Owner player
---@field Facing wangle
---@field CreationActivityDelay integer
---@field CenterPosition wpos
---@field Faction string
---@field EffectiveOwner player
---@field Stance userdata
---@field FreeActor boolean
---@field ParentActor actor
---@field LineBuildDirection userdata
---@field LineBuildParent string[]
---@field RuntimeCargo actor[]
---@field Cargo string[]
---@field DeployState userdata
---@field Experience integer
---@field Health integer
---@field HuskSpeed integer
---@field Plug string
---@field ProductionSpawnLocation cpos
---@field ScriptTags string[]
---@field TurretFacing wangle
---@field SpawnedByMap string
---@field BodyAnimationFrame integer

---@class cpos
---@field X integer
---@field Y integer

---@class wpos
---@field X integer
---@field Y integer
---@field Z integer

---@class wangle
---@field Angle integer

---@class wdist
---@field Length integer

---@class wvec
---@field X integer
---@field Y integer
---@field Z integer

---@class cvec
---@field X integer
---@field Y integer


--
-- SECTION Script API global methods:
--


---Global variable provided by the game scripting engine.
Actor = {

    ---@param type string
    ---@param queue? string
    ---@return integer
    --- Returns the build time (in ticks) of the requested unit type.
    --- An optional second value can be used to exactly specify the producing queue type.
    BuildTime = function(type, queue) end;

    ---@param type string
    ---@return integer
    Cost = function(type) end;

    ---@param type string
    ---@param addToWorld boolean
    ---@param initTable initTable
    ---@return actor
    --- Create a new actor. initTable specifies a list of key-value pairs that defines the initial parameters for the actor's traits.
    Create = function(type, addToWorld, initTable) end;

    ---@param type string
    ---@return integer
    --- Returns the cruise altitude of the requested unit type (zero if it is ground-based).
    CruiseAltitude = function(type) end;
}

---Global variable provided by the game scripting engine.
Angle = {

    East = function() end;

    ---@param a integer
    ---@return wangle
    --- Create an arbitrary angle.
    New = function(a) end;

    North = function() end;

    NorthEast = function() end;

    NorthWest = function() end;

    South = function() end;

    SouthEast = function() end;

    SouthWest = function() end;

    West = function() end;
}

---Global variable provided by the game scripting engine.
Beacon = {

    ---@param owner player
    ---@param position wpos
    ---@param duration? integer
    ---@param showRadarPings? boolean
    --- Creates a new beacon that stays for the specified time at the specified WPos. Does not remove player set beacons, nor gets removed by placing them. Requires the 'PlaceBeacon' trait on the player actor.
    New = function(owner, position, duration, showRadarPings) end;
}

---Global variable provided by the game scripting engine.
Camera = {

    --- The center of the visible viewport.
    Position = function() end;
}

---Global variable provided by the game scripting engine.
HSLColor = {

    Aqua = function() end;

    Black = function() end;

    Blue = function() end;

    Brown = function() end;

    Cyan = function() end;

    DarkBlue = function() end;

    DarkCyan = function() end;

    DarkGray = function() end;

    DarkGreen = function() end;

    DarkOrange = function() end;

    DarkRed = function() end;

    ---@param value string
    ---@return Color
    --- Create a new color with the specified red/green/blue/[alpha] hex string (rrggbb[aa]).
    FromHex = function(value) end;

    ---@param red integer
    ---@param green integer
    ---@param blue integer
    ---@param alpha? integer
    ---@return Color
    --- Create a new color with the specified red/green/blue/[alpha] values.
    FromRGB = function(red, green, blue, alpha) end;

    Fuchsia = function() end;

    Gold = function() end;

    Gray = function() end;

    Green = function() end;

    LawnGreen = function() end;

    LightBlue = function() end;

    LightCyan = function() end;

    LightGray = function() end;

    LightGreen = function() end;

    LightYellow = function() end;

    Lime = function() end;

    LimeGreen = function() end;

    Magenta = function() end;

    Maroon = function() end;

    Navy = function() end;

    ---@param hue integer
    ---@param saturation integer
    ---@param luminosity integer
    ---@return Color
    --- Create a new color with the specified hue/saturation/luminosity.
    New = function(hue, saturation, luminosity) end;

    Olive = function() end;

    Orange = function() end;

    OrangeRed = function() end;

    Purple = function() end;

    Red = function() end;

    Salmon = function() end;

    SkyBlue = function() end;

    Teal = function() end;

    White = function() end;

    Yellow = function() end;
}

---Global variable provided by the game scripting engine.
CPos = {

    ---@param x integer
    ---@param y integer
    ---@return cpos
    --- Create a new CPos with the specified coordinates.
    New = function(x, y) end;

    --- The cell coordinate origin.
    Zero = function() end;
}

---Global variable provided by the game scripting engine.
CVec = {

    ---@param x integer
    ---@param y integer
    ---@return cvec
    --- Create a new CVec with the specified coordinates.
    New = function(x, y) end;

    --- The cell zero-vector.
    Zero = function() end;
}

---Global variable provided by the game scripting engine.
DateTime = {

    --- Get the current game time (in ticks).
    GameTime = function() end;

    --- True on the 31st of October.
    IsHalloween = function() end;

    ---@param minutes integer
    ---@return integer
    --- Converts the number of minutes into game time (ticks).
    Minutes = function(minutes) end;

    ---@param seconds integer
    ---@return integer
    --- Converts the number of seconds into game time (ticks).
    Seconds = function(seconds) end;

    --- Return or set the time limit (in ticks). When setting, the time limit will count from now. Setting the time limit to 0 will disable it.
    TimeLimit = function() end;

    --- The notification string used for custom time limit warnings. See the TimeLimitManager trait documentation for details.
    TimeLimitNotification = function() end;
}

---Global variable provided by the game scripting engine.
---@deprecated
--- The Facing table is deprecated. Use Angle instead.
Facing = {

    ---@deprecated Use Angle.East instead.
    East = function() end;

    ---@deprecated Use Angle.North instead.
    North = function() end;

    ---@deprecated Use Angle.NorthEast instead.
    NorthEast = function() end;

    ---@deprecated Use Angle.NorthWest instead.
    NorthWest = function() end;

    ---@deprecated Use Angle.South instead.
    South = function() end;

    ---@deprecated Use Angle.SouthEast instead.
    SouthEast = function() end;

    ---@deprecated Use Angle.SouthWest instead.
    SouthWest = function() end;

    ---@deprecated Use Angle.West instead.
    West = function() end;
}

---Global variable provided by the game scripting engine.
Lighting = {

    Ambient = function() end;

    Blue = function() end;

    ---@param type? string
    ---@param ticks? integer
    --- Controls the `FlashPaletteEffect` trait.
    Flash = function(type, ticks) end;

    Green = function() end;

    Red = function() end;
}

---Global variable provided by the game scripting engine.
Map = {

    ---@param topLeft wpos
    ---@param bottomRight wpos
    ---@param filter? function
    ---@return actor[]
    --- Returns a table of all actors within the requested rectangle, filtered using the specified function.
    ActorsInBox = function(topLeft, bottomRight, filter) end;

    ---@param location wpos
    ---@param radius wdist
    ---@param filter? function
    ---@return actor[]
    --- Returns a table of all actors within the requested region, filtered using the specified function.
    ActorsInCircle = function(location, radius, filter) end;

    --- Returns a table of all the actors that are currently on the map/in the world.
    ActorsInWorld = function() end;

    ---@param tag string
    ---@return actor[]
    --- Returns a table of all actors tagged with the given string.
    ActorsWithTag = function(tag) end;

    --- Returns the location of the bottom-right corner of the map (assuming zero terrain height).
    BottomRight = function() end;

    ---@param cell cpos
    ---@return wpos
    --- Returns the center of a cell in world coordinates.
    CenterOfCell = function(cell) end;

    ---@param givenCell cpos
    ---@return cpos
    --- Returns the closest cell on the visible border of the map from the given cell.
    ClosestEdgeCell = function(givenCell) end;

    ---@param givenCell cpos
    ---@param filter function
    ---@return cpos
    --- Returns the first cell on the visible border of the map from the given cell,
    --- matching the filter function called as function(CPos cell).
    ClosestMatchingEdgeCell = function(givenCell, filter) end;

    ---@param actor actor
    ---@return boolean
    --- Returns true if actor was originally specified in the map file.
    IsNamedActor = function(actor) end;

    --- Returns true if this is a shellmap and the player has paused animations.
    IsPausedShellmap = function() end;

    --- Returns true if there is only one human player.
    IsSinglePlayer = function() end;

    ---@param id string
    ---@return any
    --- Returns the value of a `ScriptLobbyDropdown` selected in the game lobby.
    LobbyOption = function(id) end;

    ---@param actorName string
    ---@return actor
    --- Returns the actor that was specified with a given name in the map file (or nil, if the actor is dead or not found).
    NamedActor = function(actorName) end;

    --- Returns a table of all the actors that were specified in the map file.
    NamedActors = function() end;

    ---@return cpos
    --- Returns a random cell inside the visible region of the map.
    RandomCell = function() end;

    ---@return cpos
    --- Returns a random cell on the visible border of the map.
    RandomEdgeCell = function() end;

    ---@param cell cpos
    ---@return string
    --- Returns the type of the terrain at the target cell.
    TerrainType = function(cell) end;

    --- Returns the location of the top-left corner of the map (assuming zero terrain height).
    TopLeft = function() end;
}

---Global variable provided by the game scripting engine.
Media = {

    ---@param text string
    --- Displays a debug message to the player, if "Show Map Debug Messages" is checked in the settings.
    Debug = function(text) end;

    ---@param text string
    ---@param prefix? string
    ---@param color? Color?
    --- Display a text message to the player.
    DisplayMessage = function(text, prefix, color) end;

    ---@param text string
    ---@param prefix? string
    --- Display a system message to the player. If 'prefix' is nil the default system prefix is used.
    DisplaySystemMessage = function(text, prefix) end;

    ---@param text string
    ---@param position wpos
    ---@param duration? integer
    ---@param color? Color?
    --- Display a text message at the specified location.
    FloatingText = function(text, position, duration, color) end;

    ---@param movie string
    ---@param func? function
    --- Play a VQA video fullscreen. File name has to include the file extension.
    PlayMovieFullscreen = function(movie, func) end;

    ---@param movie string
    ---@param playComplete? function
    ---@return boolean
    --- Play a VQA video in the radar window. File name has to include the file extension. Returns true on success, if the movie wasn't found the function returns false and the callback is executed.
    PlayMovieInRadar = function(movie, playComplete) end;

    ---@param track? string
    ---@param func? function
    --- Play track defined in music.yaml or map.yaml, or keep track empty for playing a random song.
    PlayMusic = function(track, func) end;

    ---@param file string
    --- Play a sound file
    PlaySound = function(file) end;

    ---@param player player
    ---@param notification string
    --- Play a sound listed in notifications.yaml
    PlaySoundNotification = function(player, notification) end;

    ---@param player player
    ---@param notification string
    --- Play an announcer voice listed in notifications.yaml
    PlaySpeechNotification = function(player, notification) end;

    ---@param track? string
    --- Play track defined in music.yaml or map.yaml as background music. If music is already playing use Media.StopMusic() to stop it and the background music will start automatically. Keep the track empty to disable background music.
    SetBackgroundMusic = function(track) end;

    --- Stop the current song.
    StopMusic = function() end;
}

---Global variable provided by the game scripting engine.
Player = {

    ---@param name string
    ---@return player
    --- Returns the player with the specified internal name, or nil if a match is not found.
    GetPlayer = function(name) end;

    ---@param filter function
    ---@return player[]
    --- Returns a table of players filtered by the specified function.
    GetPlayers = function(filter) end;
}

---Global variable provided by the game scripting engine.
Radar = {

    ---@param player player
    ---@param position wpos
    ---@param color Color
    ---@param duration? integer
    --- Creates a new radar ping that stays for the specified time at the specified WPos.
    Ping = function(player, position, color, duration) end;
}

---Global variable provided by the game scripting engine.
Reinforcements = {

    ---@param owner player
    ---@param actorTypes string[]
    ---@param entryPath CPos[]
    ---@param interval? integer
    ---@param actionFunc? function
    ---@return actor[]
    --- Send reinforcements consisting of multiple units. Supports ground-based, naval and air units. The first member of the entryPath array will be the units' spawnpoint, while the last one will be their destination. If actionFunc is given, it will be executed once a unit has reached its destination. actionFunc will be called as actionFunc(Actor actor). Returns a table containing the deployed units.
    Reinforce = function(owner, actorTypes, entryPath, interval, actionFunc) end;

    ---@param owner player
    ---@param actorType string
    ---@param cargoTypes string[]
    ---@param entryPath CPos[]
    ---@param exitPath? CPos[]
    ---@param actionFunc? function
    ---@param exitFunc? function
    ---@param dropRange? integer
    ---@return table
    --- Send reinforcements in a transport. A transport can be a ground unit (APC etc.), ships and aircraft. The first member of the entryPath array will be the spawnpoint for the transport, while the last one will be its destination. The last member of the exitPath array is be the place where the transport will be removed from the game. When the transport has reached the destination, it will unload its cargo unless a custom actionFunc has been supplied. Afterwards, the transport will follow the exitPath and leave the map, unless a custom exitFunc has been supplied. actionFunc will be called as actionFunc(Actor transport, Actor[] cargo). exitFunc will be called as exitFunc(Actor transport). dropRange determines how many cells away the transport will try to land if the actual destination is blocked (if the transport is an aircraft). Returns a table in which the first value is the transport, and the second a table containing the deployed units.
    ReinforceWithTransport = function(owner, actorType, cargoTypes, entryPath, exitPath, actionFunc, exitFunc, dropRange) end;
}

---Global variable provided by the game scripting engine.
Trigger = {

    ---@param delay integer
    ---@param func function
    --- Call a function after a specified delay. The callback function will be called as func().
    AfterDelay = function(delay, func) end;

    ---@param a actor
    ---@param triggerName string
    --- Removes the specified trigger from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
    Clear = function(a, triggerName) end;

    ---@param a actor
    --- Removes all triggers from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
    ClearAll = function(a) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is added to the world. The callback function will be called as func(Actor self).
    OnAddedToWorld = function(a, func) end;

    ---@param actors actor[]
    ---@param func function
    --- Call a function when all of the actors in a group are killed. The callback function will be called as func().
    OnAllKilled = function(actors, func) end;

    ---@param actors actor[]
    ---@param func function
    --- Call a function when all of the actors in a group have been killed or captured. The callback function will be called as func().
    OnAllKilledOrCaptured = function(actors, func) end;

    ---@param actors actor[]
    ---@param func function
    --- Call a function when all of the actors in a group have been removed from the world. The callback function will be called as func().
    OnAllRemovedFromWorld = function(actors, func) end;

    ---@param actors actor[]
    ---@param func function
    --- Call a function when one of the actors in a group is killed. The callback function will be called as func(Actor killed).
    OnAnyKilled = function(actors, func) end;

    ---@param func function
    --- Call a function when any actor produces another actor. The callback function will be called as func(Actor producer, Actor produced, string productionType).
    OnAnyProduction = function(func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is captured. The callback function will be called as func(Actor self, Actor captor, Player oldOwner, Player newOwner).
    OnCapture = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when the actor is damaged. The callback function will be called as func(Actor self, Actor attacker, int damage).
    OnDamaged = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is discovered by an enemy or a player with a Neutral stance. The callback function will be called as func(Actor discovered, Player discoverer). The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
    OnDiscovered = function(a, func) end;

    ---@param cells CPos[]
    ---@param func function
    ---@return integer
    --- Call a function when a ground-based actor enters this cell footprint. Returns the trigger id for later removal using RemoveFootprintTrigger(int id). The callback function will be called as func(Actor a, int id).
    OnEnteredFootprint = function(cells, func) end;

    ---@param pos wpos
    ---@param range wdist
    ---@param func function
    ---@return integer
    --- Call a function when an actor enters this range. Returns the trigger id for later removal using RemoveProximityTrigger(int id). The callback function will be called as func(Actor a, int id).
    OnEnteredProximityTrigger = function(pos, range, func) end;

    ---@param cells CPos[]
    ---@param func function
    ---@return integer
    --- Call a function when a ground-based actor leaves this cell footprint. Returns the trigger id for later removal using RemoveFootprintTrigger(int id). The callback function will be called as func(Actor a, int id).
    OnExitedFootprint = function(cells, func) end;

    ---@param pos wpos
    ---@param range wdist
    ---@param func function
    ---@return integer
    --- Call a function when an actor leaves this range. Returns the trigger id for later removal using RemoveProximityTrigger(int id). The callback function will be called as func(Actor a, int id).
    OnExitedProximityTrigger = function(pos, range, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function each tick that the actor is idle. The callback function will be called as func(Actor self).
    OnIdle = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is infiltrated. The callback function will be called as func(Actor self, Actor infiltrator).
    OnInfiltrated = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when the actor is killed. The callback function will be called as func(Actor self, Actor killer).
    OnKilled = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is killed or captured. The callback function will be called as func().
    OnKilledOrCaptured = function(a, func) end;

    ---@param player player
    ---@param func function
    --- Call a function when this player is assigned a new objective. The callback function will be called as func(Player player, int objectiveID).
    OnObjectiveAdded = function(player, func) end;

    ---@param player player
    ---@param func function
    --- Call a function when this player completes an objective. The callback function will be called as func(Player player, int objectiveID).
    OnObjectiveCompleted = function(player, func) end;

    ---@param player player
    ---@param func function
    --- Call a function when this player fails an objective. The callback function will be called as func(Player player, int objectiveID).
    OnObjectiveFailed = function(player, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function for each passenger when it enters a transport. The callback function will be called as func(Actor transport, Actor passenger).
    OnPassengerEntered = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function for each passenger when it exits a transport. The callback function will be called as func(Actor transport, Actor passenger).
    OnPassengerExited = function(a, func) end;

    ---@param discovered player
    ---@param func function
    --- Call a function when this player is discovered by an enemy or neutral player. The callback function will be called as func(Player discovered, Player discoverer, Actor discoveredActor).The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
    OnPlayerDiscovered = function(discovered, func) end;

    ---@param player player
    ---@param func function
    --- Call a function when this player fails any primary objective. The callback function will be called as func(Player player).
    OnPlayerLost = function(player, func) end;

    ---@param player player
    ---@param func function
    --- Call a function when this player completes all primary objectives. The callback function will be called as func(Player player).
    OnPlayerWon = function(player, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor produces another actor. The callback function will be called as func(Actor producer, Actor produced).
    OnProduction = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is removed from the world. The callback function will be called as func(Actor self).
    OnRemovedFromWorld = function(a, func) end;

    ---@param a actor
    ---@param func function
    --- Call a function when this actor is sold. The callback function will be called as func(Actor self).
    OnSold = function(a, func) end;

    ---@param func function
    --- Call a function when the game timer expires. The callback function will be called as func().
    OnTimerExpired = function(func) end;

    ---@param id integer
    --- Removes a previously created footprint trigger.
    RemoveFootprintTrigger = function(id) end;

    ---@param id integer
    --- Removes a previously created proximity trigger.
    RemoveProximityTrigger = function(id) end;
}

---Global variable provided by the game scripting engine.
UserInterface = {

    ---@param text string
    ---@param color? Color?
    --- Displays a text message at the top center of the screen.
    SetMissionText = function(text, color) end;

    ---@param text string
    ---@return string
    Translate = function(text) end;
}

---Global variable provided by the game scripting engine.
Utils = {

    ---@param collection table
    ---@param func function
    ---@return boolean
    --- Returns true if func returns true for all elements in a collection.
    All = function(collection, func) end;

    ---@param collection table
    ---@param func function
    ---@return boolean
    --- Returns true if func returns true for any element in a collection.
    Any = function(collection, func) end;

    ---@param collection table
    ---@param func function
    --- Calls a function on every element in a collection.
    Do = function(collection, func) end;

    ---@param footprint CPos[]
    ---@param allowDiagonal boolean
    ---@return CPos[]
    --- Expands the given footprint one step along the coordinate axes, and (if requested) diagonals.
    ExpandFootprint = function(footprint, allowDiagonal) end;

    ---@param ticks integer
    ---@param leadingMinuteZero? boolean
    ---@return string
    --- Returns the ticks formatted to HH:MM:SS.
    FormatTime = function(ticks, leadingMinuteZero) end;

    ---@param collection table
    ---@return any
    --- Returns a random value from a collection.
    Random = function(collection) end;

    ---@param low integer
    ---@param high integer
    ---@return integer
    --- Returns a random integer x in the range low &lt;= x &lt; high.
    RandomInteger = function(low, high) end;

    ---@param collection table
    ---@return table
    --- Returns the collection in a random order.
    Shuffle = function(collection) end;

    ---@param table table
    ---@param numElements integer
    ---@return table
    --- Skips over the first numElements members of a table and return the rest.
    Skip = function(table, numElements) end;

    ---@param n integer
    ---@param source table
    ---@return table
    --- Returns the first n values from a collection.
    Take = function(n, source) end;

    ---@param collection table
    ---@param func function
    ---@return table
    --- Returns the original collection filtered with the func.
    Where = function(collection, func) end;
}

---Global variable provided by the game scripting engine.
WDist = {

    ---@param numCells integer
    ---@return wdist
    --- Create a new WDist by cell distance.
    FromCells = function(numCells) end;

    ---@param r integer
    ---@return wdist
    --- Create a new WDist.
    New = function(r) end;
}

---Global variable provided by the game scripting engine.
WPos = {

    ---@param x integer
    ---@param y integer
    ---@param z integer
    ---@return wpos
    --- Create a new WPos with the specified coordinates.
    New = function(x, y, z) end;

    --- The world coordinate origin.
    Zero = function() end;
}

---Global variable provided by the game scripting engine.
WVec = {

    ---@param x integer
    ---@param y integer
    ---@param z integer
    ---@return wvec
    --- Create a new WVec with the specified coordinates.
    New = function(x, y, z) end;

    --- The world zero-vector.
    Zero = function() end;
}


--
-- SECTION Script API object properties:
--


---@class actor
local __actor = {

    ---@param cell cpos
    --- Fly within the cell grid.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
    Move = function(cell) end;

    ---@param destination? actor
    --- Return to the base, which is either the destination given, or an auto-selected one otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
    ReturnToBase = function(destination) end;

    ---@param landOn actor
    --- Queues a landing activity on the specified actor.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
    Land = function(landOn) end;

    --- Starts the resupplying activity when being on a host building.
    --- *Queued Activity*
    --- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
    Resupply = function() end;

    ---@param target wpos
    ---@param facing? WAngle?
    ---@return actor[]
    --- Activate the actor's Airstrike Power. Returns the aircraft that will attack.
    --- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
    TargetAirstrike = function(target, facing) end;

    ---@param target wpos
    ---@param randomize? boolean
    ---@param facing? integer
    ---@deprecated SendAirstrike is deprecated. Use TargetAirstrike instead.
    --- Activate the actor's Airstrike Power. DEPRECATED! Will be removed.
    --- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
    SendAirstrike = function(target, randomize, facing) end;

    ---@param from cpos
    ---@param to cpos
    ---@deprecated SendAirstrikeFrom is deprecated. Use TargetAirstrike instead.
    --- Activate the actor's Airstrike Power. DEPRECATED! Will be removed.
    --- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
    SendAirstrikeFrom = function(from, to) end;

    ---@param poolName? string
    ---@return integer
    --- Returns the count of the actor's specified ammopool.
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
    AmmoCount = function(poolName) end;

    ---@param poolName? string
    ---@return integer
    --- Returns the maximum count of ammo the actor can load.
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
    MaximumAmmoCount = function(poolName) end;

    ---@param poolName? string
    ---@param amount? integer
    --- Adds the specified amount of ammo to the specified ammopool.
    --- (Use a negative amount to remove ammo.)
    --- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
    Reload = function(poolName, amount) end;

    ---@param target actor
    --- Captures the target actor.
    --- **Requires Trait:** [CaptureManager](https://docs.openra.net/en/latest/release/traits/#capturemanager)
    Capture = function(target) end;

    ---@param target actor
    --- Pick up the target actor.
    --- *Queued Activity*
    --- **Requires Trait:** [Carryall](https://docs.openra.net/en/latest/release/traits/#carryall)
    PickupCarryable = function(target) end;

    ---@param target cpos
    --- Drop the actor being carried at the target location.
    --- *Queued Activity*
    --- **Requires Trait:** [Carryall](https://docs.openra.net/en/latest/release/traits/#carryall)
    DeliverCarryable = function(target) end;

    ---@class actor
    ---@field IsCloaked boolean Returns true if the actor is cloaked.
    --- **Requires Trait:** [Cloak](https://docs.openra.net/en/latest/release/traits/#cloak)

    --- Seek out and attack nearby targets.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
    Hunt = function() end;

    ---@param cell cpos
    ---@param closeEnough? integer
    --- Move to a cell, but stop and attack anything within range on the way. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
    AttackMove = function(cell, closeEnough) end;

    ---@param waypoints CPos[]
    ---@param loop? boolean
    ---@param wait? integer
    --- Patrol along a set of given waypoints. The action is repeated by default, and the actor will wait for `wait` ticks at each waypoint.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
    Patrol = function(waypoints, loop, wait) end;

    ---@param waypoints CPos[]
    ---@param func function
    ---@param wait? integer
    --- Patrol along a set of given waypoints until a condition becomes true. The actor will wait for `wait` ticks at each waypoint.
    --- *Queued Activity*
    --- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
    PatrolUntil = function(waypoints, func, wait) end;

    ---@param targetActor actor
    ---@param allowMove? boolean
    ---@param forceAttack? boolean
    --- Attack the target actor. The target actor needs to be visible.
    --- **Requires Trait:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase)
    Attack = function(targetActor, allowMove, forceAttack) end;

    ---@param targetActor actor
    ---@return boolean
    --- Checks if the targeted actor is a valid target for this actor.
    --- **Requires Trait:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase)
    CanTarget = function(targetActor) end;

    ---@param condition string
    ---@param duration? integer
    ---@return integer
    --- Grant an external condition on this actor and return the revocation token.
    --- Conditions must be defined on an ExternalConditions trait on the actor.
    --- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
    GrantCondition = function(condition, duration) end;

    ---@param token integer
    --- Revoke a condition using the token returned by GrantCondition.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
    RevokeCondition = function(token) end;

    ---@param condition string
    ---@return boolean
    --- Check whether this actor accepts a specific external condition.
    --- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
    AcceptsCondition = function(condition) end;

    ---@param target actor
    --- Deliver cash to the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [DeliversCash](https://docs.openra.net/en/latest/release/traits/#deliverscash)
    DeliverCash = function(target) end;

    ---@param target actor
    --- Deliver experience to the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [DeliversExperience](https://docs.openra.net/en/latest/release/traits/#deliversexperience)
    DeliverExperience = function(target) end;

    ---@param target actor
    --- Demolish the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [Demolition](https://docs.openra.net/en/latest/release/traits/#demolition)
    Demolish = function(target) end;

    ---@param amount integer
    ---@param silent? boolean
    --- Gives the actor experience. If 'silent' is true, no animation or sound will be played if the actor levels up.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)
    GiveExperience = function(amount, silent) end;

    ---@param numLevels integer
    ---@param silent? boolean
    --- Gives the actor level(s). If 'silent' is true, no animation or sound will be played.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)
    GiveLevels = function(numLevels, silent) end;

    ---@class actor
    ---@field Experience integer The actor's amount of experience.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

    ---@class actor
    ---@field Level integer The actor's level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

    ---@class actor
    ---@field MaxLevel integer The actor's maximum possible level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

    ---@class actor
    ---@field CanGainLevel boolean Returns true if the actor can gain a level.
    --- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

    ---@param name string
    ---@return boolean
    --- Test whether an actor has a specific property.
    HasProperty = function(name) end;

    ---@param color Color
    ---@param count? integer
    ---@param interval? integer
    ---@param delay? integer
    --- Render a target flash on the actor.
    Flash = function(color, count, interval, delay) end;

    ---@class actor
    ---@field IsInWorld boolean Specifies whether the actor is in the world.

    ---@class actor
    ---@field IsDead boolean Specifies whether the actor is alive or dead.

    ---@class actor
    ---@field IsIdle boolean Specifies whether the actor is idle (not performing any activities).

    ---@class actor
    ---@field Owner player The player that owns the actor.

    ---@class actor
    ---@field Type string The type of the actor (e.g. "e1").

    ---@class actor
    ---@field EffectiveOwner player The effective owner of the actor.

    ---@param cell cpos
    --- Instantly moves the actor to the specified cell.
    --- *Queued Activity*
    Teleport = function(cell) end;

    ---@param func function
    --- Run an arbitrary Lua function.
    --- *Queued Activity*
    CallFunc = function(func) end;

    ---@param ticks integer
    --- Wait for a specified number of game ticks (25 ticks = 1 second).
    --- *Queued Activity*
    Wait = function(ticks) end;

    --- Remove the actor from the game, without triggering any death notification.
    --- *Queued Activity*
    Destroy = function() end;

    --- Attempt to cancel any active activities.
    Stop = function() end;

    ---@param tag string
    ---@return boolean
    --- Add a tag to the actor. Returns true on success, false otherwise (for example the actor may already have the given tag).
    AddTag = function(tag) end;

    ---@param tag string
    ---@return boolean
    --- Remove a tag from the actor. Returns true on success, false otherwise (tag was not present).
    RemoveTag = function(tag) end;

    ---@param tag string
    ---@return boolean
    --- Specifies whether or not the actor has a particular tag.
    HasTag = function(tag) end;

    ---@class actor
    ---@field Location cpos The actor position in cell coordinates.

    ---@class actor
    ---@field CenterPosition wpos The actor position in world coordinates.

    ---@class actor
    ---@field Facing wangle The direction that the actor is facing.

    ---@class actor
    ---@field Stance string Current actor stance. Returns nil if this actor doesn't support stances.

    ---@class actor
    ---@field TooltipName string The actor's tooltip name. Returns nil if the actor has no tooltip.

    ---@class actor
    ---@field IsTaggable boolean Specifies whether or not the actor supports 'tags'.

    ---@param targetActor actor
    --- Guard the target actor.
    --- *Queued Activity*
    --- **Requires Traits:** [Guard](https://docs.openra.net/en/latest/release/traits/#guard), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
    Guard = function(targetActor) end;

    --- Search for nearby resources and begin harvesting.
    --- *Queued Activity*
    --- **Requires Trait:** [Harvester](https://docs.openra.net/en/latest/release/traits/#harvester)
    FindResources = function() end;

    ---@param damageTypes? any
    --- Kill the actor. damageTypes may be omitted, specified as a string, or as table of strings.
    --- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)
    Kill = function(damageTypes) end;

    ---@class actor
    ---@field Health integer Current health of the actor.
    --- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)

    ---@class actor
    ---@field MaxHealth integer Maximum health of the actor.
    --- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)

    ---@param cell cpos
    ---@param closeEnough? integer
    --- Moves within the cell grid. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
    Move = function(cell, closeEnough) end;

    ---@param cell cpos
    --- Moves within the cell grid, ignoring lane biases.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
    ScriptedMove = function(cell) end;

    ---@param cell cpos
    --- Moves from outside the world into the cell grid.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
    MoveIntoWorld = function(cell) end;

    --- Leave the current position in a random direction.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
    Scatter = function() end;

    ---@param transport actor
    --- Move to and enter the transport.
    --- *Queued Activity*
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
    EnterTransport = function(transport) end;

    ---@class actor
    ---@field IsMobile boolean Whether the actor can move (false if immobilized).
    --- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)

    ---@param target cpos
    --- Activate the actor's NukePower.
    --- **Requires Trait:** [NukePower](https://docs.openra.net/en/latest/release/traits/#nukepower)
    ActivateNukePower = function(target) end;

    ---@param cell cpos
    --- Command transport to paradrop passengers near the target cell.
    --- *Queued Activity*
    --- **Requires Traits:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo), [ParaDrop](https://docs.openra.net/en/latest/release/traits/#paradrop)
    Paradrop = function(cell) end;

    ---@param target wpos
    ---@param facing? WAngle?
    ---@return actor[]
    --- Activate the actor's Paratroopers Power. Returns the aircraft that will drop the reinforcements.
    --- **Requires Trait:** [ParatroopersPower](https://docs.openra.net/en/latest/release/traits/#paratrooperspower)
    TargetParatroopers = function(target, facing) end;

    ---@param target wpos
    ---@param facing? integer
    ---@deprecated ActivateParatroopers is deprecated. Use TargetParatroopers instead.
    ---@return actor[]
    --- Activate the actor's Paratroopers Power. Returns the aircraft that will drop the reinforcements. DEPRECATED! Will be removed.
    --- **Requires Trait:** [ParatroopersPower](https://docs.openra.net/en/latest/release/traits/#paratrooperspower)
    ActivateParatroopers = function(target, facing) end;

    ---@class actor
    ---@field Power integer Returns the power drained/provided by this actor.
    --- **Requires Trait:** [Power](https://docs.openra.net/en/latest/release/traits/#power)

    ---@param actorType string
    ---@param factionVariant? string
    ---@param productionType? string
    --- Build a unit, ignoring the production queue. The activity will wait if the exit is blocked.
    --- If productionType is nil or unavailable, then an exit will be selected based on 'Buildable.BuildAtProductionType'.
    --- If 'Buildable.BuildAtProductionType' is not set either, a random exit will be selected.
    --- *Queued Activity*
    --- **Requires Trait:** [Production](https://docs.openra.net/en/latest/release/traits/#production)
    Produce = function(actorType, factionVariant, productionType) end;

    ---@class actor
    ---@field RallyPoint cpos Query or set a factory's rally point.
    --- **Requires Trait:** [RallyPoint](https://docs.openra.net/en/latest/release/traits/#rallypoint)

    ---@class actor
    ---@field IsPrimaryBuilding boolean Query or set the factory's primary building status.
    --- **Requires Trait:** [PrimaryBuilding](https://docs.openra.net/en/latest/release/traits/#primarybuilding)

    ---@param actorTypes string[]
    ---@param actionFunc? function
    ---@return boolean
    --- Build the specified set of actors using a TD-style (per building) production queue. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(Actor[] actors) once production of all actors has been completed.  The actors array is guaranteed to only contain alive actors.
    --- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/latest/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
    Build = function(actorTypes, actionFunc) end;

    ---@param actorType string
    ---@return boolean
    --- Check whether the factory's production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
    --- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/latest/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
    IsProducing = function(actorType) end;

    ---@param repairer? player
    --- Start repairs on this building. `repairer` can be an allied player.
    --- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/latest/release/traits/#repairablebuilding)
    StartBuildingRepairs = function(repairer) end;

    ---@param repairer? player
    --- Stop repairs on this building. `repairer` can be an allied player.
    --- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/latest/release/traits/#repairablebuilding)
    StopBuildingRepairs = function(repairer) end;

    --- Makes the unit automatically run around and become faster.
    --- *Queued Activity*
    --- **Requires Trait:** [ScaredyCat](https://docs.openra.net/en/latest/release/traits/#scaredycat)
    Panic = function() end;

    --- Start selling the actor.
    --- **Requires Trait:** [Sellable](https://docs.openra.net/en/latest/release/traits/#sellable)
    Sell = function() end;

    --- Queue a new transformation.
    --- *Queued Activity*
    --- **Requires Trait:** [Transforms](https://docs.openra.net/en/latest/release/traits/#transforms)
    Deploy = function() end;

    ---@param a actor
    --- Teleport an existing actor inside this transport.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
    LoadPassenger = function(a) end;

    ---@param a? actor
    ---@return actor
    --- Remove an existing actor (or first actor if none specified) from the transport.  This actor is not added to the world.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
    UnloadPassenger = function(a) end;

    ---@param cell? CPos?
    ---@param unloadRange? integer
    --- Command transport to unload passengers.
    --- *Queued Activity*
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
    UnloadPassengers = function(cell, unloadRange) end;

    ---@class actor
    ---@field Passengers actor[] Returns references to passengers inside the transport.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

    ---@class actor
    ---@field HasPassengers boolean Specifies whether transport has any passengers.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

    ---@class actor
    ---@field PassengerCount integer Specifies the amount of passengers.
    --- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

    ---@param target cpos
    --- Activate the actor's IonCannonPower.
    --- **Requires Trait:** [IonCannonPower](https://docs.openra.net/en/latest/release/traits/#ioncannonpower)
    ActivateIonCannon = function(target) end;

    ---@param unitLocationPairs table
    ---@param duration? integer
    ---@param killCargo? boolean
    --- Chronoshift a group of actors. A duration of 0 will teleport the actors permanently.
    --- **Requires Trait:** [ChronoshiftPower](https://docs.openra.net/en/latest/release/traits/#chronoshiftpower)
    Chronoshift = function(unitLocationPairs, duration, killCargo) end;

    ---@param target actor
    --- Disguises as the target actor.
    --- **Requires Trait:** [Disguise](https://docs.openra.net/en/latest/release/traits/#disguise)
    DisguiseAs = function(target) end;

    ---@param actorType string
    ---@param newOwner player
    --- Disguises as the target type with the specified owner.
    --- **Requires Trait:** [Disguise](https://docs.openra.net/en/latest/release/traits/#disguise)
    DisguiseAsType = function(actorType, newOwner) end;

    ---@param target actor
    --- Infiltrate the target actor.
    --- **Requires Trait:** [Infiltrates](https://docs.openra.net/en/latest/release/traits/#infiltrates)
    Infiltrate = function(target) end;
}

---@class player
local __player = {

    ---@param targetPlayer player
    ---@return boolean
    --- Returns true if the player is allied with the other player.
    IsAlliedWith = function(targetPlayer) end;

    ---@param description string
    ---@param type? string
    ---@param required? boolean
    ---@return integer
    --- Add a mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    AddObjective = function(description, type, required) end;

    ---@param description string
    ---@return integer
    --- Add a primary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    AddPrimaryObjective = function(description) end;

    ---@param description string
    ---@return integer
    --- Add a secondary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    AddSecondaryObjective = function(description) end;

    ---@param id integer
    --- Mark an objective as completed.  This needs the objective ID returned by AddObjective as argument.  When this player has completed all primary objectives, (s)he has won the game.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    MarkCompletedObjective = function(id) end;

    ---@param id integer
    --- Mark an objective as failed.  This needs the objective ID returned by AddObjective as argument.  Secondary objectives do not have any influence whatsoever on the outcome of the game.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    MarkFailedObjective = function(id) end;

    ---@param id integer
    ---@return boolean
    --- Returns true if the objective has been successfully completed, false otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    IsObjectiveCompleted = function(id) end;

    ---@param id integer
    ---@return boolean
    --- Returns true if the objective has been failed, false otherwise.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    IsObjectiveFailed = function(id) end;

    ---@param id integer
    ---@return string
    --- Returns the description of an objective.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    GetObjectiveDescription = function(id) end;

    ---@param id integer
    ---@return string
    --- Returns the type of an objective.
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    GetObjectiveType = function(id) end;

    ---@return boolean
    --- Returns true if this player has lost all units/actors that have the MustBeDestroyed trait (according to the short game option).
    --- *Queued Activity*
    --- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
    HasNoRequiredUnits = function() end;

    ---@param condition string
    ---@param duration? integer
    ---@return integer
    --- Grant an external condition on the player actor and return the revocation token.
    --- Conditions must be defined on an ExternalConditions trait on the player actor.
    --- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
    GrantCondition = function(condition, duration) end;

    ---@param token integer
    --- Revoke a condition using the token returned by GrantCondition.
    RevokeCondition = function(token) end;

    ---@param condition string
    ---@return boolean
    --- Check whether this player actor accepts a specific external condition.
    AcceptsCondition = function(condition) end;

    ---@class player
    ---@field Experience integer     --- **Requires Trait:** [PlayerExperience](https://docs.openra.net/en/latest/release/traits/#playerexperience)

    ---@return actor[]
    --- Returns all living actors staying inside the world for this player.
    GetActors = function() end;

    ---@return actor[]
    --- Returns an array of actors representing all ground attack units of this player.
    GetGroundAttackers = function() end;

    ---@param type string
    ---@return actor[]
    --- Returns all living actors of the specified type of this player.
    GetActorsByType = function(type) end;

    ---@param types string[]
    ---@return actor[]
    --- Returns all living actors of the specified types of this player.
    GetActorsByTypes = function(types) end;

    ---@param type string[]
    ---@return boolean
    --- Check if the player has these prerequisites available.
    HasPrerequisites = function(type) end;

    ---@class player
    ---@field InternalName string The player's internal name.

    ---@class player
    ---@field Name string The player's name.

    ---@class player
    ---@field Color Color The player's color.

    ---@class player
    ---@field Faction string The player's faction.

    ---@class player
    ---@field Spawn integer The player's spawnpoint ID.

    ---@class player
    ---@field HomeLocation cpos The player's home/starting location.

    ---@class player
    ---@field Team integer The player's team ID.

    ---@class player
    ---@field Handicap integer The player's handicap level.

    ---@class player
    ---@field IsBot boolean Returns true if the player is a bot.

    ---@class player
    ---@field IsNonCombatant boolean Returns true if the player is non combatant.

    ---@class player
    ---@field IsLocalPlayer boolean Returns true if the player is the local player.

    ---@class player
    ---@field KillsCost integer The combined value of units killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@class player
    ---@field DeathsCost integer The combined value of all units lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@class player
    ---@field UnitsKilled integer The total number of units killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@class player
    ---@field UnitsLost integer The total number of units lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@class player
    ---@field BuildingsKilled integer The total number of buildings killed by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@class player
    ---@field BuildingsLost integer The total number of buildings lost by this player.
    --- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

    ---@param ticks integer
    --- Triggers low power for the chosen amount of ticks.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)
    TriggerPowerOutage = function(ticks) end;

    ---@class player
    ---@field PowerProvided integer Returns the total of the power the player has.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

    ---@class player
    ---@field PowerDrained integer Returns the power used by the player.
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

    ---@class player
    ---@field PowerState string Returns the player's power state ("Normal", "Low" or "Critical").
    --- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

    ---@param actorTypes string[]
    ---@param actionFunc? function
    ---@return boolean
    --- Build the specified set of actors using classic (RA-style) production queues. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(Actor[] actors) once production of all actors has been completed. The actors array is guaranteed to only contain alive actors. Note: This function will fail to work when called during the first tick.
    --- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/latest/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
    Build = function(actorTypes, actionFunc) end;

    ---@param actorType string
    ---@return boolean
    --- Check whether the production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
    --- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/latest/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
    IsProducing = function(actorType) end;

    ---@class player
    ---@field Resources integer The amount of harvestable resources held by the player.
    --- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)

    ---@class player
    ---@field ResourceCapacity integer The maximum resource storage of the player.
    --- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)

    ---@class player
    ---@field Cash integer The amount of cash held by the player.
    --- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)
}

