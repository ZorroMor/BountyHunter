//snap all ship parts together (check down and to the right)
//only running to the 14th row and column since they should already be snapped

var x_offset, y_offset, i, j, inst_x, inst_y;

x_offset = (room_width / 2) - (32 * 15 / 2) - (15/2*15/2);
y_offset = (room_height / 2) - (32 * 15 / 2) - (15/2*15/2);

for (i = 0; i < 14; i++)
{
    for (j = 0; j < 14; j++)
    {
        if (global.player_part[i,j] != false)
        {
            inst_x = x_offset + (i * 32) + (i*1);
            inst_y = y_offset + (j * 32) + (j*1);
            
            if (global.player_part[i,j+1] != false) 
            {
                physics_joint_prismatic_create(global.player_part[i,j], global.player_part[i,j+1], inst_x, inst_y + 16, 0, 1, 1, 1, true, 10000, 0, true, false);
            }
            if (global.player_part[i+1,j] != false)
            {
                physics_joint_prismatic_create(global.player_part[i,j], global.player_part[i+1,j], inst_x + 16, inst_y, 1, 0, 1, 1, true, 10000, 0, true, false);
            }
        }
    }
}
