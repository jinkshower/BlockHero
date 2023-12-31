PlayerIdleState = Class{__includes = BaseState}

function PlayerIdleState:init(player)
    self.player = player
end

function PlayerIdleState:enter()
    self.player.physics.body:setLinearVelocity(0, 0)
end

function PlayerIdleState:update(dt)
    if love.keyboard.isDown('left') then
        self.player.direction = 'left'
        self.player:changeState('walk')
    elseif love.keyboard.isDown('right') then
        self.player.direction = 'right'
        self.player:changeState('walk')
    elseif love.keyboard.isDown('up') then
        self.player.direction = 'up'
        self.player:changeState('walk')
    elseif love.keyboard.isDown('down') then
        self.player.direction = 'down'
        self.player:changeState('walk')
    end

    if love.keyboard.wasPressed('x') then
        if self.player.canPlace then
            gStateStack:push(BlockChooseState(self.player))
        end
    end

    if love.keyboard.wasPressed('c') then
        self.player:changeState('laser-shoot')
    end

end
