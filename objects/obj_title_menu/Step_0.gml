//Get Inputs
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(ord("Z"));
var cancel_key = keyboard_check_pressed(ord("X"));

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
                    room_goto(rm_text_test);
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
                    audio_play_sound(snd_menu_confirm, 1, false);
                    menu_level = 2;
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
        break;
        
        //Window Size Menu
        case 2:
            switch (pos)
            {
                //Default Size
                case 0:
                    if (global.is_fullscreen = false) 
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_set_size(640, 480);
                        window_center();
                    }
                    else 
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_set_fullscreen(false); 
                        window_enable_borderless_fullscreen(false);
                        window_set_size(640, 480);
                        window_center();
                        global.is_fullscreen = false;
                    }
                break;
                
                //2x Default Size
                case 1:
                    if (global.is_fullscreen = false)
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_set_size(1280, 960);
                        window_center();
                    }
                    else 
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_set_fullscreen(false); 
                        window_enable_borderless_fullscreen(false);
                        window_set_size(1280, 960);
                        window_center();
                        global.is_fullscreen = false;
                    }
                break;
                
                //Set Fullscreen
                case 2:
                    if (global.is_fullscreen = false)
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_enable_borderless_fullscreen(true);
                        window_set_fullscreen(true);
                        global.is_fullscreen = true;
                    }
                    else 
                    {
                        audio_play_sound(snd_menu_confirm, 1, false);
                        window_enable_borderless_fullscreen(false);
                        window_set_fullscreen(false);
                        global.is_fullscreen = false;
                    }
                break;
                
                //Return to Settings Menu
                case 3:
                    audio_play_sound(snd_menu_back, 1, false);
                    menu_level = 1;
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