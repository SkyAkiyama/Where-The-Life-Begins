function get_hp(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.hp];
}

function get_mp(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.mp];
}

function get_str(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.str];
}

function get_mag(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.mag];
}

function get_def(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.def];
}

function get_agi(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.agi];
}

function get_level(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.level];
}

function get_xp(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.xp];
}

function get_xp_require(member_number)
{
    var pmember = global.party_member[member_number];
    return pmember[char_stats.xp_require];
}