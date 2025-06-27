// Base stats for all party members
enum char_stats
{
    active_party,
    hp,
    mp,
    str,
    mag,
    def,
    agi,
    NUM // Index to jump to end of stats.
}

for (var i=0; i<number_of_party_members; i++)
{
    global.party_member[i] = array_create(char_stats.NUM);
}