///burst_move() 
var amount = acc;

if (!place_meeting(x, y+1, oSolid))
    {
        vspd += grav;
    }

if (right)
    {
    hspd_dir = 1;
    hspd += 1*acc;
    if (hspd > spd) hspd = spd;
    if (hspd != 0)
            {
                if (abs(hspd)-amount > 0)
                    {
                        hspd -= amount*1;
                    }
                else
                    {
                        hspd = 0;
                    }
            }
    x += spd;
    //Sprite Idle
    sprite_index = sPlayer;
    image_speed = 0;
    image_index = 0;
    }

if (left)
    {
    hspd += -1*acc;
    hspd_dir = -1;
    if (hspd < -spd) hspd = -spd;
    if (hspd != 0)
            {
                if (abs(hspd)-amount > 0)
                    {
                        hspd -= amount*-1;
                    }
                else
                    {
                        hspd = 0;
                    }
            }
    x -= spd;
    //Sprite Idle
    sprite_index = sPlayer;
    image_speed = 0;
    image_index = 0;
    }
    
 

if (up)
    {
    y -= spd;
    
    //Up Sprite
    sprite_index = sPlayerJump;
    image_speed = 0;
    image_index = 0;  
    }

if (down)
    {
    y += spd;
    
     //Down Sprite        
        sprite_index = sPlayerJump;
        image_speed = 0;
        image_index = 1;
    }
        
    // Friction    
if (!up && !down)
    {
        vspd = 0;
    }


