if (global.part_grid[argument0,argument1].part != "none")
{
    var temp_spr;
    switch (global.part_grid[argument0,argument1].part)
    {
        case "cockpit":
            temp_spr = spr_cockpit;
            break;
        case "cannon_1":
            temp_spr = spr_cannon_1;
            break;
        case "cannon_2":
            temp_spr = spr_cannon_2;
            break;
        case "cannon_3":
            temp_spr = spr_cannon_3;
            break;
        case "thruster_1":
            temp_spr = spr_thruster_1;
            break;
        case "thruster_2":
            temp_spr = spr_thruster_2;
            break;
        case "thruster_3":
            temp_spr = spr_thruster_3;
            break;
        case "missle_launcher_1":
            temp_spr = spr_missle_launcher_1;
            break;
        case "missle_launcher_2":
            temp_spr = spr_missle_launcher_2;
            break;
        case "missle_launcher_3":
            temp_spr = spr_missle_launcher_3;
            break;
        case "laser_1":
            temp_spr = spr_laser_1;
            break;
        case "laser_2":
            temp_spr = spr_laser_2;
            break;
        case "laser_3":
            temp_spr = spr_laser_3;
            break;
        case "reactor_1":
            temp_spr = spr_reactor_1;
            break;
        case "reactor_2":
            temp_spr = spr_reactor_2;
            break;
        case "reactor_3":
            temp_spr = spr_reactor_3;
            break;
        case "ammo_1":
            temp_spr = spr_ammo_1;
            break;
        case "ammo_2":
            temp_spr = spr_ammo_2;
            break;
        case "ammo_3":
            temp_spr = spr_ammo_3;
            break;
    }
    global.part_grid[argument0,argument1].sprite_index = temp_spr;
    global.part_grid[argument0,argument1].image_index = 0;
}
