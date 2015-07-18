
// Project: CatchTheBeer 
// Created: 2015-07-18



// set window properties
SetWindowTitle( "CatchTheBeer" )
SetWindowSize( 720, 1280, 0 )

// set display properties
SetDisplayAspect(9.0 / 16.0)
SetOrientationAllowed( 1, 0, 0, 0 )
SetSyncRate(120, 1)

#include "/include/input/input.agc"
#insert "/include/player/player.agc"
#include "/include/player/player_ctrl.agc"



// initGame() ---> game.agc ---> function initGame()
initPlayer()	// TODO: move to initGame()


lastFrameTime# = timer() : currFrameTime# = 0.0
// ###########
// MAIN LOOP
// ###########
do
	// Frame time
	currFrameTime# = timer()
	dt# = currFrameTime# - lastFrameTime#
	lastFrameTime# = currFrameTime#
	
		
	
    updatePlayer(dt#)
	
	
	print(ScreenFPS())
	print("Frame time: " + str(dt# * 1000) + " ms")
    Sync()
loop  // main loop
