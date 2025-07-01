/// @param {string}
function scr_text(_text)
{
    text[page_number] = _text;
    
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