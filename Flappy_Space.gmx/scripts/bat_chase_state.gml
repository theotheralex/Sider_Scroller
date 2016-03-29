///bat_chase_state
if (instance_exists(oPlayer))
    {
        var dir = point_direction(x, y, oPlayer.x, oPlayer.y,);
        hspd = lengthdir_x(spd, dir);
        vspd = lengthdir_y(spd, dir);
        
        //Change to the flying sprite
        sprite_index = sBatFly;
        
        //Face the right direction
        if (hspd !=0) image_xscale = sign(hspd);
        
        //Move
        move(oSolid);
    }
