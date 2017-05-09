/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (i = 0; i < array_length_1d(menuItem); i++) {
	draw_text(room_width / 2, 50 + i * 30, menuItem[i]);
	instance_create_depth(room_width / 2, 50 + i * 30, -10, objButtonPar);
	buttonId = instance_id_get(i);
	variable_instance_set(buttonId, "number", i);
	
	draw_text(room_width / 2 + 200, 50 + i * 30, buttonId.number);
}

draw_text(200,200, string(menuPos));

