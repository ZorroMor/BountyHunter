//Create new ship with the selected parts from the main grid
//  (any new part type also needs to be added to obj_pause_runner.Create, scr_place, and scr_preload_part)

var x_offset, y_offset, i, j, inst_x, inst_y, ship, ship_part, ship_text;

ship = argument0;
ship_part = global.ships[ship,0];
ship_text = global.ships[ship,1];

//calculate the offset for sprite size and room width so the ship will be centered in the room
//  32 = sprite width; 15 = number of rows and columns; 
//  (15/2*15/2) = account for the extra 1px of space between each part
x_offset = (room_width / 2) - (32 * 15 / 2) - (15/2*15/2);
y_offset = (room_height / 2) - (32 * 15 / 2) - (15/2*15/2);

//loop through the entire grid
for (i = 0; i < 15; i++)
{
    for (j = 0; j < 15; j++)
    {
        //calculate the part's actual position based on the offset and grid coordinates
        //  32 = sprite width; (i*1) = add a 1px space between each part (to prevent collisions)
        inst_x = x_offset + (i * 32) + (i*1);
        inst_y = y_offset + (j * 32) + (j*1);
        
        //remove all the parts from the existing ship
        if (ship_part[i,j] != false)
        {
            with (ship_part[i,j])
            {
                instance_destroy();
            }
            ship_part[i,j] = false;
        }
        
        //use the player_text array to create the appropriate new ship part at the correct location
        switch (ship_text[i,j])
        {
            case "cockpit":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_cockpit);
                break;
            case "cannon_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_cannon_1);
                break;
            case "cannon_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_cannon_2);
                break;
            case "cannon_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_cannon_3);
                break;
            case "thruster_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_thruster_1);
                break;
            case "thruster_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_thruster_2);
                break;
            case "thruster_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_thruster_3);
                break;
            case "missle_launcher_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_missle_launcher_1);
                break;
            case "missle_launcher_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_missle_launcher_2);
                break;
            case "missle_launcher_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_missle_launcher_3);
                break;
            case "laser_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_laser_1);
                break;
            case "laser_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_laser_2);
                break;
            case "laser_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_laser_3);
                break;
            case "reactor_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_reactor_1);
                break;
            case "reactor_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_reactor_2);
                break;
            case "reactor_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_reactor_3);
                break;
            case "ammo_1":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_ammo_1);
                break;
            case "ammo_2":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_ammo_2);
                break;
            case "ammo_3":
                ship_part[i,j] = instance_create(inst_x, inst_y, obj_ammo_3);
                break;
        }
        ship_part[i,j].grid_i = i;
        ship_part[i,j].grid_j = j;
        ship_part[i,j].ship = 0;
    }
}

//resets the little man that ejects from the cockpit
obj_player.phy_active = false;
obj_player.fuel = obj_player.max_fuel;
obj_player.ejected = false;
obj_player.thrusting = false;
obj_player.depth = 10;
obj_player.visible = false;

//global.ships is the array of ships in the game
// the column [0,x] refers to the player's ship
global.ships[ship,2] = 0; // remove power
global.ships[ship,3] = 0; // remove ammo

scr_snap_part();
scr_check_player_connected();
