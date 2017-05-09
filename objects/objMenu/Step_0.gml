/// @description Insert description here
// You can write your code in this editor

menuPos -= keyboard_check_pressed(vk_up);
menuPos += keyboard_check_pressed(vk_down);
enterKey = keyboard_check(vk_space);

if (menuPos < 0) {
	menuPos = array_length_1d(menuItem) - 1;
}
if (menuPos >= array_length_1d(menuItem)) {
	menuPos = 0;
}

objMenuSel.x = room_width / 2 - 75;
objMenuSel.y = 50 + menuPos * 30;

if (enterKey) {
	switch (menuPos) {
		case menuItems.START_GAME:
			room_goto(rm_game);
			break;
		case menuItems.OPTIONS_GAME:
			break;
		case menuItems.QUIT:
			game_end();
			break;
		default:
			break;
	
	}
}
