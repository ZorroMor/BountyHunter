var i = argument0;
var j = argument1;

global.player_part[i,j].connected = true;
global.player_part[i,j].connected_checked = true;

if (global.player_part[i,j] != false)
{
    if (i+1 < 15)
    {
        if (global.player_part[i + 1,j] != false)
        {
            if (global.player_part[i + 1,j].connected_checked == false)
                scr_check_connected(i + 1,j);
        }
    }
    
    if (i-1 >= 0)
    {
        if (global.player_part[i - 1,j] != false)
        {
            if (global.player_part[i - 1,j].connected_checked == false)
                scr_check_connected(i - 1,j);
        }
    }
    
    if (j+1 < 15)
    {
        if (global.player_part[i,j + 1] != false)
        {
            if (global.player_part[i,j + 1].connected_checked == false)
                scr_check_connected(i,j + 1);
        }
    }
    
    if (j-1 >= 0)
    {
        if (global.player_part[i,j - 1] != false)
        {
            if (global.player_part[i,j - 1].connected_checked == false)
                scr_check_connected(i,j - 1);
        }
    }
}
