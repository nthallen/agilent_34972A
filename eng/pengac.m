function pengac(varargin);
% pengac( [...] );
% Agilent Count
h = timeplot({'AgCount'}, ...
      'Agilent Count', ...
      'Count', ...
      {'AgCount'}, ...
      varargin{:} );
