-- This is an automatically generated Lua API definition generated for {DEV_VERSION} of OpenRA.
-- https://wiki.openra.net/Utility was used with the --emmy-lua-api parameter.
-- See https://docs.openra.net/en/latest/release/lua/ for human readable documentation.

--- This function is triggered once, after the map is loaded.
function WorldLoaded() end

--- This function will hit every game tick which by default is every 40 ms.
function Tick() end

---@alias Color HSLColor

---@class initTable
---@field Location CPos
---@field Owner Player
---@field Facing WAngle
---@field CreationActivityDelay integer
---@field CenterPosition WPos
---@field Faction string
---@field EffectiveOwner Player
---@field Stance UnitStance
---@field FreeActor boolean
---@field ParentActor ActorInitActorReference
---@field LineBuildDirection LineBuildDirection
---@field LineBuildParent string[]
---@field RuntimeCargo Actor[]
---@field Cargo string[]
---@field DeployState DeployState
---@field Experience integer
---@field Health integer
---@field HuskSpeed integer
---@field Plug string
---@field ProductionSpawnLocation CPos
---@field ScriptTags string[]
---@field TurretFacing WAngle
---@field SpawnedByMap string
---@field BodyAnimationFrame integer

---Global variable provided by the game scripting engine.
Actor = { }

---@class Actor
local actor = { }

---@param type string
---@param queue? string
---@return integer
--- Returns the build time (in ticks) of the requested unit type.
--- An optional second value can be used to exactly specify the producing queue type.
function Actor.BuildTime(type, queue) end

---@param type string
---@return integer
function Actor.Cost(type) end

---@param type string
---@param addToWorld boolean
---@param initTable initTable
---@return Actor
--- Create a new actor. initTable specifies a list of key-value pairs that defines the initial parameters for the actor's traits.
function Actor.Create(type, addToWorld, initTable) end

---@param type string
---@return integer
--- Returns the cruise altitude of the requested unit type (zero if it is ground-based).
function Actor.CruiseAltitude(type) end

---Global variable provided by the game scripting engine.
Angle = { }

---@class Angle
local angle = { }

function Angle.East() end

---@param a integer
---@return WAngle
--- Create an arbitrary angle.
function Angle.New(a) end

function Angle.North() end

function Angle.NorthEast() end

function Angle.NorthWest() end

function Angle.South() end

function Angle.SouthEast() end

function Angle.SouthWest() end

function Angle.West() end

---Global variable provided by the game scripting engine.
Beacon = { }

---@class Beacon
local beacon = { }

---@param owner Player
---@param position WPos
---@param duration? integer
---@param showRadarPings? boolean
---@return void
--- Creates a new beacon that stays for the specified time at the specified WPos. Does not remove player set beacons, nor gets removed by placing them. Requires the 'PlaceBeacon' trait on the player actor.
function Beacon.New(owner, position, duration, showRadarPings) end

---Global variable provided by the game scripting engine.
Camera = { }

---@class Camera
local camera = { }

--- The center of the visible viewport.
function Camera.Position() end

---Global variable provided by the game scripting engine.
HSLColor = { }

---@class HSLColor
local hslcolor = { }

function HSLColor.Aqua() end

function HSLColor.Black() end

function HSLColor.Blue() end

function HSLColor.Brown() end

function HSLColor.Cyan() end

function HSLColor.DarkBlue() end

function HSLColor.DarkCyan() end

function HSLColor.DarkGray() end

function HSLColor.DarkGreen() end

function HSLColor.DarkOrange() end

function HSLColor.DarkRed() end

---@param value string
---@return Color
--- Create a new color with the specified red/green/blue/[alpha] hex string (rrggbb[aa]).
function HSLColor.FromHex(value) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha? integer
---@return Color
--- Create a new color with the specified red/green/blue/[alpha] values.
function HSLColor.FromRGB(red, green, blue, alpha) end

function HSLColor.Fuchsia() end

function HSLColor.Gold() end

function HSLColor.Gray() end

function HSLColor.Green() end

function HSLColor.LawnGreen() end

function HSLColor.LightBlue() end

function HSLColor.LightCyan() end

function HSLColor.LightGray() end

function HSLColor.LightGreen() end

function HSLColor.LightYellow() end

function HSLColor.Lime() end

function HSLColor.LimeGreen() end

function HSLColor.Magenta() end

function HSLColor.Maroon() end

function HSLColor.Navy() end

---@param hue integer
---@param saturation integer
---@param luminosity integer
---@return Color
--- Create a new color with the specified hue/saturation/luminosity.
function HSLColor.New(hue, saturation, luminosity) end

function HSLColor.Olive() end

function HSLColor.Orange() end

function HSLColor.OrangeRed() end

function HSLColor.Purple() end

function HSLColor.Red() end

function HSLColor.Salmon() end

function HSLColor.SkyBlue() end

function HSLColor.Teal() end

function HSLColor.White() end

function HSLColor.Yellow() end

---Global variable provided by the game scripting engine.
CPos = { }

---@class CPos
local cpos = { }

---@param x integer
---@param y integer
---@return CPos
--- Create a new CPos with the specified coordinates.
function CPos.New(x, y) end

--- The cell coordinate origin.
function CPos.Zero() end

---Global variable provided by the game scripting engine.
CVec = { }

---@class CVec
local cvec = { }

---@param x integer
---@param y integer
---@return CVec
--- Create a new CVec with the specified coordinates.
function CVec.New(x, y) end

--- The cell zero-vector.
function CVec.Zero() end

---Global variable provided by the game scripting engine.
DateTime = { }

---@class DateTime
local datetime = { }

--- Get the current game time (in ticks).
function DateTime.GameTime() end

--- True on the 31st of October.
function DateTime.IsHalloween() end

---@param minutes integer
---@return integer
--- Converts the number of minutes into game time (ticks).
function DateTime.Minutes(minutes) end

