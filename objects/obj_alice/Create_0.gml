// Move Speed and grabbing collision layer
move_speed = 2;
tilemap = layer_tilemap_get_id("Tiles_Col");

// Setting base stats for Alice from global stat variable
hp = get_hp(member.ALICE);
hp_total = hp;
mp = get_mp(member.ALICE);
mp_total = mp;
str = get_str(member.ALICE);
mag = get_mag(member.ALICE);
def = get_def(member.ALICE);
agi = get_agi(member.ALICE);

// Alice Level and EXP needed
level = get_level(member.ALICE);
xp = get_xp(member.ALICE);
xp_require = get_xp_require(member.ALICE);