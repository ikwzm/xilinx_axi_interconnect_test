#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set S00_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name S00_DATA_WIDTH]
	set S00_USER_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name S00_USER_WIDTH]
	set S00_ADDR_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name S00_ADDR_WIDTH]
	set M00_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name M00_DATA_WIDTH]
	set M00_USER_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name M00_USER_WIDTH]
	set M00_ADDR_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name M00_ADDR_WIDTH]
	set ID_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name ID_WIDTH]
	set WRITE_ENABLE [ipgui::add_param $IPINST -parent $Page0 -name WRITE_ENABLE]
	set READ_ENABLE [ipgui::add_param $IPINST -parent $Page0 -name READ_ENABLE]
	set SCENARIO_FILE [ipgui::add_param $IPINST -parent $Page0 -name SCENARIO_FILE]
	set NAME [ipgui::add_param $IPINST -parent $Page0 -name NAME]
}

proc update_PARAM_VALUE.S00_DATA_WIDTH { PARAM_VALUE.S00_DATA_WIDTH } {
	# Procedure called to update S00_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_DATA_WIDTH { PARAM_VALUE.S00_DATA_WIDTH } {
	# Procedure called to validate S00_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.S00_USER_WIDTH { PARAM_VALUE.S00_USER_WIDTH } {
	# Procedure called to update S00_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_USER_WIDTH { PARAM_VALUE.S00_USER_WIDTH } {
	# Procedure called to validate S00_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.S00_ADDR_WIDTH { PARAM_VALUE.S00_ADDR_WIDTH } {
	# Procedure called to update S00_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S00_ADDR_WIDTH { PARAM_VALUE.S00_ADDR_WIDTH } {
	# Procedure called to validate S00_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M00_DATA_WIDTH { PARAM_VALUE.M00_DATA_WIDTH } {
	# Procedure called to update M00_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_DATA_WIDTH { PARAM_VALUE.M00_DATA_WIDTH } {
	# Procedure called to validate M00_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.M00_USER_WIDTH { PARAM_VALUE.M00_USER_WIDTH } {
	# Procedure called to update M00_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_USER_WIDTH { PARAM_VALUE.M00_USER_WIDTH } {
	# Procedure called to validate M00_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.M00_ADDR_WIDTH { PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to update M00_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M00_ADDR_WIDTH { PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to validate M00_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}

proc update_PARAM_VALUE.WRITE_ENABLE { PARAM_VALUE.WRITE_ENABLE } {
	# Procedure called to update WRITE_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_ENABLE { PARAM_VALUE.WRITE_ENABLE } {
	# Procedure called to validate WRITE_ENABLE
	return true
}

proc update_PARAM_VALUE.READ_ENABLE { PARAM_VALUE.READ_ENABLE } {
	# Procedure called to update READ_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_ENABLE { PARAM_VALUE.READ_ENABLE } {
	# Procedure called to validate READ_ENABLE
	return true
}

proc update_PARAM_VALUE.SCENARIO_FILE { PARAM_VALUE.SCENARIO_FILE } {
	# Procedure called to update SCENARIO_FILE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCENARIO_FILE { PARAM_VALUE.SCENARIO_FILE } {
	# Procedure called to validate SCENARIO_FILE
	return true
}

proc update_PARAM_VALUE.NAME { PARAM_VALUE.NAME } {
	# Procedure called to update NAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NAME { PARAM_VALUE.NAME } {
	# Procedure called to validate NAME
	return true
}


proc update_MODELPARAM_VALUE.NAME { MODELPARAM_VALUE.NAME PARAM_VALUE.NAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NAME}] ${MODELPARAM_VALUE.NAME}
}

proc update_MODELPARAM_VALUE.SCENARIO_FILE { MODELPARAM_VALUE.SCENARIO_FILE PARAM_VALUE.SCENARIO_FILE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCENARIO_FILE}] ${MODELPARAM_VALUE.SCENARIO_FILE}
}

proc update_MODELPARAM_VALUE.READ_ENABLE { MODELPARAM_VALUE.READ_ENABLE PARAM_VALUE.READ_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_ENABLE}] ${MODELPARAM_VALUE.READ_ENABLE}
}

proc update_MODELPARAM_VALUE.WRITE_ENABLE { MODELPARAM_VALUE.WRITE_ENABLE PARAM_VALUE.WRITE_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_ENABLE}] ${MODELPARAM_VALUE.WRITE_ENABLE}
}

proc update_MODELPARAM_VALUE.ID_WIDTH { MODELPARAM_VALUE.ID_WIDTH PARAM_VALUE.ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID_WIDTH}] ${MODELPARAM_VALUE.ID_WIDTH}
}

proc update_MODELPARAM_VALUE.M00_ADDR_WIDTH { MODELPARAM_VALUE.M00_ADDR_WIDTH PARAM_VALUE.M00_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_ADDR_WIDTH}] ${MODELPARAM_VALUE.M00_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M00_USER_WIDTH { MODELPARAM_VALUE.M00_USER_WIDTH PARAM_VALUE.M00_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_USER_WIDTH}] ${MODELPARAM_VALUE.M00_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.M00_DATA_WIDTH { MODELPARAM_VALUE.M00_DATA_WIDTH PARAM_VALUE.M00_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M00_DATA_WIDTH}] ${MODELPARAM_VALUE.M00_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.S00_ADDR_WIDTH { MODELPARAM_VALUE.S00_ADDR_WIDTH PARAM_VALUE.S00_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_ADDR_WIDTH}] ${MODELPARAM_VALUE.S00_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.S00_USER_WIDTH { MODELPARAM_VALUE.S00_USER_WIDTH PARAM_VALUE.S00_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_USER_WIDTH}] ${MODELPARAM_VALUE.S00_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.S00_DATA_WIDTH { MODELPARAM_VALUE.S00_DATA_WIDTH PARAM_VALUE.S00_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S00_DATA_WIDTH}] ${MODELPARAM_VALUE.S00_DATA_WIDTH}
}

