function fig = gagnta(varargin);
% gagnta(...)
% Agilent
ffig = ne_group(varargin,'Agilent','pagntac','pagntacount','pagntas');
if nargout > 0 fig = ffig; end
