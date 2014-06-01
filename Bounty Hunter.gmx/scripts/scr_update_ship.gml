var x_offset, y_offset, i, j, inst_x, inst_y;

x_offset = (room_width / 2) - (32 * 15 / 2) - (15/2*15/2);
y_offset = (room_height / 2) - (32 * 15 / 2) - (15/2*15/2);

for (i = 0; i < 15; i++)
{
    for (j = 0; j < 15; j++)
    {
        inst_x = x_offset + (i * 32) + (i*1);
        inst_y = y_offset + (j * 32) + (j*1);
        
        if (global.player_part[i,j] != false)
        {
            with (global.player_part[i,j])
            {
                instance_destroy();
            }
            global.player_part[i,j] = false;
        }
        switch (global.player_text[i,j])
        {
            case "cockpit":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_cockpit);
                break;
            case "cannon_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_cannon_1);
                break;
            case "cannon_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_cannon_2);
                break;
            case "cannon_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_cannon_3);
                break;
            case "thruster_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_thruster_1);
                break;
            case "thruster_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_thruster_2);
                break;
            case "thruster_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_thruster_3);
                break;
            case "missle_launcher_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_missle_launcher_1);
                break;
            case "missle_launcher_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_missle_launcher_2);
                break;
            case "missle_launcher_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_missle_launcher_3);
                break;
            case "laser_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_laser_1);
                break;
            case "laser_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_laser_2);
                break;
            case "laser_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_laser_3);
                break;
            case "reactor_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_reactor_1);
                break;
            case "reactor_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_reactor_2);
                break;
            case "reactor_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_reactor_3);
                break;
            case "ammo_1":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_ammo_1);
                break;
            case "ammo_2":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_ammo_2);
                break;
            case "ammo_3":
                global.player_part[i,j] = instance_create(inst_x, inst_y, obj_player_ammo_3);
                break;
        }
        global.player_part[i,j].grid_i = i;
        global.player_part[i,j].grid_j = j;
        global.player_part[i,j].ship = 0;
    }
}

obj_player.phy_active = false;
obj_player.fuel = obj_player.max_fuel;
obj_player.ejected = false;
obj_player.thrusting = false;
obj_player.depth = 10;
obj_player.visible = false;

global.ships[0,2] = 0; // remove power
global.ships[0,3] = 0; // remove ammo

scr_snap_part();
scr_check_player_connected();
