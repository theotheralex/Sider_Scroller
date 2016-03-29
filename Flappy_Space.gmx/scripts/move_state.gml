/// move_state()
var amount = acc;
var mxbrst = global.brstrate*100

if (!place_meeting(x, y+1, oSolid))
    {
        vspd += grav;
    }

    //Activate Burst
if (X && global.brst > 99)
    {
    state = burst_state;
    alarm[0] = (global.perbrst);
    }
    
//Player is in the air
sprite_index = sPlayerJump;
image_speed = 0;
image_index = (vspd > 0);    
    
if (up)
    {
        vspd = -spd;      
    }
    else
        {
        //
        }
    // Move the player
    x += hspd;
    y += vspd;
    
    //friction
    if (!up)
    {
    vspd_dir = 1;
    vspd += 1*acc;
    if (vspd > spd) vspd = spd;
    if (vspd != 0)
            {
                if (abs(vspd)-amount > 0)
                    {
                        vspd -= amount*1;
                    }
                else
                    {
                        vspd = 0;
                    }
            }
    }
//Collision_State
collision_state();

//Adding to the Burst Bar
if (global.brst < mxbrst)
    {
       global.brst += global.brstrate;
    }

//Animating the ship
if (vspd < 0)
    {
        sprite_index = sPlayerJump;
        image_index = 0;
    }
else if (vspd >= 0 && vspd < 4)
    {
        sprite_index = sPlayer;
        image_index = 0;
    }
else if (vspd >= 4)
    {
        sprite_index = sPlayerJump;
        image_index = 1;
    }
