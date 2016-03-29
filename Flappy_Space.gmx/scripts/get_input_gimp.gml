///get_input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
up_release = keyboard_check_released(vk_up);
down = keyboard_check(vk_down);
X = (keyboard_check(ord('X')));

// Override the Controls for a gamepad
var gp_id = 0;
var threshold = .5;

if (gamepad_is_connected(gp_id))
    {
        up_release = gamepad_button_check_released(gp_id,gp_face1);
        up = gamepad_button_check(gp_id,gp_face1)
        X = gamepad_button_check(gp_id,gp_face3);
    }
