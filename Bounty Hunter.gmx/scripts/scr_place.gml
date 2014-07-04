//places a part on the grid
var temp_i, temp_j, temp_spr;

if ((global.supply_selected.part != "none") && (global.grid_selected.part == "none"))
{
    //calculate screen location based on grid coordinates
    temp_i = (global.grid_selected.x - 16) / 32;
    temp_j = (global.grid_selected.y - 16) / 32;
    
    temp_spr = global.grid_selected.sprite_index;
    
    //if the highlighted cell is not at [0,0] (cockpit), add the part
    if !((temp_i == 7) && (temp_j == 7))
        {
        //update the grid selected highlight
        if (global.supply_dragged.dragging)
            global.grid_selected.part = global.supply_dragged.part;
        else
            global.grid_selected.part = global.supply_selected.part;
        
        //update the grid cell
        //  (any new part type also needs to be added to obj_pause_runner.Create,scr_update_ship, and scr_preload_part)
        global.part_grid[temp_i,temp_j].part = global.grid_selected.part;
        switch (global.grid_selected.part)
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
        global.part_grid[temp_i,temp_j].sprite_index = temp_spr;
        global.part_grid[temp_i,temp_j].image_index = 0;
        if (global.supply_dragged.dragging)
            global.part_grid[temp_i,temp_j].image_angle = global.supply_dragged.image_angle;
    }
}
