if (obj_game_runner.paused = false)
{
    obj_game_runner.paused = true;
    
    physics_pause_enable(true);
    room_goto(rm_menu);
    
    audio_music_gain(0, 1000);
}
else
{
    audio_music_gain(0, 1000);
    audio_play_music(snd_background, true);
    audio_music_gain(1, 1000);
    
    room_goto(rm_level_1);
    
    obj_game_runner.paused = false;
}
