if ((keyboard_check_pressed(input_key)) && distance_to_object(obj_alice) < 8 && instance_exists(obj_textbox) = false)
{
    create_textbox(text_id);
}