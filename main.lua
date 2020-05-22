local packer = require("packer")(4096, 4096)

function love.load()
  boto = packer:newImage("assets/boto.png")
  knight = packer:newImage("assets/knight.png")
  quad = knight:newQuad(0, 0, 32, 32)
end

function love.update(dt)
end

function love.draw()
  packer:atlas()

  packer:draw(knight, quad, 128, 128)
end
