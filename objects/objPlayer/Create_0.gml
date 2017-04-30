/// @description Insert description here
// You can write your code in this editor

spd = 10;
dx = 0;
dy = 0;
trust = 1;

lol = 0.5;

rotSpd = 5;

imageRot = 0;

trustSys = part_system_create();
trustType = part_type_create();
part_type_shape(trustType, pt_shape_square);
part_type_alpha3(trustType, 0, 0.5, 1);
part_type_size(trustType, 0.1, 0.1, 0.05, 0.01);
part_type_scale(trustType, 0.1, 0.1);
part_type_life(trustType, 5, 10);