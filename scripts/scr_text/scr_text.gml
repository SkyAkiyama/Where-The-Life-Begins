function scr_set_defaults_for_text()
{
    line_break_pos[0, page_number] = 999;
    line_break_num[page_number] = 0;
    line_break_offset[page_number] = 0;
    
    txtb_spr[page_number] = spr_textbox;
    speaker_sprite[page_number] = noone;
    speaker_side[page_number] = 1;
    snd[page_number] = snd_alice_speak;
}


/// @param {string} _text
/// @param {string} [character] description
/// @param {integer} [side] description
function scr_text(_text)
{
    scr_set_defaults_for_text();
    
    text[page_number] = _text;
    
    //get character info
    if (argument_count > 1)
    {
        switch (argument[1]) 
        {
            case "Alice":
                speaker_sprite[page_number] = spr_alice_speak;
                snd[page_number] = snd_alice_speak;
            break;
        }
    }
    
    //side the character is on
    if (argument_count > 2)
    {
        speaker_side[page_number] = argument[2];
    }
    
    page_number++;
}


/// @param {string} _option description
/// @param {string} _link_id description
function scr_option(_option, _link_id)
{
    option[option_number] = _option;
    option_link_id[option_number] = _link_id;
    
    option_number++;
}

/// @param {string} text_id description
function create_textbox(text_id)
{
    with (instance_create_depth(0, 0, -9999, obj_textbox))
    {
        game_text(text_id);
    }
}