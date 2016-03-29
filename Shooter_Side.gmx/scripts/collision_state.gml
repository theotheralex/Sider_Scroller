    //Horizontal Collisions
if (place_meeting(x+hspd, y, oSolid))
    {
        while (!place_meeting(x+sign(hspd), y, oSolid))
            {
                x += sign(hspd);
            }
        instance_create(xprevious, yprevious, oPlayerExplosion);
        instance_destroy();
        
        if (instance_exists(oPlayerStats))
            {
                oPlayerStats.hp -= 1;
            }
    }
x += hspd;

    //Vertical Collisions
if (place_meeting(x, y+vspd, oSolid))
    {
        while (!place_meeting(x, y+sign(vspd), oSolid))
            {
                y += sign(vspd);
            }
        instance_create(xprevious, yprevious, oPlayerExplosion);
        instance_destroy();
        
        if (instance_exists(oPlayerStats))
            {
                oPlayerStats.hp -= 1;
            }
    }
y += vspd;

//Check the hit points
    if (oPlayerStats.hp <= 0)
        {
            oPlayerStats.hp = oPlayerStats.maxhp;
            
            //Calculate the score
            score = oPlayerStats.score;
            
            // Open the highscores
            ini_open("Settings.ini");
            oPlayerStats.highscore = ini_read_real("Score", "Highscore", 0);
            
            // A new highscore case
            if(score > oPlayerStats.highscore)
                {
                    oPlayerStats.highscore = score;
                    ini_write_real("Score", "Highscore", oPlayerStats.highscore);
                }
            //Close the ini file
            ini_close();
            
            room_goto(rHighScore);
        }
