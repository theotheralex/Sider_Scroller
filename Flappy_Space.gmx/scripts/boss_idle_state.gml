///boss_idle_state()
var dis = point_distance(x, y, oPlayer.x, oPlayer.y);

if (dis <= 128)
    {
        state = boss_chase_state;
    }
