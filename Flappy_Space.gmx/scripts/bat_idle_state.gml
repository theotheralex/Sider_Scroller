///bat_idle_state()
image_index = sBatIdle;

/// Look for the player
if (instance_exists(oPlayer))
    {
        var dis = point_distance(x, y, oPlayer.x, oPlayer.y);
        
        if (dis < sight)
            {
                state = bat_chase_state;
            }
    }
