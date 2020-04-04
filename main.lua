
function love.load()
love.window.setMode(400, 400)
love.window.setTitle("poly2d")

color = {255, 255, 255}
color2 = {100, 100, 100}
color3 = {50, 75, 100}
f = 0.5
s = 0.05
mp = 1

scale_x = 1
scale_y = 1

x = {200, 185, 200, 175}
y = {275, 265, 210, 215}

x2 = {300, 255, 300, 175}
y2 = {275, 265, 210, 115}

x3 = {100, 200, 250, 175}
y3 = {10, 30, 50, 120}

end

function love.update(dt)
	
	if mp < 0 then
	 mp = 1
	end					
	
	if love.keyboard.isDown("z") then
	 f = f + 1	
	end

	if love.keyboard.isDown("x") then
	 f = f - 1	
	end

	if love.keyboard.isDown("left") then
	 x[1] = x[1] - f * 2
	 x2[1] = x2[1] - f * 2
	 x3[1] = x3[1] - f * 2
	 x[2] = x[2] - f * 2
	 x2[2] = x2[2] - f * 2
	 x3[2] = x3[2] - f * 2
	 x[3] = x[3] - f * 2
	 x2[3] = x2[3] - f * 2
	 x3[3] = x3[3] - f * 2
	 x[4] = x[4] - f * 2
	 x2[4] = x2[4] - f * 2
	 x3[4] = x3[4] - f * 2
	end

	if love.keyboard.isDown("right") then
	 x[1] = x[1] + f * 2
	 x2[1] = x2[1] + f * 2
	 x3[1] = x3[1] + f * 2
	 x[2] = x[2] + f * 2
	 x2[2] = x2[2] + f * 2
	 x3[2] = x3[2] + f * 2
	 x[3] = x[3] + f * 2
	 x2[3] = x2[3] + f * 2
	 x3[3] = x3[3] + f * 2
	 x[4] = x[4] + f * 2
	 x2[4] = x2[4] + f * 2
	 x3[4] = x3[4] + f * 2
	end

	if love.keyboard.isDown("down") then
	 y[1] = y[1] + f * 2
	 y2[1] = y2[1] + f * 2
	 y3[1] = y3[1] + f * 2
	 y[2] = y[2] + f * 2
	 y2[2] = y2[2] + f * 2
	 y3[2] = y3[2] + f * 2
	 y[3] = y[3] + f * 2
	 y2[3] = y2[3] + f * 2
	 y3[3] = y3[3] + f * 2
	 y[4] = y[4] + f * 2
	 y2[4] = y2[4] + f * 2
	 y3[4] = y3[4] + f * 2
	end

	if love.keyboard.isDown("up") then
	 y[1] = y[1] - f * 2
	 y2[1] = y2[1] - f * 2
	 y3[1] = y3[1] - f * 2
	 y[2] = y[2] - f * 2
	 y2[2] = y2[2] - f * 2
	 y3[2] = y3[2] - f * 2
	 y[3] = y[3] - f * 2
	 y2[3] = y2[3] - f * 2
	 y3[3] = y3[3] - f * 2
	 y[4] = y[4] - f * 2
	 y2[4] = y2[4] - f * 2
	 y3[4] = y3[4] - f * 2
	end

	if love.keyboard.isDown("s") then
	 scale_x = scale_x - s
	 scale_y = scale_y - s
	end

	if love.keyboard.isDown("a") then
	 scale_x = scale_x + s
	 scale_y = scale_y + s
	end

	function love.keypressed( key )
	 if key == "r" then
	  
	  color = {255, 255, 255}
 	  color2 = {100, 100, 100}
	  color3 = {50, 75, 100}
	  f = 0.5

	  x = {200, 185, 200, 175}
	  y = {275, 265, 210, 215}

	   x2 = {300, 255, 300, 175}
	   y2 = {275, 265, 210, 115}

	   x3 = {100, 200, 250, 175}
	   y3 = {10, 30, 50, 120}

	   scale_x = 1
	   scale_y = 1

	 end
	end


		
	color[1] = color[1] + (f*2)	
	color[2] = color[2] + (f/2)
	color[3] = color[3] + (f*2)

	color2[1] = color2[1] + (f/2)	
	color2[2] = color2[2] + (f/2)
	color2[3] = color2[3] + (f*2)

	color3[1] = color3[1] + (f*2)	
	color3[2] = color3[2] + (f*2)
	color3[3] = color3[3] + (f/2)

	x[1] = x[1] / f
	y[1] = y[1] - f

	x[2] = x[2] - f
	y[2] = y[2] / f

	x[3] = x[3] * f
	y[3] = y[3] + f

	x[4] = x[4] + f
	y[4] = y[4] * f
	
	if x[1] <= 0 then
	 x[1] = 200
	end

	if x[2] <= 0 then
	 x[2] = 185
	end

	if x[3] >= 300 then
	 x[3] = 200
	end

	if x[4] >= 300 then
	 x[4] = 100
	end

	if y[1] <= 0 then
	 y[1] = 275
	end

	if y[2] <= 0 then
	 y[2] = 275
	end

	if y[3] >= 300 then
	 y[3] = 200
	end

	if y[4] >= 300 then
	 y[4] = 100
	end

	x2[1] = x2[1] - f
	y2[1] = y2[1] - f

	x2[2] = x2[2] - f
	y2[2] = y2[2] / f

	x2[3] = x2[3] * f
	y2[3] = y2[3] + f

	x2[4] = x2[4] + f
	y2[4] = y2[4] * f
	
	if x2[1] <= 0 then
	 x2[1] = 200
	end

	if x2[2] <= 0 then
	 x2[2] = 185
	end

	if x2[3] >= 300 then
	 x2[3] = 200
	end

	if x2[4] >= 300 then
	 x2[4] = 100
	end

	if y2[1] <= 0 then
	 y2[1] = 275
	end

	if y2[2] <= 0 then
	 y2[2] = 275
	end

	if y2[3] >= 300 then
	 y2[3] = 200
	end

	if y2[4] >= 300 then
	 y2[4] = 100
	end

	x3[1] = x3[1] - f
	y3[1] = y3[1] - f

	x3[2] = x3[2] - f
	y3[2] = y3[2] / f

	x3[3] = x3[3] * f
	y3[3] = y3[3] + f

	x3[4] = x3[4] + f
	y3[4] = y3[4] * f
	
	if x3[1] <= 0 then
	 x3[1] = 200
	end

	if x3[2] <= 0 then
	 x3[2] = 185
	end

	if x3[3] >= 300 then
	 x3[3] = 200
	end

	if x3[4] >= 300 then
	 x3[4] = 100
	end

	if y3[1] <= 0 then
	 y3[1] = 275
	end

	if y3[2] <= 0 then
	 y3[2] = 275
	end

	if y3[3] >= 300 then
	 y3[3] = 200
	end

	if y3[4] >= 300 then
	 y3[4] = 100
	end
		
end

function love.draw()
	
	love.graphics.print("r to reset", 2, 10)
	love.graphics.print("a & s to scale", 2, 25)	
	love.graphics.print("z & x to speed up/down", 2, 40)
	love.graphics.print("arrow keys to move", 2, 55)
		
	
	love.graphics.scale(scale_x, scale_y)	
	love.graphics.setBackgroundColor(x[1], x[2], x[3])
		
	love.graphics.setColor(color)
	love.graphics.polygon('fill', x[1], y[1], x[2], y[2], x[3], y[3], x[4], y[4])
	
	love.graphics.setColor(color2)	
	love.graphics.polygon('line', x2[1], y2[1], x2[2], y2[2], x2[3], y2[3], x2[4], y2[4])
	
	love.graphics.setColor(color3)
	love.graphics.polygon('fill', x3[1], y3[1], x3[2], y3[2], x3[3], y3[3], x3[4], y3[4])
		
end