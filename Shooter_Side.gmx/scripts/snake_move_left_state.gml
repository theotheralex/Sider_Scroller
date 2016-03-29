///snake_move_left_state
var wall_at_left = place_meeting(x-1, y, oSolid);

if (wall_at_left)
    {
        state = snake_move_right_state;
    }
// Control the snake sprite
image_xscale = 1;

//Move the snake
x -= 1;
