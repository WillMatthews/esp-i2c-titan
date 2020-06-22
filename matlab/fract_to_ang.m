function [ang] = fract_to_ang(f)
%FRACT_TO_ANG fraction of light required to relative angle

% I = I0 * cosd(ang)^2;
% f = cosd(ang)^2;
ang = acosd(sqrt(f));

end