---@param seconds integer
---@return integer
--- Converts the number of seconds into game time (ticks).
function DateTime.Seconds(seconds) end

--- Return or set the time limit (in ticks). When setting, the time limit will count from now. Setting the time limit to 0 will disable it.
function DateTime.TimeLimit() end

--- The notification string used for custom time limit warnings. See the TimeLimitManager trait documentation for details.
function DateTime.TimeLimitNotification() end

---Global variable provided by the game scripting engine.
---@deprecated
--- The Facing table is deprecated. Use Angle instead.
Facing = { }

---@class Facing
local facing = { }

---@deprecated Use Angle.East instead.
function Facing.East() end

---@deprecated Use Angle.North instead.
function Facing.North() end

---@deprecated Use Angle.NorthEast instead.
function Facing.NorthEast() end

---@deprecated Use Angle.NorthWest instead.
function Facing.NorthWest() end

---@deprecated Use Angle.South instead.
function Facing.South() end

---@deprecated Use Angle.SouthEast instead.
function Facing.SouthEast() end

---@deprecated Use Angle.SouthWest instead.
function Facing.SouthWest() end

---@deprecated Use Angle.West instead.
function Facing.West() end

---Global variable provided by the game scripting engine.
Lighting = { }

---@class Lighting
local lighting = { }

function Lighting.Ambient() end

function Lighting.Blue() end

---@param type? string
---@param ticks? integer
---@return void
--- Controls the `FlashPaletteEffect` trait.
function Lighting.Flash(type, ticks) end

function Lighting.Green() end

function Lighting.Red() end

---Global variable provided by the game scripting engine.
Map = { }

---@class Map
local map = { }

---@param topLeft WPos
---@param bottomRight WPos
---@param filter? function
---@return Actor[]
--- Returns a table of all actors within the requested rectangle, filtered using the specified function.
function Map.ActorsInBox(topLeft, bottomRight, filter) end

---@param location WPos
---@param radius WDist
---@param filter? function
---@return Actor[]
--- Returns a table of all actors within the requested region, filtered using the specified function.
function Map.ActorsInCircle(location, radius, filter) end

--- Returns a table of all the actors that are currently on the map/in the world.
function Map.ActorsInWorld() end

---@param tag string
---@return Actor[]
--- Returns a table of all actors tagged with the given string.
function Map.ActorsWithTag(tag) end

--- Returns the location of the bottom-right corner of the map (assuming zero terrain height).
function Map.BottomRight() end

---@param cell CPos
---@return WPos
--- Returns the center of a cell in world coordinates.
function Map.CenterOfCell(cell) end

---@param givenCell CPos
---@return CPos
--- Returns the closest cell on the visible border of the map from the given cell.
function Map.ClosestEdgeCell(givenCell) end

---@param givenCell CPos
---@param filter function
---@return CPos
--- Returns the first cell on the visible border of the map from the given cell,
--- matching the filter function called as function(CPos cell).
function Map.ClosestMatchingEdgeCell(givenCell, filter) end

---@param actor Actor
---@return boolean
--- Returns true if actor was originally specified in the map file.
function Map.IsNamedActor(actor) end

--- Returns true if this is a shellmap and the player has paused animations.
function Map.IsPausedShellmap() end

--- Returns true if there is only one human player.
function Map.IsSinglePlayer() end

---@param id string
---@return any
--- Returns the value of a `ScriptLobbyDropdown` selected in the game lobby.
function Map.LobbyOption(id) end

---@param actorName string
---@return Actor
--- Returns the actor that was specified with a given name in the map file (or nil, if the actor is dead or not found).
function Map.NamedActor(actorName) end

--- Returns a table of all the actors that were specified in the map file.
function Map.NamedActors() end

---@return CPos
--- Returns a random cell inside the visible region of the map.
function Map.RandomCell() end

---@return CPos
--- Returns a random cell on the visible border of the map.
function Map.RandomEdgeCell() end

---@param cell CPos
---@return string
--- Returns the type of the terrain at the target cell.
function Map.TerrainType(cell) end

--- Returns the location of the top-left corner of the map (assuming zero terrain height).
function Map.TopLeft() end

---Global variable provided by the game scripting engine.
Media = { }

---@class Media
local media = { }

---@param text string
---@return void
--- Displays a debug message to the player, if "Show Map Debug Messages" is checked in the settings.
function Media.Debug(text) end

---@param text string
---@param prefix? string
---@param color? Color?
---@return void
--- Display a text message to the player.
function Media.DisplayMessage(text, prefix, color) end

---@param text string
---@param prefix? string
---@return void
--- Display a system message to the player. If 'prefix' is nil the default system prefix is used.
function Media.DisplaySystemMessage(text, prefix) end

---@param text string
---@param position WPos
---@param duration? integer
---@param color? Color?
---@return void
--- Display a text message at the specified location.
function Media.FloatingText(text, position, duration, color) end

---@param movie string
---@param func? function
---@return void
--- Play a VQA video fullscreen. File name has to include the file extension.
function Media.PlayMovieFullscreen(movie, func) end

---@param movie string
---@param playComplete? function
---@return boolean
--- Play a VQA video in the radar window. File name has to include the file extension. Returns true on success, if the movie wasn't found the function returns false and the callback is executed.
function Media.PlayMovieInRadar(movie, playComplete) end

---@param track? string
---@param func? function
---@return void
--- Play track defined in music.yaml or map.yaml, or keep track empty for playing a random song.
function Media.PlayMusic(track, func) end

---@param file string
---@return void
--- Play a sound file
function Media.PlaySound(file) end

---@param player Player
---@param notification string
---@return void
--- Play a sound listed in notifications.yaml
function Media.PlaySoundNotification(player, notification) end

---@param player Player
---@param notification string
---@return void
--- Play an announcer voice listed in notifications.yaml
function Media.PlaySpeechNotification(player, notification) end

