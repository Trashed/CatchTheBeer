
// Project: CatchTheBeer 
// Created: 2015-07-18


#constant false		0
#constant true		1


// set window properties
SetWindowTitle( "CatchTheBeer" )
SetWindowSize( GetMaxDeviceHeight(), GetMaxDeviceWidth(), 0 )

// set display properties
SetDisplayAspect(9.0 / 16.0)
SetOrientationAllowed( 1, 0, 0, 0 )
SetSyncRate(120, 1)

#include "include/input/input.agc"
#insert "include/player/player.agc"
#include "include/player/player_ctrl.agc"
#include "include/collision/collisions.agc"


// Globals
global gWorldWidthMin# = 0.0
global gWorldWidthMax# = 0.0 : gWorldWidthMax# = GetDeviceWidth()


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
	print( "Screen : " + str( GetDeviceHeight() ) + "x" + str( gWorldWidthMax# ) )
    Sync()
loop  // main loop
