function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    rosu = img(:,:,1); % Canalul de culoare rosie
    % TODO: extrage canalul verde al imaginii
    verde = img(:,:,2); % Canalul de culoare verde
    % TODO: extrace canalul albastru al imaginii
    albastru = img(:,:,3); % Canalul de culoare albastra

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    rosu=nn_2x2(rosu,STEP);
    verde=nn_2x2(verde,STEP);
    albastru=nn_2x2(albastru,STEP);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out=cat(3,rosu,verde,albastru);
endfunction
