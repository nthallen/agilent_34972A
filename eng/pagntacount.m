function pagntacount(varargin);
% pagntacount( [...] );
% Agilent Count
h = timeplot({'AgCount'}, ...
      'Agilent Count', ...
      'Count', ...
      {'AgCount'}, ...
      varargin{:} );
