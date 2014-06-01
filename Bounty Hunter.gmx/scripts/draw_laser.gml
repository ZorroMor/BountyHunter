var dir, distance, obj, test_obj, precision, width, length, check, i;
xx=argument0;
yy=argument1;
dir=argument2;
distance=argument3;
obj=argument4;
precision=argument5;
width=argument6;

length = 0;
check = false;
ret_obj = noone;
do
{
    xx += lengthdir_x(precision, dir);
    yy += lengthdir_y(precision, dir);
    length += precision;
    
    for (i=0; i<array_length_1d(obj); i++)
    {
        test_obj = position_meeting(xx,yy,obj[i])
        if (test_obj)
        {
            check = true;
        }
    }
}
until ((length > distance) || check)
