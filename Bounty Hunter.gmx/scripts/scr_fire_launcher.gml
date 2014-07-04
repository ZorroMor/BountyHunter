var ship_power = global.ships[ship, 2];
var ship_ammo = global.ships[ship, 3];

if connected && (ship_power > 0) && (ship_ammo > 0) && can_shoot
{
    can_shoot = false
    firing = true;
    
    image_index = 1;
    audio_play_sound(snd_shoot, 1, false);
    
    // subtract from ship's ammo
    global.ships[ship, 3] -= ammo_drain;
        
    // subtract from ship's power
    if ship_power >= power_drain
        global.ships[ship, 2] -= power_drain;
    else
        global.ships[ship, 2] = 0;
    
    alarm[0] = cooldown_time;
    alarm[1]=5;
}
