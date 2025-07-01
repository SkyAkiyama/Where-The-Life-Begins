var accept_key = keyboard_check_pressed(ord("Z"));

var textbox_x = camera_get_view_x(view_camera[0]);
var textbox_y = camera_get_view_y(view_camera[0]) + 320;

//setup
if (setup == false)
{
    setup = true;
    draw_set_font(fnt_default);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    //loop through pages
    for (var p = 0; p < page_number; p++)
    {
        //grabs how many characters are on each page and stores that number
        text_length[p] = string_length(text[p]);
        
        //get the x position for the textbox
        //no character text (centering)
        text_x_offset[p] = 128;
    }
}

//typing text to textbox
if (draw_char < text_length[page])
{
    draw_char += text_speed;
    draw_char = clamp(draw_char, 0, text_length[page]);
}


//flip through pages
if (accept_key)
{
    //if done typing
    if (draw_char = text_length[page])
    {
        //next page
        if (page < page_number - 1)
        {
            page++;
            draw_char = 0;
        }
        //destroy textbox
        else 
        {
            //link text for options
            if (option_number > 0)
            {
                audio_play_sound(snd_menu_confirm, 1, false);
                create_textbox(option_link_id[option_pos]);
            }
            instance_destroy();
        }
    }
    //if not done typing
    else 
    {
        draw_char = text_length[page];
    }
}






//draw textbox
var txtb_x = textbox_x + text_x_offset[page];
var txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
//back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, txtb_x, txtb_y + border, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1)

//Options
if (draw_char == text_length[page] && page == page_number - 1)
{
    //option selection
    option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
    option_pos = clamp(option_pos, 0, option_number - 1);
    
    var op_space = 15;
    var _op_bord = 4;
    for (var op = 0; op < option_number; op++)
    {
        //the option box
        var _o_w = string_width(option[op]) + _op_bord * 2;
        draw_sprite_ext(txtb_spr, txtb_img, txtb_x + 16, txtb_y - op_space * option_number + op_space * op,_o_w/txtb_spr_w, (op_space - 1)/txtb_spr_h, 0, c_white, 1);
        
        //the arrow
        if (option_pos == op)
        {
            draw_sprite(spr_textbox_arrow, 0, txtb_x, txtb_y - op_space * option_number + op_space * op);
        }
        
        //the option text
        draw_text(txtb_x + 16 + _op_bord, txtb_y - op_space * option_number + op_space * op + 2, option[op]);
    }
}

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);