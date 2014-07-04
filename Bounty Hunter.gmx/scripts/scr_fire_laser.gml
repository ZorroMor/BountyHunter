var ship_power = global.ships[ship, 2];
    
if connected && (ship_power > 0) && can_shoot
{
    image_index = 1;
    
    if !laser_firing 
    {
        if (snd_temp != false)
            audio_stop_sound(snd_temp);
        snd_temp = audio_play_sound(snd_laser_beam, 0, true);
    }
   
    laser_firing = true;
    
    alarm[0] = cooldown_time;
    alarm[1] = firing_time;
    can_shoot = false;
}

if !connected || (ship_power < power_drain + 1)
{
    if (snd_temp != false)
        audio_stop_sound(snd_temp);
    if (snd_hit != false)
        audio_stop_sound(snd_hit);
        
    image_index = 0;
    laser_firing = false;
}
