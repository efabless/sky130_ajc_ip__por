#--------------------------------------------------------------
# CACE circuit characterization file
#--------------------------------------------------------------

name:		sky130_ajc_ip__por
description:	Power-on-reset
commit:		N/A
PDK:		sky130A

cace_format:	4.0

authorship {
	designer:	Robin Matthew Tsang
	company:	Ajacci, Ltd. Co.
	creation_date:	March 22, 2024
	license:	Apache 2.0
}

# Paths to various files

paths {
	root:		..
	documentation:	doc
	schematic:	xschem
	magic:		mag
	layout:		gds
	netlist:	netlist
	testbench:	cace
	simulation:	ngspice
	plots:		plots
	logs:		ngspice/log
}

# Pin names and descriptions

pins {

	name:		vbg_1v2
	description:	Bandgap reference 1.20V
	type:		signal
	direction:	input
	Vmin:		1.15
	Vmax:		1.25

	+
	name:		otrip2:0
	description:	Digital trip voltage select for brown-out detector
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		force_pdn
	description:	Force power-down
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		isrc_sel
	description:	Internal(0)/external(1) bias current select
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		force_ena_rc_osc
	description:	Force internal rc-oscillator to turn on, test-mode
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		force_dis_rc_osc
	description:	Force internal rc-oscillator to turn off, test-mode
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		force_short_oneshot
	description:	Force one-shot timeout period to be very short, test-mode
	type:		digital
	direction:	input
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		ibg_200n
	description:	External 200n bandgap reference current
	type:		signal
	direction:	input
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		por
	description:	power-on-reset (active high)
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		porb
	description:	power-on-reset (active low)
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		porb_h
	description:	power-on-reset (active low 3v3)
	type:		digital
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		itest
	description:	Test current, send to external 1Mohm resistor if desired
	type:		signal
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		dvdd
	description:	Positive digital power supply
	type:		power
	direction:	inout
	Vmin:		1.5
	Vmax:		2.1

	+
	name:		dvss
	description:	Digital ground
	type:		ground
	direction:	inout
	Vmin:		-0.3
	Vmax:		0.3

	+
	name:		avdd
	description:	Positive analog power supply
	type:		power
	direction:	inout
	Vmin:		3.0
	Vmax:		6.0

	+
	name:		avss
	description:	Analog ground
	type:		ground
	direction:	inout
	Vmin:		-0.3
	Vmax:		0.3

	+
	name:		pwup_filt
	description:	Filtered analog comparator output, test-mode
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		osc_ck
	description:	RC oscillator output
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		vin
	description:	Analog input to comparator
	type:		signal
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		por_timed_out
	description:	Asserts high when one-shot timer expires after power-on-reset event ~50ms
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		startup_timed_out
	description:	Asserts high when one-shot timer expires after initial powup-up for supply to stabilize ~1ms
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3

	+
	name:		dcomp
	description:	Unfiltered analog comparator output, test-mode
	type:		digital
	direction:	output
	Vmin:		dvss - 0.3
	Vmax:		dvdd + 0.3
}

# Default values for electrical parameter measurement conditions
# if not otherwise specified

default_conditions {
	name:		Vdvdd
	description:	Digital power supply voltage
	display:	dvdd
	unit:		V
	typical:	1.8

	+
	name:		Vdvss
	description:	Digital ground
	display:	dvss
	unit:		V
	typical:	0

	+
	name:		Vavdd
	description:	Analog power supply voltage
	display:	avdd
	unit:		V
	typical:	3.3

	+
	name:		Vavss
	description:	Analog ground
	display:	avss
	unit:		V
	typical:	0

	+
	name:		cload
	description:	Output load capatitance
	display:	cload
	unit:		pF
	maximum:	20

	+
	name:		force_pdn
	description:	Force diable of power-on-reset circuit
	display:	force_pdn
	typical:	0

	+
	name:		isrc_sel
	description:	Internal(0)/external(1) bias current select
	display:	isrc_sel
	typical:	0

	+
	name:		force_ena_rc_osc
	description:	Force internal rc-oscillator to turn on, test-mode
	display:	force_ena_rc_osc
	typical:	0

	+
	name:		force_dis_rc_osc
	description:	Force internal rc-oscillator to turn on, test-mode
	display:	force_dis_rc_osc
	typical:	0

	+
	name:		force_short_oneshot
	description:	Force one-shot timeout period to be very short, test-mode
	display:	force_short_oneshot
	typical:	0

	+
	name:		otrip[2:0]
	description:	Brown-out trip voltage digital input value
	display:	otrip[2:0]
	typical:	100

	+
	name:		temperature
	description:	Ambient temperature
	display:	Temp
	unit:		{degrees}C
	minimum:	-40
	typical:	27
	maximum:	130

	+
	name:		corner
	description:	Process corner
	display:	Corner
	minimum:	ss
	typical:	tt
	maximum:	ff

}

# List of electrical parameters to be measured and their specified limits

