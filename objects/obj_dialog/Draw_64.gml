var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_health_bar, 0, _dx, _dy, _boxw, _boxh);

_dx += 16;
_dy += 16;

draw_set_font(fnt_default);

var _name = messages[current_message].name;
if (global.char_color[$ _name] = undefined)
{
    draw_set_color(c_white);
}
else 
{
	draw_set_color(global.char_color[$ _name]);
}
draw_text(_dx + 45, _dy, _name);
draw_set_color(c_white);

_dy += 40;

draw_text_ext(_dx + 100, _dy, draw_message, -1, _boxw - _dx * 2);