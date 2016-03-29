///boss_smash_state()
if (alarm[0] == -1)
    {
        if (hspd < 16)
            {
                hspd += 2;
            }
            move(oSolid);
    }
    else
        {
            state = boss_stall_state;
            alarm[0] = room_speed;   
        }

