if (instance_exists(obj_alice) && distance_to_object(obj_alice) < 8)
{
    can_interact = true
    if (keyboard_check_pressed(input_key))
    {
        create_dialog(dialog);
    }
}
else 
{
    can_interact = false;
}