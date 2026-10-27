function structure_block_state(argument0, argument1, argument2, argument3) {
	// structure_block_state(x, y, z, insnum)
	// Returns the structure palette index of the schematic block at the given position
	var a, b, c, insnum, o;
	a = argument0
	b = argument1
	c = argument2
	insnum = argument3
	o = obj_controller
	if (sch_block_read(a, b, c) = 0) return insnum * 26 + 4 //air
	else if (sch_block_read(a, b, c) = block_walkway_block && sch_data_read(a, b, c) = block_walkway_data) return 0 //walkway
	else if (sch_block_read(a, b, c) = block_circuit_block && sch_data_read(a, b, c) = block_circuit_data) return 1 //circuit
	else if (sch_block_read(a, b, c) = block_ground_block && sch_data_read(a, b, c) = block_ground_data) return 2 //ground
	else if (sch_block_read(a, b, c) = 35 && sch_data_read(a, b, c) = 11) return insnum * 26 + 3 //blue_wool
	else if (sch_block_read(a, b, c) = 65) return insnum * 26 + 5 //ladder
	else if (sch_block_read(a, b, c) = 55) return insnum * 26 + 6 //redstone_wire
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 3) return insnum * 26 + 7 //east repeater 1
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 3 + 4) return insnum * 26 + 8 //east repeater 2
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 3 + 4 * 2) return insnum * 26 + 9 //east repeater 3
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 3 + 4 * 3) return insnum * 26 + 10 //east repeater 4
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 1) return insnum * 26 + 11 //west repeater 1
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 1 + 4) return insnum * 26 + 12 //west repeater 2
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 1 + 4 * 2) return insnum * 26 + 13 //west repeater 3
	else if (sch_block_read(a, b, c) = 93 && sch_data_read(a, b, c) = 1 + 4 * 3) return insnum * 26 + 14 //west repeater 4
	else if (sch_block_read(a, b, c) = 94) return insnum * 26 + 15 //south repeater 4
	else if (sch_block_read(a, b, c) = 75 && sch_data_read(a, b, c) = 5) return insnum * 26 + 16 //unlit torch
	else if (sch_block_read(a, b, c) = 76 && sch_data_read(a, b, c) = 5) return insnum * 26 + 17 //lit torch
	else if (sch_block_read(a, b, c) = 77) return insnum * 26 + 18 //south stone_button
	else if (sch_block_read(a, b, c) = 27) return insnum * 26 + 20 //ns powered_rail
	else if (sch_block_read(a, b, c) = 66) return insnum * 26 + 22 //ns rail
	else if (sch_block_read(a, b, c) = 75 && sch_data_read(a, b, c) = 1) return insnum * 26 + 23 //east unlit walltorch
	else if (sch_block_read(a, b, c) = 76 && sch_data_read(a, b, c) = 1) return insnum * 26 + 24 //east lit walltorch
	else if (sch_block_read(a, b, c) = 75 && sch_data_read(a, b, c) = 2) return insnum * 26 + 25 //west unlit walltorch
	else if (sch_block_read(a, b, c) = 76 && sch_data_read(a, b, c) = 2) return insnum * 26 + 26 //west lit walltorch
	else if (sch_block_read(a, b, c) = 69) return insnum * 26 + 27 //south lever
	else if (sch_block_read(a, b, c) = 75 && sch_data_read(a, b, c) = 4) return insnum * 26 + 28 //north lit walltorch
	for (var i = 0; i < insnum; i++) {
		if (sch_block_read(a, b, c) = o.sch_exp_ins_block[i] && sch_data_read(a, b, c) = o.sch_exp_ins_data[i]) return 3 + i
	}
	return insnum * 26 + 4 //air



}
