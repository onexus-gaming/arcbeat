local Menu = {
    y = 0,

    update = function(self, game, dt)
        self.y = self.y + dt
    end,

    draw = function(self, game)
        love.graphics.setLineWidth(5)
        love.graphics.rectangle('line', 0, 0, 1920, 1080)
        love.graphics.print(game.title, love.graphics.getWidth()/2-love.graphics.getFont():getWidth(game.title)/2, love.graphics.getHeight()/2-love.graphics.getFont():getHeight()/2+(math.sin(self.y)*50))
    end
}

return Menu