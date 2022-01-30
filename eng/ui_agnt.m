function ui_agnt
f = ne_dialg('Agilent Logger',1);
f = ne_dialg(f, 'add', 0, 1, 'gagnttm', 'T Mbase' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmtd', 'T Drift' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmcpu', 'CPU' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmram', 'RAM' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmd', 'Disk' );
f = ne_dialg(f, 'add', 0, 1, 'gagnta', 'Agilent' );
f = ne_dialg(f, 'add', 1, 0, 'pagntao', 'Ohms' );
f = ne_dialg(f, 'add', 1, 0, 'pagntac', 'Count' );
f = ne_dialg(f, 'add', 1, 0, 'pagntas', 'Stale' );
f = ne_listdirs(f, 'AGNT_DATA_DIR', 15);
f = ne_dialg(f, 'newcol');
ne_dialg(f, 'resize');
