//***NEEDS TO BE UPDATED TO ACCOMADATE THE AI***

//recursive function that checks through each part of the ship to check if it
//      is still connected to the rest of the ship
//this must be called by another process and started at a known good cell
//this is to ensure that broken off pieces lose their ability to operate
//the physics engine handles severing the connections when a part is destroyed

var i = argument0;
var j = argument1;

//if this part is being checked, then it is connected
global.player_part[i,j].connected = true;
global.player_part[i,j].connected_checked = true;

if (global.player_part[i,j] != false)
{
    //check out to the right edge of the grid
    if (i+1 < 15)
    {
        //check one cell to the right
        if (global.player_part[i + 1,j] != false)
        {
            //don't check cell if it's already been checked
            if (global.player_part[i + 1,j].connected_checked == false)
                //recurse to the next cell
                scr_check_connected(i + 1,j);
        }
    }
    
    //check out to the left edge of the grid
    if (i-1 >= 0)
    {
        //check one cell to the left
        if (global.player_part[i - 1,j] != false)
        {
            //don't check cell if it's already been checked
            if (global.player_part[i - 1,j].connected_checked == false)
                //recurse to the next cell
                scr_check_connected(i - 1,j);
        }
    }
    
    //check out to the bottom edge of the grid
    if (j+1 < 15)
    {
        //check on cell down
        if (global.player_part[i,j + 1] != false)
        {
            //don't check cell if it's already been checked
            if (global.player_part[i,j + 1].connected_checked == false)
                //recurse to the next cell
                scr_check_connected(i,j + 1);
        }
    }
    
    //check out to the top edge of the grid
    if (j-1 >= 0)
    {
        //check one cell up
        if (global.player_part[i,j - 1] != false)
        {
            //don't check cell if it's already been checked
            if (global.player_part[i,j - 1].connected_checked == false)
                //recurse to the next cell
                scr_check_connected(i,j - 1);
        }
    }
}
