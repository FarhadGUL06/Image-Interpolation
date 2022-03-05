function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    rosu = img(:,:,1); % Canalul de culoare rosie
    % TODO: extrage canalul verde al imaginii
    verde = img(:,:,2); % Canalul de culoare verde
    % TODO: extrace canalul albastru al imaginii
    albastru = img(:,:,3); % Canalul de culoare albastra

    % TODO: aplicati rotatia pe fiecare canal al imaginii
    rosu=bilinear_rotate(rosu,rotation_angle);
    verde=bilinear_rotate(verde,rotation_angle);
    albastru=bilinear_rotate(albastru,rotation_angle);
    % TODO: reconstruieste imaginea RGB finala (hint: cat)
    out=cat(3,rosu,verde,albastru);
endfunction