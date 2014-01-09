print("Hello World!")
local myText = display.newText( "Hello World!", 160, 240, "Arial", 32 )
myText:setFillColor( 1, 0.2,0.2 )
local sky = display.newImage( "image.png" )
sky.x = 220; sky.y = 400

function screenTap()
-- Variables for random placement of image and color.
    local r = math.random( 0, 100 )
    local g = math.random( 0, 100 )
    local b = math.random( 0, 100 )
	local x = math.random( 0, 400 )
	local y = math.random( 0, 860 )
-- 30% to say 'I like pie'
	if (math.random( 0, 100 ) > 70 ) then
		myText = display.newText( "I like PIE!", x, y, "Arial", 48 )
	else
		myText = display.newText( "Hello World!", x, y, "Arial", 32 )
	end
    myText:setFillColor( r/100, g/100, b/100 )
end

display.currentStage:addEventListener( "tap", screenTap )