---@param track? string
---@return void
--- Play track defined in music.yaml or map.yaml as background music. If music is already playing use Media.StopMusic() to stop it and the background music will start automatically. Keep the track empty to disable background music.
function Media.SetBackgroundMusic(track) end

---@return void
--- Stop the current song.
function Media.StopMusic() end

---Global variable provided by the game scripting engine.
Player = { }

---@class Player
local player = { }

---@param name string
---@return Player
--- Returns the player with the specified internal name, or nil if a match is not found.
function Player.GetPlayer(name) end

---@param filter function
---@return Player[]
--- Returns a table of players filtered by the specified function.
function Player.GetPlayers(filter) end

---Global variable provided by the game scripting engine.
Radar = { }

---@class Radar
local radar = { }

---@param player Player
---@param position WPos
---@param color Color
---@param duration? integer
---@return void
--- Creates a new radar ping that stays for the specified time at the specified WPos.
function Radar.Ping(player, position, color, duration) end

---Global variable provided by the game scripting engine.
Reinforcements = { }

---@class Reinforcements
local reinforcements = { }

---@param owner Player
---@param actorTypes string[]
---@param entryPath CPos[]
---@param interval? integer
---@param actionFunc? function
---@return Actor[]
--- Send reinforcements consisting of multiple units. Supports ground-based, naval and air units. The first member of the entryPath array will be the units' spawnpoint, while the last one will be their destination. If actionFunc is given, it will be executed once a unit has reached its destination. actionFunc will be called as actionFunc(Actor actor). Returns a table containing the deployed units.
function Reinforcements.Reinforce(owner, actorTypes, entryPath, interval, actionFunc) end

---@param owner Player
---@param actorType string
---@param cargoTypes string[]
---@param entryPath CPos[]
---@param exitPath? CPos[]
---@param actionFunc? function
---@param exitFunc? function
---@param dropRange? integer
---@return table
--- Send reinforcements in a transport. A transport can be a ground unit (APC etc.), ships and aircraft. The first member of the entryPath array will be the spawnpoint for the transport, while the last one will be its destination. The last member of the exitPath array is be the place where the transport will be removed from the game. When the transport has reached the destination, it will unload its cargo unless a custom actionFunc has been supplied. Afterwards, the transport will follow the exitPath and leave the map, unless a custom exitFunc has been supplied. actionFunc will be called as actionFunc(Actor transport, Actor[] cargo). exitFunc will be called as exitFunc(Actor transport). dropRange determines how many cells away the transport will try to land if the actual destination is blocked (if the transport is an aircraft). Returns a table in which the first value is the transport, and the second a table containing the deployed units.
function Reinforcements.ReinforceWithTransport(owner, actorType, cargoTypes, entryPath, exitPath, actionFunc, exitFunc, dropRange) end

---Global variable provided by the game scripting engine.
Trigger = { }

---@class Trigger
local trigger = { }

---@param delay integer
---@param func function
---@return void
--- Call a function after a specified delay. The callback function will be called as func().
function Trigger.AfterDelay(delay, func) end

---@param a Actor
---@param triggerName string
---@return void
--- Removes the specified trigger from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
function Trigger.Clear(a, triggerName) end

---@param a Actor
---@return void
--- Removes all triggers from this actor. Note that the removal will only take effect at the end of a tick, so you must not add new triggers at the same time that you are calling this function.
function Trigger.ClearAll(a) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is added to the world. The callback function will be called as func(Actor self).
function Trigger.OnAddedToWorld(a, func) end

---@param actors Actor[]
---@param func function
---@return void
--- Call a function when all of the actors in a group are killed. The callback function will be called as func().
function Trigger.OnAllKilled(actors, func) end

---@param actors Actor[]
---@param func function
---@return void
--- Call a function when all of the actors in a group have been killed or captured. The callback function will be called as func().
function Trigger.OnAllKilledOrCaptured(actors, func) end

---@param actors Actor[]
---@param func function
---@return void
--- Call a function when all of the actors in a group have been removed from the world. The callback function will be called as func().
function Trigger.OnAllRemovedFromWorld(actors, func) end

---@param actors Actor[]
---@param func function
---@return void
--- Call a function when one of the actors in a group is killed. The callback function will be called as func(Actor killed).
function Trigger.OnAnyKilled(actors, func) end

