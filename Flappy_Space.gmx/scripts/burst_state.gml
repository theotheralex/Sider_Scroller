///burst_state()
get_input();
burst_move();
global.brst -= .020*global.brst;

if (alarm[0] == -1)
    {
        state = move_state;
        global.brst = 0;
    if (!place_meeting(view_xview[0]+32, view_yview[0]+112, oSolid))
        {
            oPlayer.x = view_xview[0]+32;
            oPlayer.y = view_yview[0]+112;
        }
    }
else
    {
        with(oSolid)
            {
            if (distance_to_point(oPlayer.x,oPlayer.y)< 5)
                {                
                score += 5;
                instance_destroy();
                }  
            }
    }
