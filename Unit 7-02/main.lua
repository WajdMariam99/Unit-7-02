-----------------------------------------------------------------------------------------
--
-- Created By: Wajd Mariam
-- Created On: April 26, 2019
-----------------------------------------------------------------------------------------

local dpad = display.newImageRect ("assets/sprites/d-pad.png", 150, 150 )
dpad.x = 160
dpad.y = 400
dpad.id = "d-pad"


local UpArrow = display.newImageRect ("assets/sprites/upArrow.png", 35, 29)
UpArrow.x = 160
UpArrow.y = 345
UpArrow.id = "Up Arrow"


local DownArrow = display.newImageRect ("assets/sprites/downArrow.png", 35, 29)
DownArrow.x = 160
DownArrow.y = 455
DownArrow.id = "Down Arrow"


local RightArrow = display.newImageRect ("assets/sprites/rightArrow.png", 25, 34 )
RightArrow.x = 215
RightArrow.y = 400 
RightArrow.id = "Right Arrow"


local LeftArrow = display.newImageRect ("assets/sprites/leftArrow.png", 25, 34)
LeftArrow.x = 105
LeftArrow.y = 400
LeftArrow.id = "Left Arrow"

local TheCharacter = display.newImageRect ("assets/sprites/character.png", 150, 175)
TheCharacter.x = 160
TheCharacter.y = 150
TheCharacter.id = "The Character"


function UpArrowTouch( event )
	 if ( event.phase == "ended" ) then
         transition.moveBy( TheCharacter, { 
         x = 0, 
         y = -50, 
         time = 100 } )        	

  end
return true

end

 

 function DownArrowTouch( event )
 	 if ( event.phase == "ended" ) then
 	     transition.moveBy ( TheCharacter ,  { 
         x = 0, 
         y = 50, 
         time = 100 } )
 	      
 end

return true

end 


function RightArrowTouch( event )
	if (event.phase == "ended" ) then
	     transition.moveBy (TheCharacter ,  {
         x = 50,
         y = 0, 
          time = 100 } )
           
end

return true 

end

function LeftArrowTouch( event )
	if (event.phase == "ended" ) then
	     transition.moveBy (TheCharacter ,  {
	     x = -50,
	     y = 0, 
	     time = 100 } )
	      

end

return true 

end


UpArrow:addEventListener ("touch" , UpArrowTouch)

DownArrow:addEventListener ("touch", DownArrowTouch)

RightArrow:addEventListener ("touch", RightArrowTouch)

LeftArrow: addEventListener ("touch", LeftArrowTouch)
