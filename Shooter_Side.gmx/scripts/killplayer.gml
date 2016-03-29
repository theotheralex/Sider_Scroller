oGame.reviveTimer = 20;
global.pLives -= 1;
if (global.pLives < 0) oGame.state = 1;

 if (instance_exists(oPlayerShip))
        {
            oPlayerStats.hp -= -1;
        }

