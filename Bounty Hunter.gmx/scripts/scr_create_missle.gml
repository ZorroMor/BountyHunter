var temp_x, temp_y, obj, missle_speed;
temp_x = argument0;
temp_y = argument1;
obj = argument2;
missle_speed = argument3;

with (instance_create(temp_x,temp_y,obj))
{
    phy_rotation=other.phy_rotation;
    phy_speed_x = other.phy_speed_x;
    phy_speed_y = other.phy_speed_y;
    physics_apply_local_impulse(0, sprite_height / 2, 0, missle_speed * -1);
}
