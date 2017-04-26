/// @description Movement

var ukey = keyboard_check(vk_up);

var lRotKey = keyboard_check(ord("X"));
var rRotKey = keyboard_check(ord("L"));

if (ukey) {
	spd = 10;
	vspd = -dsin(image_angle) * trust * spd;
	hspd = dcos(image_angle) * trust * spd;
	part_particles_create(Sname, x-16, y, global.steam, 5);
}
else {
	spd  -= 0.1;
	if (spd <= 0) {
		spd = 0;
	}
	vspd = -dsin(image_angle) * trust * spd;
	hspd = dcos(image_angle) * trust * spd;
}

x += hspd;

y += vspd;

if ((rRotKey && lRotKey) || (!rRotKey && !lRotKey)) {
	imageRot = 0;
}


imageRot = (lRotKey - rRotKey) * rotSpd;

image_angle += imageRot;

if (x < 0) {
	x = room_width;
}

if (x > room_width) {
	x = 0;
}

if (y < 0) {
	y = room_height;
}

if (y > room_height) {
	y = 0;
}