function dfs_out = rt_agnt(dfs)
% dfs = rt_agnt()
%   Create a data_fields object and setup all the buttons for realtime
%   plots
% dfs_out = rt_agnt(dfs)
%   Use the data_fields object and setup all the buttons for realtime plots
if nargin < 1
  dfs = data_fields('title', 'Agilent Logger', ...
    'Color', [.8 .8 1], ...
    'h_leading', 8, 'v_leading', 2, ...
    'btn_fontsize', 12, ...
    'txt_fontsize', 12);
  context_level = dfs.rt_init;
else
  context_level = 1;
end
dfs.start_col;
dfs.plot('tm', 'label', 'T Mbase', 'plots', {'tmtd','tmcpu','tmram','tmd'});
dfs.plot('tmtd','label','T Drift','vars',{'SysTDrift'});
dfs.plot('tmcpu','label','CPU','vars',{'CPU_Pct'});
dfs.plot('tmram','label','RAM','vars',{'memused'});
dfs.plot('tmd','label','Disk','vars',{'Disk'});
dfs.plot('a', 'label', 'Agilent', 'plots', {'ac','acount','as'});
dfs.plot('ac','label','C','vars',{'R1','R2','R3','R4','R5','R6','R7'});
dfs.plot('acount','label','Count','vars',{'AgCount'});
dfs.plot('as','label','Stale','vars',{'AgDevStale','AgDrvStale'});
dfs.end_col;
dfs.resize(context_level);
dfs.set_connection('127.0.0.1', 1080);
if nargout > 0
  dfs_out = dfs;
end
