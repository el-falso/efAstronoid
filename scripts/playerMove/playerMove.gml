var ukey = keyboard_check(vk_up);

var lRotKey = keyboard_check(ord("X"));
var rRotKey = keyboard_check(ord("L"));

if (ukey) {
	spd = 10;
	dy = -dsin(image_angle) * spd;
	dx = dcos(image_angle) * spd;
	part_particles_create(trustSys, x + lengthdir_x(32, 158 + image_angle ), y + lengthdir_y(32, 158 + image_angle), trustType, 5);
	part_particles_create(trustSys, x + lengthdir_x(32, -158 + image_angle ), y + lengthdir_y(32, -158 + image_angle), trustType, 5);
}
else {
	spd  -= 0.1;
	if (spd <= 0) {
		spd = 0;
	}
	dy = -dsin(image_angle) * spd;
	dx = dcos(image_angle) * spd;
}

x += dx;

y += dy;

if ((rRotKey && lRotKey) || (!rRotKey && !lRotKey)) {
	imageRot = 0;
}


imageRot = (lRotKey - rRotKey) * rotSpd;

image_angle += imageRot;

if ((-360 >= image_angle) || (image_angle >= 360)) {
	image_angle = 0;
}