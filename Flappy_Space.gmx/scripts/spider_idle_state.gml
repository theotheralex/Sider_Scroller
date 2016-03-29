///spider_idle_state
if (instance_exists(oPlayer))
    {
        var dis = distance_to_object(oPlayer);
        
        if (dis < sight && alarm[0] <= 0)
            {
                image_speed = .5;
                
                // Make sure we face the player
                if (oPlayer.x !=x)
                    {
                        image_xscale = sign(oPlayer.x-x);
                    }
            }
    }
