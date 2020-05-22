# packer.lua

packer is a LÖVE lib that implements a bin packer algorithm to pack your textures in a texture atlas

![packer_scr](https://user-images.githubusercontent.com/15099243/82699025-45244180-9c42-11ea-898b-0400240c718f.png)

## usage

```lua
packer = require("packer")(4096, 4096)

function love.load()
  img1 = packer:newImage("path/to/image")
  local image = love.graphics.newImage("path/to/image")
  img2 = packer:add(image)

  quad = img1:newQuad(x, y, w, h)
end


function love.draw()
  packer:draw(img2, x, y)

  packer:draw(img1, quad, x, y)
end
```

## lib

### packer(width, height)

creates a new bin packer

### packer:setFilter(minFilter, magFilter) [default: "nearest"]

changes the filter of the packer texture

### packer:newImage(filename)

packs a new image from the file

### packer:add(love_image)

packs a new image from a previous loaded love2d image

### packer:draw(packer_img, [quad], x, y, angle, sx, sy, ox, oy, kx, ky)

see [love.graphics.draw](https://love2d.org/wiki/love.graphics.draw)

### packer:atlas()

draws the current state of the texture atlas

### image:newQuad(x, y, width, height)

creates a new quad from the images coordinates in the texture atlas
