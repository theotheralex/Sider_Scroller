///get_input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
X = (keyboard_check(ord('X')));

// Override the Controls for a gamepad
var gp_id = 0;
var threshold = .5;

if (gamepad_is_connected(gp_id))
    {
        right = gamepad_axis_value(gp_id,gp_axislh) > threshold;
        left = gamepad_axis_value(gp_id,gp_axislh) < -threshold;
        up = gamepad_axis_value(gp_id,gp_axislv) < -threshold;
        down = gamepad_axis_value(gp_id,gp_axislv) > threshold;
        X = gamepad_button_check(gp_id,gp_face3);
    }
