var temp_x, temp_y;
temp_x = argument0;
temp_y = argument1;

with (instance_create(temp_x,temp_y,obj_Bullet))
{
    phy_rotation=other.phy_rotation;
    phy_speed_x = other.phy_speed_x;
    phy_speed_y = other.phy_speed_y;
    physics_apply_local_impulse(0, 0, 0, -2000);
}
