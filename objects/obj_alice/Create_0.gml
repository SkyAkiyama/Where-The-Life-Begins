// Move Speed and grabbing collision layer
move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_Col");

// Setting base stats for Alice from global stat variable
hp = global.alice_hp;
hp_total = hp;
mp = global.alice_mp;
mp_total = mp;
str = global.alice_str;
mag = global.alice_mag;
def = global.alice_def;
spd = global.alice_spd;

// Alice Level and EXP needed
level = global.alice_level;
xp = global.alice_exp;
xp_require = global.alice_exp_require;