//***NEEDS TO BE UPDATED TO ACCOMADATE THE AI***

var i, j;

//initializes all the parts for a new connected check
for (i = 0; i < 15; i++)
{
    for (j = 0; j < 15; j++)
    {
        global.player_part[i,j].connected = false;
        global.player_part[i,j].connected_checked = false;
    }
}

//if the player has not already ejected, run a check of all parts in the ship to see
//  if they're still connected, starting with cell 7,7 (cockpit)
if !obj_player.ejected
    scr_check_connected(7,7);
