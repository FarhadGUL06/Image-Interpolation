function a = bilinear_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2)
    % =========================================================================
    % TODO: calculeaza matricea A
    f=double(f);
    C=[1 x1 y1 x1*y1;1 x1 y2 x1*y2;1 x2 y1 x2*y1;1 x2 y2 x2*y2];
    A=[f(y1,x1) f(y2,x1); f(y1,x2) f(y2,x2)];
    % TODO: calculeaza vectorul b    
    b=[A(1,1);A(1,2);A(2,1);A(2,2)];
    % TODO: calculeaza coeficientii
    C=inv(C);
    a=C*double(b);
endfunction
1