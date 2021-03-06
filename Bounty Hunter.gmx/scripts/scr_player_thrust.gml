var thrust_direction = argument0;

if fuel > 0 && phy_active
{
    physics_apply_local_force(0, 0, 0, thrust * thrust_direction);
    fuel--;
    
    if !thrusting
    {
        if snd_temp != false
            audio_stop_sound(snd_temp);
            
        snd_temp = audio_play_sound(snd_hiss, 0, true);
    }
   
    thrusting = true;
}
else
{
    if snd_temp != false
        audio_stop_sound(snd_temp);
    thrusting = false;
}
