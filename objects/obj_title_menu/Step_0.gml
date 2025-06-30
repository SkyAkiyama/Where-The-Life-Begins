//Get Inputs
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(ord("Z"));

//Store number of options in current menu
op_length = array_length(option[menu_level])

pos += down_key - up_key;

if (pos >= op_length)
{
    pos = 0;
}

if (pos < 0)
{
    pos = op_length - 1;
}

if (pos != last_selected)
{
    audio_play_sound(snd_menu_scroll, 1, false);
}

last_selected = pos;

if accept_key
{
    var _sml = menu_level;
    switch(menu_level)
    {
        //Main Menu
        case 0:
            switch (pos)
            {
                //New Game
                case 0:
                    audio_play_sound(snd_menu_confirm, 1, false);
                    room_goto(rm_test);
                break;
                
                //Options
                case 2:
                    audio_play_sound(snd_menu_confirm, 1, false);
                    menu_level = 1;
                break;
                
                //Quit Game
                case 3:
                    game_end();
                break;
            }
        break;
        
        //Settings Option
        case 1:
            switch (pos)
            {
                //Window Size
                case 0:
                    //Settings here
                break;
                
                //Brightness
                case 1:
                    //Settings here
                break;
                
                //Controls
                case 2:
                    //Settings here
                break;
                
                //Returns to Main Menu
                case 3:
                    audio_play_sound(snd_menu_back, 1, false)
                    menu_level = 0;
                break;
            }
    }
    
    //Set position back to top if previous array doesn't have as many options
    if _sml != menu_level
    {
        pos = 0;
    }
    
    //Correct option length
    op_length = array_length(option[menu_level])
}