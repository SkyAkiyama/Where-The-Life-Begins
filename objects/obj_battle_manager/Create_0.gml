enemy_turn = 0;
damage_to_enemy = 0;
press_icon = 0;
active_party_number = 0

press_turn = function (_press_turn)
{
    for (var i=0<array_length(global.party_member); i++;)
    {
        var pmember = global.party_member[i];
        if (pmember[char_stats.active_party] = true)
        {
            active_party_number += 1;
        }
    }
    
    press_icon = active_party_number;
    
    if (active_party_number == 1)
    {
        press_icon = 2;
    }
}
show_debug_message(string(press_icon))


party_attack = function (_damage)
{
    damage_to_enemy = _damage;
}