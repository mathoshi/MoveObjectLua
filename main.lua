-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on Feb 25 2019
--
-- This file will move an object accross the screen
-----------------------------------------------------------------------------------------

-- 

local scrollSpeed = 2
local scrollSpeed2 = 4
local scrollSpeed3 = 6
local scrollSpeed4 = 0.35

local BackgroundImage = display.newImageRect( "assets/earth.png", 650, 366)
BackgroundImage.x = display.contentCenterX
BackgroundImage.y = display.contentCenterY
BackgroundImage.id = "Earth Background Image"

local MovingObject1 = display.newImageRect( "assets/asteroid.png", 200, 200)
MovingObject1.x = -900
MovingObject1.y = 160
MovingObject1.id = "Asteroid"

local MovingObject2 = display.newImageRect( "assets/many-asteroids.png", 800, 204)
MovingObject2.x = -900
MovingObject2.y = 180
MovingObject2.id = "Multiple Asteroids"

local MovingObject3 = display.newImageRect( "assets/other-asteroid.png", 929, 1024)
MovingObject3.x = -500
MovingObject3.y = -200
MovingObject3.id = "Other Asteroid"

local function MoveObject(event)
	
	MovingObject1.x = MovingObject1.x + scrollSpeed
	MovingObject2.x = MovingObject2.x + scrollSpeed2
	MovingObject3.x = MovingObject3.x + scrollSpeed3
	MovingObject3.y = MovingObject3.y + scrollSpeed3 
	MovingObject1.width = MovingObject1.width - scrollSpeed4
	MovingObject1.height = MovingObject1.height - scrollSpeed4
	print( display.fps )

end

Runtime:addEventListener( "enterFrame", MoveObject) 

