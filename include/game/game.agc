// game.agc


function setGameState( gameState ref as tGameState, newState as integer)
// ##################################
// # Set game state. Gets gamestate #
// # type as a reference parameter  #
// ##################################
	gameState.state = newState
endfunction



function initGame()
// ###################################
// # Call needed initialization 	 #
// # methods here 					 #
// ###################################
	
	// Initialize player
	initPlayer()
	
	
	
	// When initialization is done, switch game state
	setGameState( gGameState, STATE_GAME )
endfunction



function updateGame( lft as float, cft as float )
// ###################################
// # Call needed update methods here #
// ###################################
	
	// Frame time
	cft = timer()
	dt# = cft - lft
	lft = cft		
	
    updatePlayer(dt#)
	
endfunction
