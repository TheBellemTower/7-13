-----------------------------------------------------------------------------------------
--
-- scene3.lua
--
--Cretaed by Ethan Bellem
--Created on May 2018
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )

local physics = require("physics")

 

local scene = composer.newScene()


function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
     -- start physics

    physics.start()

    physics.setGravity(0, 10)

    --physics.setDrawMode("hybrid")
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
         local theGround1 = display.newImage( "./assets/sprites/land.png" )

        theGround1.x = 520

        theGround1.y = display.contentHeight

        theGround1.id = "the ground"

        physics.addBody( theGround1, "static", { 

            friction = 0.5, 

            bounce = 0.3 

            } )

        sceneGroup:insert( theGround1 )

         local theGround2 = display.newImage( "./assets/sprites/land.png" )

        theGround2.x = 1520

        theGround2.y = display.contentHeight

        theGround2.id = "the ground" -- notice I called this the same thing

        physics.addBody( theGround2, "static", { 

            friction = 0.5, 

            bounce = 0.3 

            } )

        sceneGroup:insert( theGround2 )

         local ninja= display.newImage( "./assets/sprites/idle.png" )

        ninja.x = 800

        ninja.y = 0

        ninja.id = "ninja"

        physics.addBody( ninja, "dynamic", { 

            friction = 0.5, 

            bounce = 0.3 

            } )

        sceneGroup:insert( ninja )


 

    elseif ( phase == "did" ) then

        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

 

return scene