---@param func function
---@return void
--- Call a function when any actor produces another actor. The callback function will be called as func(Actor producer, Actor produced, string productionType).
function Trigger.OnAnyProduction(func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is captured. The callback function will be called as func(Actor self, Actor captor, Player oldOwner, Player newOwner).
function Trigger.OnCapture(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when the actor is damaged. The callback function will be called as func(Actor self, Actor attacker, int damage).
function Trigger.OnDamaged(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is discovered by an enemy or a player with a Neutral stance. The callback function will be called as func(Actor discovered, Player discoverer). The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
function Trigger.OnDiscovered(a, func) end

---@param cells CPos[]
---@param func function
---@return integer
--- Call a function when a ground-based actor enters this cell footprint. Returns the trigger id for later removal using RemoveFootprintTrigger(int id). The callback function will be called as func(Actor a, int id).
function Trigger.OnEnteredFootprint(cells, func) end

---@param pos WPos
---@param range WDist
---@param func function
---@return integer
--- Call a function when an actor enters this range. Returns the trigger id for later removal using RemoveProximityTrigger(int id). The callback function will be called as func(Actor a, int id).
function Trigger.OnEnteredProximityTrigger(pos, range, func) end

---@param cells CPos[]
---@param func function
---@return integer
--- Call a function when a ground-based actor leaves this cell footprint. Returns the trigger id for later removal using RemoveFootprintTrigger(int id). The callback function will be called as func(Actor a, int id).
function Trigger.OnExitedFootprint(cells, func) end

---@param pos WPos
---@param range WDist
---@param func function
---@return integer
--- Call a function when an actor leaves this range. Returns the trigger id for later removal using RemoveProximityTrigger(int id). The callback function will be called as func(Actor a, int id).
function Trigger.OnExitedProximityTrigger(pos, range, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function each tick that the actor is idle. The callback function will be called as func(Actor self).
function Trigger.OnIdle(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is infiltrated. The callback function will be called as func(Actor self, Actor infiltrator).
function Trigger.OnInfiltrated(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when the actor is killed. The callback function will be called as func(Actor self, Actor killer).
function Trigger.OnKilled(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is killed or captured. The callback function will be called as func().
function Trigger.OnKilledOrCaptured(a, func) end

---@param player Player
---@param func function
---@return void
--- Call a function when this player is assigned a new objective. The callback function will be called as func(Player player, int objectiveID).
function Trigger.OnObjectiveAdded(player, func) end

---@param player Player
---@param func function
---@return void
--- Call a function when this player completes an objective. The callback function will be called as func(Player player, int objectiveID).
function Trigger.OnObjectiveCompleted(player, func) end

---@param player Player
---@param func function
---@return void
--- Call a function when this player fails an objective. The callback function will be called as func(Player player, int objectiveID).
function Trigger.OnObjectiveFailed(player, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function for each passenger when it enters a transport. The callback function will be called as func(Actor transport, Actor passenger).
function Trigger.OnPassengerEntered(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function for each passenger when it exits a transport. The callback function will be called as func(Actor transport, Actor passenger).
function Trigger.OnPassengerExited(a, func) end

---@param discovered Player
---@param func function
---@return void
--- Call a function when this player is discovered by an enemy or neutral player. The callback function will be called as func(Player discovered, Player discoverer, Actor discoveredActor).The player actor needs the 'EnemyWatcher' trait. The actors to discover need the 'AnnounceOnSeen' trait.
function Trigger.OnPlayerDiscovered(discovered, func) end

---@param player Player
---@param func function
---@return void
--- Call a function when this player fails any primary objective. The callback function will be called as func(Player player).
function Trigger.OnPlayerLost(player, func) end

---@param player Player
---@param func function
---@return void
--- Call a function when this player completes all primary objectives. The callback function will be called as func(Player player).
function Trigger.OnPlayerWon(player, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor produces another actor. The callback function will be called as func(Actor producer, Actor produced).
function Trigger.OnProduction(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is removed from the world. The callback function will be called as func(Actor self).
function Trigger.OnRemovedFromWorld(a, func) end

---@param a Actor
---@param func function
---@return void
--- Call a function when this actor is sold. The callback function will be called as func(Actor self).
function Trigger.OnSold(a, func) end

---@param func function
---@return void
--- Call a function when the game timer expires. The callback function will be called as func().
function Trigger.OnTimerExpired(func) end

---@param id integer
---@return void
--- Removes a previously created footprint trigger.
function Trigger.RemoveFootprintTrigger(id) end

---@param id integer
---@return void
--- Removes a previously created proximity trigger.
function Trigger.RemoveProximityTrigger(id) end

---Global variable provided by the game scripting engine.
UserInterface = { }

---@class UserInterface
local userinterface = { }

---@param text string
---@param color? Color?
---@return void
--- Displays a text message at the top center of the screen.
function UserInterface.SetMissionText(text, color) end

---@param text string
---@return string
function UserInterface.Translate(text) end

---Global variable provided by the game scripting engine.
Utils = { }

---@class Utils
local utils = { }

---@param collection table
---@param func function
---@return boolean
--- Returns true if func returns true for all elements in a collection.
function Utils.All(collection, func) end

---@param collection table
---@param func function
---@return boolean
--- Returns true if func returns true for any element in a collection.
function Utils.Any(collection, func) end

---@param collection table
---@param func function
---@return void
--- Calls a function on every element in a collection.
function Utils.Do(collection, func) end

---@param footprint CPos[]
---@param allowDiagonal boolean
---@return CPos[]
--- Expands the given footprint one step along the coordinate axes, and (if requested) diagonals.
function Utils.ExpandFootprint(footprint, allowDiagonal) end

---@param ticks integer
---@param leadingMinuteZero? boolean
---@return string
--- Returns the ticks formatted to HH:MM:SS.
function Utils.FormatTime(ticks, leadingMinuteZero) end

---@param collection table
---@return any
--- Returns a random value from a collection.
function Utils.Random(collection) end

---@param low integer
---@param high integer
---@return integer
--- Returns a random integer x in the range low &lt;= x &lt; high.
function Utils.RandomInteger(low, high) end

---@param collection table
---@return table
--- Returns the collection in a random order.
function Utils.Shuffle(collection) end

---@param table table
---@param numElements integer
---@return table
--- Skips over the first numElements members of a table and return the rest.
function Utils.Skip(table, numElements) end

---@param n integer
---@param source table
---@return table
--- Returns the first n values from a collection.
function Utils.Take(n, source) end

---@param collection table
---@param func function
---@return table
--- Returns the original collection filtered with the func.
function Utils.Where(collection, func) end

---Global variable provided by the game scripting engine.
WDist = { }

---@class WDist
local wdist = { }

---@param numCells integer
---@return WDist
--- Create a new WDist by cell distance.
function WDist.FromCells(numCells) end

---@param r integer
---@return WDist
--- Create a new WDist.
function WDist.New(r) end

---Global variable provided by the game scripting engine.
WPos = { }

---@class WPos
local wpos = { }

---@param x integer
---@param y integer
---@param z integer
---@return WPos
--- Create a new WPos with the specified coordinates.
function WPos.New(x, y, z) end

--- The world coordinate origin.
function WPos.Zero() end

---Global variable provided by the game scripting engine.
WVec = { }

---@class WVec
local wvec = { }

---@param x integer
---@param y integer
---@param z integer
---@return WVec
--- Create a new WVec with the specified coordinates.
function WVec.New(x, y, z) end

--- The world zero-vector.
function WVec.Zero() end

---@class Actor
local actor = { }

---@param cell CPos
---@return void
--- Fly within the cell grid.
--- *Queued Activity*
--- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
function actor.Move(cell) end

---@param destination? Actor
---@return void
--- Return to the base, which is either the destination given, or an auto-selected one otherwise.
--- *Queued Activity*
--- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
function actor.ReturnToBase(destination) end

---@param landOn Actor
---@return void
--- Queues a landing activity on the specififed actor.
--- *Queued Activity*
--- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
function actor.Land(landOn) end

---@return void
--- Starts the resupplying activity when being on a host building.
--- *Queued Activity*
--- **Requires Trait:** [Aircraft](https://docs.openra.net/en/latest/release/traits/#aircraft)
function actor.Resupply() end

---@param target WPos
---@param facing? WAngle?
---@return Actor[]
--- Activate the actor's Airstrike Power. Returns the aircraft that will attack.
--- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
function actor.TargetAirstrike(target, facing) end

---@param target WPos
---@param randomize? boolean
---@param facing? integer
---@deprecated SendAirstrike is deprecated. Use TargetAirstrike instead.
---@return void
--- Activate the actor's Airstrike Power. DEPRECATED! Will be removed.
--- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
function actor.SendAirstrike(target, randomize, facing) end

---@param from CPos
---@param to CPos
---@deprecated SendAirstrikeFrom is deprecated. Use TargetAirstrike instead.
---@return void
--- Activate the actor's Airstrike Power. DEPRECATED! Will be removed.
--- **Requires Trait:** [AirstrikePower](https://docs.openra.net/en/latest/release/traits/#airstrikepower)
function actor.SendAirstrikeFrom(from, to) end

---@param poolName? string
---@return integer
--- Returns the count of the actor's specified ammopool.
--- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
function actor.AmmoCount(poolName) end

---@param poolName? string
---@return integer
--- Returns the maximum count of ammo the actor can load.
--- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
function actor.MaximumAmmoCount(poolName) end

---@param poolName? string
---@param amount? integer
---@return void
--- Adds the specified amount of ammo to the specified ammopool.
--- (Use a negative amount to remove ammo.)
--- **Requires Trait:** [AmmoPool](https://docs.openra.net/en/latest/release/traits/#ammopool)
function actor.Reload(poolName, amount) end

---@param target Actor
---@return void
--- Captures the target actor.
--- **Requires Trait:** [CaptureManager](https://docs.openra.net/en/latest/release/traits/#capturemanager)
function actor.Capture(target) end

---@class Actor
---@field IsCloaked boolean Returns true if the actor is cloaked.
--- **Requires Trait:** [Cloak](https://docs.openra.net/en/latest/release/traits/#cloak)

---@return void
--- Seek out and attack nearby targets.
--- *Queued Activity*
--- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
function actor.Hunt() end

---@param cell CPos
---@param closeEnough? integer
---@return void
--- Move to a cell, but stop and attack anything within range on the way. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
--- *Queued Activity*
--- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
function actor.AttackMove(cell, closeEnough) end

---@param waypoints CPos[]
---@param loop? boolean
---@param wait? integer
---@return void
--- Patrol along a set of given waypoints. The action is repeated by default, and the actor will wait for `wait` ticks at each waypoint.
--- *Queued Activity*
--- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
function actor.Patrol(waypoints, loop, wait) end

---@param waypoints CPos[]
---@param func function
---@param wait? integer
---@return void
--- Patrol along a set of given waypoints until a condition becomes true. The actor will wait for `wait` ticks at each waypoint.
--- *Queued Activity*
--- **Requires Traits:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
function actor.PatrolUntil(waypoints, func, wait) end

---@param targetActor Actor
---@param allowMove? boolean
---@param forceAttack? boolean
---@return void
--- Attack the target actor. The target actor needs to be visible.
--- **Requires Trait:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase)
function actor.Attack(targetActor, allowMove, forceAttack) end

---@param targetActor Actor
---@return boolean
--- Checks if the targeted actor is a valid target for this actor.
--- **Requires Trait:** [AttackBase](https://docs.openra.net/en/latest/release/traits/#attackbase)
function actor.CanTarget(targetActor) end

---@param condition string
---@param duration? integer
---@return integer
--- Grant an external condition on this actor and return the revocation token.
--- Conditions must be defined on an ExternalConditions trait on the actor.
--- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
--- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
function actor.GrantCondition(condition, duration) end

---@param token integer
---@return void
--- Revoke a condition using the token returned by GrantCondition.
--- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
function actor.RevokeCondition(token) end

---@param condition string
---@return boolean
--- Check whether this actor accepts a specific external condition.
--- **Requires Trait:** [ExternalCondition](https://docs.openra.net/en/latest/release/traits/#externalcondition)
function actor.AcceptsCondition(condition) end

---@param target Actor
---@return void
--- Deliver cash to the target actor.
--- *Queued Activity*
--- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [DeliversCash](https://docs.openra.net/en/latest/release/traits/#deliverscash)
function actor.DeliverCash(target) end

---@param target Actor
---@return void
--- Deliver experience to the target actor.
--- *Queued Activity*
--- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [DeliversExperience](https://docs.openra.net/en/latest/release/traits/#deliversexperience)
function actor.DeliverExperience(target) end

---@param target Actor
---@return void
--- Demolish the target actor.
--- *Queued Activity*
--- **Requires Traits:** [IMove](https://docs.openra.net/en/latest/release/traits/#imove), [Demolition](https://docs.openra.net/en/latest/release/traits/#demolition)
function actor.Demolish(target) end

---@param amount integer
---@param silent? boolean
---@return void
--- Gives the actor experience. If 'silent' is true, no animation or sound will be played if the actor levels up.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)
function actor.GiveExperience(amount, silent) end

---@param numLevels integer
---@param silent? boolean
---@return void
--- Gives the actor level(s). If 'silent' is true, no animation or sound will be played.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)
function actor.GiveLevels(numLevels, silent) end

---@class Actor
---@field Experience integer The actor's amount of experience.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

---@class Actor
---@field Level integer The actor's level.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

---@class Actor
---@field MaxLevel integer The actor's maximum possible level.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

---@class Actor
---@field CanGainLevel boolean Returns true if the actor can gain a level.
--- **Requires Trait:** [GainsExperience](https://docs.openra.net/en/latest/release/traits/#gainsexperience)

---@param name string
---@return boolean
--- Test whether an actor has a specific property.
function actor.HasProperty(name) end

---@param duration? integer
---@param asPlayer? Player
---@return void
--- Render a target flash on the actor. If set, 'asPlayer'
--- defines which player palette to use. Duration is in ticks.
function actor.Flash(duration, asPlayer) end

---@class Actor
---@field IsInWorld boolean Specifies whether the actor is in the world.

---@class Actor
---@field IsDead boolean Specifies whether the actor is alive or dead.

---@class Actor
---@field IsIdle boolean Specifies whether the actor is idle (not performing any activities).

---@class Actor
---@field Owner Player The player that owns the actor.

---@class Actor
---@field Type string The type of the actor (e.g. "e1").

---@class Actor
---@field EffectiveOwner Player The effective owner of the actor.

---@param cell CPos
---@return void
--- Instantly moves the actor to the specified cell.
--- *Queued Activity*
function actor.Teleport(cell) end

---@param func function
---@return void
--- Run an arbitrary Lua function.
--- *Queued Activity*
function actor.CallFunc(func) end

---@param ticks integer
---@return void
--- Wait for a specified number of game ticks (25 ticks = 1 second).
--- *Queued Activity*
function actor.Wait(ticks) end

---@return void
--- Remove the actor from the game, without triggering any death notification.
--- *Queued Activity*
function actor.Destroy() end

---@return void
--- Attempt to cancel any active activities.
function actor.Stop() end

---@param tag string
---@return boolean
--- Add a tag to the actor. Returns true on success, false otherwise (for example the actor may already have the given tag).
function actor.AddTag(tag) end

---@param tag string
---@return boolean
--- Remove a tag from the actor. Returns true on success, false otherwise (tag was not present).
function actor.RemoveTag(tag) end

---@param tag string
---@return boolean
--- Specifies whether or not the actor has a particular tag.
function actor.HasTag(tag) end

---@class Actor
---@field Location CPos The actor position in cell coordinates.

---@class Actor
---@field CenterPosition WPos The actor position in world coordinates.

---@class Actor
---@field Facing WAngle The direction that the actor is facing.

---@class Actor
---@field Stance string Current actor stance. Returns nil if this actor doesn't support stances.

---@class Actor
---@field TooltipName string The actor's tooltip name. Returns nil if the actor has no tooltip.

---@class Actor
---@field IsTaggable boolean Specifies whether or not the actor supports 'tags'.

---@param targetActor Actor
---@return void
--- Guard the target actor.
--- *Queued Activity*
--- **Requires Traits:** [Guard](https://docs.openra.net/en/latest/release/traits/#guard), [IMove](https://docs.openra.net/en/latest/release/traits/#imove)
function actor.Guard(targetActor) end

---@return void
--- Search for nearby resources and begin harvesting.
--- *Queued Activity*
--- **Requires Trait:** [Harvester](https://docs.openra.net/en/latest/release/traits/#harvester)
function actor.FindResources() end

---@param damageTypes? Object
---@return void
--- Kill the actor. damageTypes may be omitted, specified as a string, or as table of strings.
--- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)
function actor.Kill(damageTypes) end

---@class Actor
---@field Health integer Current health of the actor.
--- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)

---@class Actor
---@field MaxHealth integer Maximum health of the actor.
--- **Requires Trait:** [IHealth](https://docs.openra.net/en/latest/release/traits/#ihealth)

---@param cell CPos
---@param closeEnough? integer
---@return void
--- Moves within the cell grid. closeEnough defines an optional range (in cells) that will be considered close enough to complete the activity.
--- *Queued Activity*
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
function actor.Move(cell, closeEnough) end

---@param cell CPos
---@return void
--- Moves within the cell grid, ignoring lane biases.
--- *Queued Activity*
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
function actor.ScriptedMove(cell) end

---@param cell CPos
---@return void
--- Moves from outside the world into the cell grid.
--- *Queued Activity*
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
function actor.MoveIntoWorld(cell) end

---@return void
--- Leave the current position in a random direction.
--- *Queued Activity*
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
function actor.Scatter() end

---@param transport Actor
---@return void
--- Move to and enter the transport.
--- *Queued Activity*
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)
function actor.EnterTransport(transport) end

---@class Actor
---@field IsMobile boolean Whether the actor can move (false if immobilized).
--- **Requires Trait:** [Mobile](https://docs.openra.net/en/latest/release/traits/#mobile)

---@param target CPos
---@return void
--- Activate the actor's NukePower.
--- **Requires Trait:** [NukePower](https://docs.openra.net/en/latest/release/traits/#nukepower)
function actor.ActivateNukePower(target) end

---@param cell CPos
---@return void
--- Command transport to paradrop passengers near the target cell.
--- *Queued Activity*
--- **Requires Traits:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo), [ParaDrop](https://docs.openra.net/en/latest/release/traits/#paradrop)
function actor.Paradrop(cell) end

---@param target WPos
---@param facing? WAngle?
---@return Actor[]
--- Activate the actor's Paratroopers Power. Returns the aircraft that will drop the reinforcements.
--- **Requires Trait:** [ParatroopersPower](https://docs.openra.net/en/latest/release/traits/#paratrooperspower)
function actor.TargetParatroopers(target, facing) end

---@param target WPos
---@param facing? integer
---@deprecated ActivateParatroopers is deprecated. Use TargetParatroopers instead.
---@return Actor[]
--- Activate the actor's Paratroopers Power. Returns the aircraft that will drop the reinforcements. DEPRECATED! Will be removed.
--- **Requires Trait:** [ParatroopersPower](https://docs.openra.net/en/latest/release/traits/#paratrooperspower)
function actor.ActivateParatroopers(target, facing) end

---@class Actor
---@field Power integer Returns the power drained/provided by this actor.
--- **Requires Trait:** [Power](https://docs.openra.net/en/latest/release/traits/#power)

---@param actorType string
---@param factionVariant? string
---@param productionType? string
---@return void
--- Build a unit, ignoring the production queue. The activity will wait if the exit is blocked.
--- If productionType is nil or unavailable, then an exit will be selected based on 'Buildable.BuildAtProductionType'.
--- If 'Buildable.BuildAtProductionType' is not set either, a random exit will be selected.
--- *Queued Activity*
--- **Requires Trait:** [Production](https://docs.openra.net/en/latest/release/traits/#production)
function actor.Produce(actorType, factionVariant, productionType) end

---@class Actor
---@field RallyPoint CPos Query or set a factory's rally point.
--- **Requires Trait:** [RallyPoint](https://docs.openra.net/en/latest/release/traits/#rallypoint)

---@class Actor
---@field IsPrimaryBuilding boolean Query or set the factory's primary building status.
--- **Requires Trait:** [PrimaryBuilding](https://docs.openra.net/en/latest/release/traits/#primarybuilding)

---@param actorTypes string[]
---@param actionFunc? function
---@return boolean
--- Build the specified set of actors using a TD-style (per building) production queue. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(Actor[] actors) once production of all actors has been completed.  The actors array is guaranteed to only contain alive actors.
--- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/latest/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
function actor.Build(actorTypes, actionFunc) end

---@param actorType string
---@return boolean
--- Check whether the factory's production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
--- **Requires Traits:** [ProductionQueue](https://docs.openra.net/en/latest/release/traits/#productionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
function actor.IsProducing(actorType) end

---@param repairer? Player
---@return void
--- Start repairs on this building. `repairer` can be an allied player.
--- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/latest/release/traits/#repairablebuilding)
function actor.StartBuildingRepairs(repairer) end

---@param repairer? Player
---@return void
--- Stop repairs on this building. `repairer` can be an allied player.
--- **Requires Trait:** [RepairableBuilding](https://docs.openra.net/en/latest/release/traits/#repairablebuilding)
function actor.StopBuildingRepairs(repairer) end

---@return void
--- Makes the unit automatically run around and become faster.
--- *Queued Activity*
--- **Requires Trait:** [ScaredyCat](https://docs.openra.net/en/latest/release/traits/#scaredycat)
function actor.Panic() end

---@return void
--- Start selling the actor.
--- **Requires Trait:** [Sellable](https://docs.openra.net/en/latest/release/traits/#sellable)
function actor.Sell() end

---@return void
--- Queue a new transformation.
--- *Queued Activity*
--- **Requires Trait:** [Transforms](https://docs.openra.net/en/latest/release/traits/#transforms)
function actor.Deploy() end

---@param a Actor
---@return void
--- Teleport an existing actor inside this transport.
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
function actor.LoadPassenger(a) end

---@param a? Actor
---@return Actor
--- Remove an existing actor (or first actor if none specified) from the transport.  This actor is not added to the world.
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
function actor.UnloadPassenger(a) end

---@param cell? CPos?
---@param unloadRange? integer
---@return void
--- Command transport to unload passengers.
--- *Queued Activity*
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)
function actor.UnloadPassengers(cell, unloadRange) end

---@class Actor
---@field Passengers Actor[] Returns references to passengers inside the transport.
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

---@class Actor
---@field HasPassengers boolean Specifies whether transport has any passengers.
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

---@class Actor
---@field PassengerCount integer Specifies the amount of passengers.
--- **Requires Trait:** [Cargo](https://docs.openra.net/en/latest/release/traits/#cargo)

---@param target CPos
---@return void
--- Activate the actor's IonCannonPower.
--- **Requires Trait:** [IonCannonPower](https://docs.openra.net/en/latest/release/traits/#ioncannonpower)
function actor.ActivateIonCannon(target) end

---@param unitLocationPairs table
---@param duration? integer
---@param killCargo? boolean
---@return void
--- Chronoshift a group of actors. A duration of 0 will teleport the actors permanently.
--- **Requires Trait:** [ChronoshiftPower](https://docs.openra.net/en/latest/release/traits/#chronoshiftpower)
function actor.Chronoshift(unitLocationPairs, duration, killCargo) end

---@param target Actor
---@return void
--- Disguises as the target actor.
--- **Requires Trait:** [Disguise](https://docs.openra.net/en/latest/release/traits/#disguise)
function actor.DisguiseAs(target) end

---@param actorType string
---@param newOwner Player
---@return void
--- Disguises as the target type with the specified owner.
--- **Requires Trait:** [Disguise](https://docs.openra.net/en/latest/release/traits/#disguise)
function actor.DisguiseAsType(actorType, newOwner) end

---@param target Actor
---@return void
--- Infiltrate the target actor.
--- **Requires Trait:** [Infiltrates](https://docs.openra.net/en/latest/release/traits/#infiltrates)
function actor.Infiltrate(target) end

---@class Player
local player = { }

---@param targetPlayer Player
---@return boolean
--- Returns true if the player is allied with the other player.
function player.IsAlliedWith(targetPlayer) end

---@param description string
---@param type? string
---@param required? boolean
---@return integer
--- Add a mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.AddObjective(description, type, required) end

---@param description string
---@return integer
--- Add a primary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.AddPrimaryObjective(description) end

---@param description string
---@return integer
--- Add a secondary mission objective for this player. The function returns the ID of the newly created objective, so that it can be referred to later.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.AddSecondaryObjective(description) end

---@param id integer
---@return void
--- Mark an objective as completed.  This needs the objective ID returned by AddObjective as argument.  When this player has completed all primary objectives, (s)he has won the game.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.MarkCompletedObjective(id) end

---@param id integer
---@return void
--- Mark an objective as failed.  This needs the objective ID returned by AddObjective as argument.  Secondary objectives do not have any influence whatsoever on the outcome of the game.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.MarkFailedObjective(id) end

---@param id integer
---@return boolean
--- Returns true if the objective has been successfully completed, false otherwise.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.IsObjectiveCompleted(id) end

---@param id integer
---@return boolean
--- Returns true if the objective has been failed, false otherwise.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.IsObjectiveFailed(id) end

---@param id integer
---@return string
--- Returns the description of an objective.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.GetObjectiveDescription(id) end

---@param id integer
---@return string
--- Returns the type of an objective.
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.GetObjectiveType(id) end

---@return boolean
--- Returns true if this player has lost all units/actors that have the MustBeDestroyed trait (according to the short game option).
--- *Queued Activity*
--- **Requires Trait:** [MissionObjectives](https://docs.openra.net/en/latest/release/traits/#missionobjectives)
function player.HasNoRequiredUnits() end

---@param condition string
---@param duration? integer
---@return integer
--- Grant an external condition on the player actor and return the revocation token.
--- Conditions must be defined on an ExternalConditions trait on the player actor.
--- If duration > 0 the condition will be automatically revoked after the defined number of ticks.
function player.GrantCondition(condition, duration) end

---@param token integer
---@return void
--- Revoke a condition using the token returned by GrantCondition.
function player.RevokeCondition(token) end

---@param condition string
---@return boolean
--- Check whether this player actor accepts a specific external condition.
function player.AcceptsCondition(condition) end

---@class Player
---@field Experience integer --- **Requires Trait:** [PlayerExperience](https://docs.openra.net/en/latest/release/traits/#playerexperience)

---@return Actor[]
--- Returns all living actors staying inside the world for this player.
function player.GetActors() end

---@return Actor[]
--- Returns an array of actors representing all ground attack units of this player.
function player.GetGroundAttackers() end

---@param type string
---@return Actor[]
--- Returns all living actors of the specified type of this player.
function player.GetActorsByType(type) end

---@param types string[]
---@return Actor[]
--- Returns all living actors of the specified types of this player.
function player.GetActorsByTypes(types) end

---@param type string[]
---@return boolean
--- Check if the player has these prerequisites available.
function player.HasPrerequisites(type) end

---@class Player
---@field InternalName string The player's internal name.

---@class Player
---@field Name string The player's name.

---@class Player
---@field Color Color The player's color.

---@class Player
---@field Faction string The player's faction.

---@class Player
---@field Spawn integer The player's spawnpoint ID.

---@class Player
---@field HomeLocation CPos The player's home/starting location.

---@class Player
---@field Team integer The player's team ID.

---@class Player
---@field Handicap integer The player's handicap level.

---@class Player
---@field IsBot boolean Returns true if the player is a bot.

---@class Player
---@field IsNonCombatant boolean Returns true if the player is non combatant.

---@class Player
---@field IsLocalPlayer boolean Returns true if the player is the local player.

---@class Player
---@field KillsCost integer The combined value of units killed by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@class Player
---@field DeathsCost integer The combined value of all units lost by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@class Player
---@field UnitsKilled integer The total number of units killed by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@class Player
---@field UnitsLost integer The total number of units lost by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@class Player
---@field BuildingsKilled integer The total number of buildings killed by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@class Player
---@field BuildingsLost integer The total number of buildings lost by this player.
--- **Requires Trait:** [PlayerStatistics](https://docs.openra.net/en/latest/release/traits/#playerstatistics)

---@param ticks integer
---@return void
--- Triggers low power for the chosen amount of ticks.
--- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)
function player.TriggerPowerOutage(ticks) end

---@class Player
---@field PowerProvided integer Returns the total of the power the player has.
--- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

---@class Player
---@field PowerDrained integer Returns the power used by the player.
--- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

---@class Player
---@field PowerState string Returns the player's power state ("Normal", "Low" or "Critical").
--- **Requires Trait:** [PowerManager](https://docs.openra.net/en/latest/release/traits/#powermanager)

---@param actorTypes string[]
---@param actionFunc? function
---@return boolean
--- Build the specified set of actors using classic (RA-style) production queues. The function will return true if production could be started, false otherwise. If an actionFunc is given, it will be called as actionFunc(Actor[] actors) once production of all actors has been completed. The actors array is guaranteed to only contain alive actors. Note: This function will fail to work when called during the first tick.
--- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/latest/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
function player.Build(actorTypes, actionFunc) end

---@param actorType string
---@return boolean
--- Check whether the production queue that builds this type of actor is currently busy. Note: it does not check whether this particular type of actor is being produced.
--- **Requires Traits:** [ClassicProductionQueue](https://docs.openra.net/en/latest/release/traits/#classicproductionqueue), [ScriptTriggers](https://docs.openra.net/en/latest/release/traits/#scripttriggers)
function player.IsProducing(actorType) end

---@class Player
---@field Resources integer The amount of harvestable resources held by the player.
--- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)

---@class Player
---@field ResourceCapacity integer The maximum resource storage of the player.
--- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)

---@class Player
---@field Cash integer The amount of cash held by the player.
--- **Requires Trait:** [PlayerResources](https://docs.openra.net/en/latest/release/traits/#playerresources)

