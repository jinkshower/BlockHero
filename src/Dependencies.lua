--
-- libraries
--

Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'
Sti = require 'lib/sti'
Wf = require 'lib/windfield'


require 'src/Animation'
require 'src/constants'
require 'src/StateMachine'
require 'src/Util'

require 'src/states/BaseState'
require 'src/states/StateStack'

require 'src/states/game/StartState'
require 'src/states/game/PlayState'

require 'src/states/player/PlayerIdleState'
require 'src/states/player/PlayerWalkState'
require 'src/states/player/PlayerBlockPlaceState'
require 'src/states/player/PlayerLaserShootState'


require 'src/entity/Player'
require 'src/entity/Laser'

require 'src/world/Level'
require 'src/world/LevelData'
require 'src/world/gameobject_def'
require 'src/world/GameObject'



gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32)
}

gTextures = {
    ['heroes'] = love.graphics.newImage('graphics/heroes.png'),
    ['blocks'] = love.graphics.newImage('graphics/blocks.png'),
    ['lasers'] = love.graphics.newImage('graphics/laser.png')
}

gFrames = {
    ['heroes'] = GenerateHeroes(gTextures['heroes']),
    ['blocks'] = GenerateQuads(gTextures['blocks'], 16, 16),
    ['lasers'] = GenerateQuads(gTextures['lasers'], 5, 8)
}