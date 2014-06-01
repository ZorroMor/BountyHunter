var i, j;

for (i = 0; i < 15; i++)
{
    for (j = 0; j < 15; j++)
    {
        global.player_part[i,j].connected = false;
        global.player_part[i,j].connected_checked = false;
    }
}

if !obj_player.ejected
    scr_check_connected(7,7);
