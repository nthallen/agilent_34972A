function ui_agnt(dirfunc, stream)
% ui_agnt
% ui_agnt(dirfunc [, stream])
% dirfunc is a string specifying the name of a function
%   that specifies where data run directories are stored.
% stream is an optional argument specifying which stream
%   the run directories have recorded, e.g. 'SerIn'
if nargin < 1
  dirfunc = 'AGNT_DATA_DIR';
end
if nargin >= 2
  f = ne_dialg(stream, 1);
else
  f = ne_dialg('Agilent Logger',1);
end
f = ne_dialg(f, 'add', 0, 1, 'gagnttm', 'T Mbase' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmtd', 'T Drift' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmcpu', 'CPU' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmram', 'RAM' );
f = ne_dialg(f, 'add', 1, 0, 'pagnttmd', 'Disk' );
f = ne_dialg(f, 'add', 0, 1, 'gagnta', 'Agilent' );
f = ne_dialg(f, 'add', 1, 0, 'pagntac', 'C' );
f = ne_dialg(f, 'add', 1, 0, 'pagntacount', 'Count' );
f = ne_dialg(f, 'add', 1, 0, 'pagntas', 'Stale' );
f = ne_listdirs(f, dirfunc, 15);
f = ne_dialg(f, 'newcol');
ne_dialg(f, 'resize');
