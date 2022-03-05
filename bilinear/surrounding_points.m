function [x1 y1 x2 y2] = surrounding_points(n, m, x, y)
    % =========================================================================
    % Calculeaza cele 4 puncte ce contin in interior (x, y)
    % Primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se
    % iese din matrice.
    % =========================================================================
    
    % TODO: Calculeaza x1, y1, x2, y2
    
    % TODO: daca y se afla pe ultima linie, asigura ca y2 nu o sa iasa din
    % matrice (nu o sa fie m + 1 daca y1 = m)
    x1=floor(x);
    y1=floor(y);
    if (round(y)!=m)
      y2=y1+1;
    else
      y1=m-1;
      y2=y1+1;
    endif
    % TODO: analog daca x se afla pe ultima coloana
    if (round(x)!=n)
      x2=x1+1;
    else
      x1=n-1;
      x2=x1+1;
    endif
endfunction