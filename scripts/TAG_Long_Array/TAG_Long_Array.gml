function TAG_Long_Array(argument0, argument1) {
	// TAG_Long_Array(name, length)
	var name, length;
	name = argument0
	length = argument1
	buffer_write_byte(12)
	buffer_write_string_short_be(name)
	buffer_write_int_be(length)



}
