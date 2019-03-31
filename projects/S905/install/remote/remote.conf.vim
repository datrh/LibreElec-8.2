#*********************************************************************************************************
#this file is configuration for each factory remote device
# 	work_mode	  0 :software mode  1 :hardware mode
#	repeat_enable	  0 :disable repeat 1 :enable repeat
#
#	factory_code      each device has it's unique factory code.
#			  pattern:custom_code(16bit)+index_code(16bit)
#			  examble: 0xff000001 = 0xff00(custom cod)  0001 (index)
#
#	release_delay	  unit:ms.release will report from kernel to user layer after this period of time
#			  from press or repeat triggered.
#
#	debug_enable      0 :debug disable  1 :debug disable
#
# SW MODE:
#	bit_count	  how many bits in each frame
#	tw_leader_act	  time window for leader active
#	tw_bit0		  time window for bit0 time.
#	tw_bit1		  time window for bit1 time
#	tw_repeat_leader  time window for repeat leader
# REG
#	reg_base_gen	  set value for PREG_IR_DEC_BASE_GEN
#	reg_control	  set value for PREG_IR_DEC_CONTROL
#	reg_leader_act	  set value for PREG_IR_DEC_LEADER_ACTIVE
#	reg_leader_idle	  set value for PREG_IR_DEC_LEADER_IDLE
#	reg_repeat_leader set value for PREG_IR_DEC_REPEAT_IDLE
#	reg_bit0_time	  set value for PREG_IR_DEC_BIT0_TIME
#*************************************************************************************************************
#amlogic NEC remote
work_mode  		= 0
repeat_enable = 1
repeat_delay = 130
repeat_peroid = 120
release_delay   =       20
debug_enable 	= 0

fn_key_scancode    = 0x5c
left_key_scancode  = 0x0e
right_key_scancode = 0x1a
up_key_scancode    = 0x03
down_key_scancode  = 0x02
ok_key_scancode    = 0x07
pageup_key_scancode = 0x04
pagedown_key_scancode = 0x1b

custom_begin
		factory_infcode = 1
		factory_code	= 0xff000001

		mouse_begin
				0 0x0e
				1 0x1a
				2 0x03
				3 0x02
		mouse_end
		key_begin
				0x14 116
				0x13 139
				0x03 103
				0x02 108
				0x0e 105
				0x1a 106
				0x07 28
				0x58 114
				0x5c 63
				0x0b 115
				0x01 158
				0x48 102
		key_end
custom_end