electrical_parameters {
	name:		hysteresis
	status:		skip
	description:	Check amount of hysteresis at each trip voltage
	display:	Hysteresis (out)
	unit:		V
	spec {
		minimum:	0.1	fail
		typical:	0.2
		maximum:	0.3	fail
	}
	simulate {
		tool:		ngspice
		template:	trip_up_down.spice
		format:		ascii .data result
		collate:        otrip[2:0]
	}
        measure {
                tool:           octave
                filename:       hysteresis.m
        }
	conditions {
		name: otrip[2:0]
		enumerate: 000 100 111

		+
		name: force_dis_rc_osc
		typical: 1

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt

	}

	+
	name:		accuracy
	status:		skip
	description:	Check absolute accuracy of trip voltages (avg of pos- and neg-ramp trip voltages)
	display:	Accuracy (out)
	unit:		V
	spec {
		minimum:	-0.1	fail
		typical:	0
		maximum:	0.1	fail
	}
	simulate {
		tool:		ngspice
		template:	trip_up_down.spice
		format:		ascii .data result
		collate:        otrip[2:0]
	}
        measure {
                tool:           octave
                filename:       accuracy.m
        }
	conditions {
		name: otrip[2:0]
		enumerate: 000 100 111

		+
		name: force_dis_rc_osc
		typical: 1

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt

	}

	+
	name:		startup_time
	status:		skip
	description:	Measure time between when avdd crosses trip voltage to when POR reset is active, allows power supply to stabilize
	display:	Startup time (actual)
	unit:		ms
	spec {
		maximum:	2	fail
		typical:	1
		minimum:	0.5	fail
	}
	simulate {
		tool:		ngspice
		template:	response_time.spice
		format:		ascii .data result
	}
        measure {
                tool:           octave
                filename:       startup_time.m
        }
	conditions {
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt

	}

	+
	name:		reset_active_time
	status:		skip
	description:	Estimate reset active time by check rc oscillator period across 10 cycles, then multiplying by 2048.
	display:	Reset active time (est.)
	unit:		ms
	spec {
		maximum:	100	fail
		typical:	50
		minimum:	30	fail
	}
	simulate {
		tool:		ngspice
		template:	response_time.spice
		format:		ascii .data result
	}
        measure {
                tool:           octave
                filename:       response_time_osc.m
        }
	conditions {
		name: force_short_oneshot
		typical: 1

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt

	}

#	+
#	name:		reset_active_time_actual
#	status:		skip
#	description:	Actual reset active time (long sim ~50ms).
#	display:	Reset active time (actual, long)
#	unit:		ms
#	spec {
#		maximum:	100	fail
#		typical:	50
#		minimum:	30	fail
#	}
#	simulate {
#		tool:		ngspice
#		template:	transient_long.spice
#		format:		ascii .data result
#	}
#	conditions {
#		name: force_short_oneshot
#		typical: 0
#
#		+
#		name: temperature
#		typical: 27
#
#		+
#		name: corner
#		typical: tt
#
#	}

	+
	name:		supply_ramp
	status:		skip
	description:	Demo of power-on-reset during a supply ramp and supply glitch with test-mode force_short_oneshot enabled.  Shortens startup to and reset active windows to 4 and 8 osc_ck cycles, from 32 and 2048 osc_ck cycles.
	display:	Supply ramp/glitch demo (short)
	unit:		V
	simulate {
		tool:		ngspice
		template:	transient.spice
		format:		ascii .data time result avdd osc_ck
	}
	plot {
		filename: supply_ramp.png
		xaxis: time
		yaxis: result
	}
	variables {
		name: time
		display: Time
		unit: ms

		+
		name: result
		display: porb
		unit: V

		+
		name: avdd
		display: avdd
		unit: V

		+
		name: osc_ck
		display: osc_ck
		unit: V
	}
	conditions {
		name: force_short_oneshot
		typical: 1

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt

	}

	+
	name:		Idd_enabled
	status:		skip
	description:	Current draw through analog supply, POR enabled
	display:	Idd
	unit:		{micro}A
	spec {
		minimum:	any
		typical:	3
		maximum:	5	fail
	}
	simulate {
		tool:		ngspice
		template:	dccurrent_avdd.spice
		format:		ascii .data null result
	}
	conditions {
		name: Vdvdd
		typical: 1.8

		+
		name: Vavdd
		typical: 3.3

		+
		name: otrip[2:0]
		typical: 100

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt
	}

	+
	name:		Idd_disabled
	status:		skip
	description:	Current draw through analog supply, POR disabled
	display:	Standby current
	unit:		{micro}A
	spec {
		minimum:	any
		typical:	0.01
		maximum:	0.1	fail
	}
	simulate {
		tool:		ngspice
		template:	dccurrent_avdd.spice
		format:		ascii .data null result
	}
	conditions {
		name: Vdvdd
		typical: 1.8

		+
		name: Vavdd
		typical: 3.3

		+
		name: otrip[2:0]
		typical: 000

		+
		name: force_pdn
		typical: 1

		+
		name: temperature
		typical: 27

		+
		name: corner
		typical: tt
	}

}
