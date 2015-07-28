
// Project: CatchTheBeer 
// Created: 2015-07-18

// Includes
#insert "include/constants.agc"
#insert "include/game/game_state.agc"
#include "include/input/input.agc"
#insert "include/player/player.agc"
#include "include/player/player_ctrl.agc"
#include "include/collision/collisions.agc"
#include "include/game/game.agc"



// Set window properties
SetWindowTitle( "CatchTheBeer" )
SetWindowSize( GetMaxDeviceHeight(), GetMaxDeviceWidth(), 0 )

// Set display properties
SetDisplayAspect(9.0 / 16.0)
SetOrientationAllowed( 1, 0, 0, 0 )
SetSyncRate(120, 1)



// Globals
global gWorldWidthMin# = 0.0
global gWorldWidthMax# = 0.0 : gWorldWidthMax# = GetDeviceWidth()

global gGameState as tGameState
setGameState( gGameState, STATE_MAIN_MENU )


// ###########
// MAIN LOOP
// ###########
do
	select gGameState.state
		case STATE_MAIN_MENU:
			// Handle Main menu here, when done, switch game state
			setGameState( gGameState, STATE_INIT_GAME )
		endcase
		case STATE_INIT_GAME:
			
			initGame()
		endcase
		case STATE_GAME:
			lastFrameTime# = timer() : currFrameTime# = 0.0
			updateGame( lastFrameTime#, currFrameTime# )
		endcase
	endselect
	/*
	
	
	print(ScreenFPS())
	print("Frame time: " + str(dt# * 1000) + " ms")
	print( "Screen : " + str( GetDeviceHeight() ) + "x" + str( gWorldWidthMax# ) )*/
    Sync()
loop  // main loop
