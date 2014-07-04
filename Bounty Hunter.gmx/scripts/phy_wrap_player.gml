//We use the phy_position_x/y variables instead of the normal x/y variables as we are working 
//with physics objects, which means that the traditional variables may not be accurate anymore.
var change_x, change_y;
if phy_position_x < (0 - sprite_width) change_x += room_width + (sprite_width * 1.5);
if phy_position_x > (room_width + sprite_width) change_x -= room_width + sprite_width;

if phy_position_y < (0 - sprite_height) change_y += room_height + (sprite_height * 1.5);
if phy_position_y > (room_height + sprite_height) change_y -= room_height + sprite_height;

var i;
for (i = 0; i < instance_number(obj_player); i++)
{
    temp_player = instance_find(obj_player, i);
    temp_player.phy_position_x = change_x;
    temp_player.phy_position_y = change_y;
}
