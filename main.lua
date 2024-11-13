local rs = require("lib.resolution_solution")

rs.conf({
    game_width = 128,
    game_height = 128,
    scale_mode = rs.ASPECT_MODE
})

rs.setMode(rs.game_width, rs.game_height, {resizable = true})

love.graphics.setBackgroundColor(.1,.1,.1,1)
love.graphics.setDefaultFilter("nearest", "nearest", 0)

local game_canvas = love.graphics.newCanvas(rs.get_game_size())

love.resize = function (w, h)
    rs.resize(w, h)
end

function love.load()

end


function love.update(dt)

end


function love.draw()


    love.graphics.setCanvas(game_canvas)
    love.graphics.clear(0, 0, 0, 1)

    -- Draw everything that needs to be scaled here

    love.graphics.setCanvas()

    rs.push()
        love.graphics.draw(game_canvas)
    rs.pop()

end