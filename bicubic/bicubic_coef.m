function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    x=x2-x1;
    y=y2-y1;
    
    C=[f(y1,x1) f(y2,x1) Iy(y1,x1) Iy(y2,x1); f(y1,x2) f(y2,x2) Iy(y1,x2) Iy(y2,x2); Ix(y1,x1) Ix(y2,x1) Ixy(y1,x1) Ixy(y2,x1); Ix(y1,x2) Ix(y2,x2) Ixy(y1,x2) Ixy(y2,x2)];
    D=[1 0 0 0; 1 1 1 1; 0 1 0 0; 0 1 2 3];
    D=double(D);
    D=inv(D);
    E=D';
    % TODO: converteste matricile intermediare la double
    C=double(C);
    E=double(E);
    % TODO: calculeaza matricea finala
    A=D*C*E;
    A=double(A);
endfunction