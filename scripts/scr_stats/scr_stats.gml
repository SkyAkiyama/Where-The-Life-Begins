number_of_party_members = 6;

// Base stats for all party members
enum char_stats
{
    active_party,
    level,
    xp,
    xp_require,
    hp,
    mp,
    str,
    mag,
    def,
    agi,
    NUM // Index to jump to end of stats.
}

enum member
{
    ALICE,
    JADE,
    JEREMIAH,
    WILSON,
    EVELYN,
    ARTEMIS
}

for (var i=0; i<number_of_party_members; i++)
{
    global.party_member[i] = array_create(char_stats.NUM);
}

//Alice stats intilization.
var pmember = global.party_member[member.ALICE];
pmember[char_stats.active_party] = true;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.ALICE] = pmember;

//Jade stats intilization.
pmember = global.party_member[member.JADE];
pmember[char_stats.active_party] = false;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.JADE] = pmember;

//Jeremiah stats intilization.
pmember = global.party_member[member.JEREMIAH];
pmember[char_stats.active_party] = false;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.JEREMIAH] = pmember;

//Wilson stats intilization.
pmember = global.party_member[member.WILSON];
pmember[char_stats.active_party] = false;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.WILSON] = pmember;

//Evelyn stats intilization.
pmember = global.party_member[member.EVELYN];
pmember[char_stats.active_party] = false;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.EVELYN] = pmember;

//Artemis stats intilization.
pmember = global.party_member[member.ARTEMIS];
pmember[char_stats.active_party] = false;
pmember[char_stats.level] = 1;
pmember[char_stats.xp] = 0;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.xp_require] = 200;
pmember[char_stats.hp] = 100;
pmember[char_stats.mp] = 50;
pmember[char_stats.str] = 10;
pmember[char_stats.mag] = 10;
pmember[char_stats.def] = 5;
pmember[char_stats.agi] = 5;

global.party_member[member.ARTEMIS] = pmember;