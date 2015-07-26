// collisions.agc



function getBoundaryCollision( objPosOffX as float, objW as float)
// If player hits either boundary, left or right, return true, else return false.
// This collision check uses percentage system.

	isCollision = false
	
	// Left
	if ( objPosOffX - ( objW / 2 ) ) <= 0.0 and getDeviceTiltX() <= 0.0
		isCollision = true
	elseif ( objPosOffX + ( objW / 2 ) ) >= 100.0 and getDeviceTiltX() >= 0.0
		isCollision = true
	endif
endfunction isCollision
