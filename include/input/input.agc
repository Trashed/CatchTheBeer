// input.agc

// Returns amount of tilt in X axis.
// If the orientation is in portrait mode, Y-axis value is used.
function getDeviceTiltX()
	if GetOrientation() = 1
		tx# = GetDirectionX()
	endif
endfunction tx#
