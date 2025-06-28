switch(menu_index)
{
    case 0:
        audio_play_sound(snd_menu_confirm, 1, false);
        room_goto(rm_test);
    break;
    case 3:
        game_end();
}