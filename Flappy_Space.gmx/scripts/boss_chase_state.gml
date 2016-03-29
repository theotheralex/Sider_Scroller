///boss_chase_state
var dis = point_distance(x, y, oPlayer.x, oPlayer.y)
if (dis < sprite_width/2-16)
    {
        state = boss_stall_state;
        hspd = 0;
    }
    else
    {
        hspd = (oPlayer.x -x) * .05;
        vspd = (oPlayer.y -y) * .05;
    }

move(oSolid)
