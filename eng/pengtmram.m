function pengtmram(varargin);
% pengtmram( [...] );
% T Mbase RAM
h = timeplot({'memused'}, ...
      'T Mbase RAM', ...
      'RAM', ...
      {'memused'}, ...
      varargin{:} );
