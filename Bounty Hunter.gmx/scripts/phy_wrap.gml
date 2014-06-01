//We use the phy_position_x/y variables instead of the normal x/y variables as we are working 
//with physics objects, which means that the traditional variables may not be accurate anymore.
if phy_position_x < (0 - sprite_width) phy_position_x += room_width + (sprite_width * 1.5);
if phy_position_x > (room_width + sprite_width) phy_position_x -= room_width + sprite_width;

if phy_position_y < (0 - sprite_height) phy_position_y += room_height + (sprite_height * 1.5);
if phy_position_y > (room_height + sprite_height) phy_position_y -= room_height + sprite_height;


