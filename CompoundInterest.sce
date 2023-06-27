p = strtod(input("Prestamo: ", "s"));
t = strtod(input("Tasa (%): ", "s"));
t = t / 100;

mprintf("Prestamo: %d\nNo.de pagos\tTotal a pagar\n", p);
for c = 1:12
    f = 0;
    for k = 1:c
        f = f + (p * ((t*(1+t)^c)/(((1+t)^c)-1)));
    end
    mprintf("%d\t\t%f\n", c, f);  
end
