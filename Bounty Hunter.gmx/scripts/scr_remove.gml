var temp_i, temp_j;

if (global.grid_selected.part != "none")
{
    temp_i = (global.grid_selected.x - 16) / 32;
    temp_j = (global.grid_selected.y - 16) / 32;
    
    if !((temp_i == 7) && (temp_j == 7))
    {
        //update the grid selected highlight
        global.grid_selected.part = "none";
        
        //update the grid cell
        global.part_grid[temp_i,temp_j].part = "none";
        global.part_grid[temp_i,temp_j].sprite_index = spr_grid_box;
        global.part_grid[temp_i,temp_j].image_index = 0;
        global.part_grid[temp_i,temp_j].image_angle = 0;
    }
}
