// player_ctrl.agc

function initPlayer()
	Player.id = CreateSprite(0)
	SetSpriteColor(Player.id, 0, 0, 255, 255)
	SetSpriteSize(Player.id, 27.0, 10.0)
	
	Player.x = 50.0
	Player.y = 90.0
	SetSpriteOffset(Player.id, GetSpriteWidth(Player.id) / 2, GetSpriteHeight(Player.id) / 2)
	SetSpritePositionByOffset(Player.id, Player.x, Player.y)
	SetSpriteScaleByOffset(Player.id, 0.8, 0.8)
	Player.width = GetSpriteWidth(Player.id)
	Player.height = GetSpriteHeight(Player.id)
	
	Player.lives = 3
	Player.score = 0
endfunction


function updatePlayer(dt as float)
	
	if getBoundaryCollision( Player.x, Player.width ) = false
		inc Player.x, getDeviceTiltX()
		SetSpritePositionByOffset(Player.id, Player.x, Player.y)
	endif
endfunction
