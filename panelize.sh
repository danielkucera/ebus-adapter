kikit panelize --layout 'grid; rows: 3; cols: 2; hspace: 2mm; vspace: 1mm; alternation: cols; rotation: 180deg;' \
	--source 'tolerance: 50mm' \
	--tabs 'fixed; vcount: 0; width: 5mm;' \
	--cuts 'mousebites' \
	--framing 'railslr; width: 3mm; space: 1.5mm' \
	--fiducials '3fid; hoffset: 1.5mm; voffset: 1.5mm; coppersize: 2mm; opening: 1mm;' \
	wiring.kicad_pcb panel.kicad_pcb

#	--cuts 'mousebites; drill: 0.5mm; spacing: 1mm; offset: -0.1mm' \
kikit fab jlcpcb --no-drc --assembly --field LCSC,LCSC2 --schematic wiring.kicad_sch panel.kicad_pcb fab-`date --iso-8601=seconds`
