var turn_direction = argument0;
var ship_power = global.ships[ship, 2];

if connected && (ship_power > 0)
{
    physics_apply_torque(thrust * turn_direction);
    
    if !thrusting
        snd_temp = audio_play_sound(snd_hiss, 0, true);
   
    thrusting = true;
    
    // subtract from ship's power
    if ship_power >= power_drain
        global.ships[ship, 2] -= power_drain;
    else
        global.ships[ship, 2] = 0;
}
else
{
    audio_stop_sound(snd_temp);
    thrusting = false;
}
