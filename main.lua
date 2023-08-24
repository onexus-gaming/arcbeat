-- generated using lovebox
local novum = require "novum"
novum:discoverAllScenes()
novum:discoverAllTransitions()

local push = require "push"

local gameWidth, gameHeight = 1920, 1080 --fixed game resolution
local windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight = windowWidth*.7, windowHeight*.7 --make the window a bit smaller than the screen itself

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false, canvas = false, resizable = true})
function love.resize(w, h)
	return push:resize(w, h)
end

novum:hookCallback('draw', function() push:start() end)
novum:hookCallback('drawOverlay', function() push:finish() end)