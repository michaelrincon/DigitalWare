Program Ordenar;
procedure Burbu(var datos: array of integer; band: boolean);
var
    i,j: integer;
    temporal: integer;
begin
    if band = false then
        begin
            band:=true;
            for j := 0 to 5 - 1 do
                if datos[j] > datos[j + 1] then
                begin
                    temporal := datos[j];
                    datos[j] := datos[j + 1];
                    datos[j + 1] := temporal;
                    band:= false;
                end;
            Burbu(datos,band);
        end
    else
        begin
            writeLn('Los datos tras ordenar son: ');
            for i := 0 to 5 do
                write(datos[i], ' ');
            writeLn;
        end;
end;
var
    datos: array[0..5] of integer;
begin
    datos[0] := 56;
    datos[1] := 9;
    datos[2] := 34;
    datos[3] := 12;
    datos[4] := 41;
    datos[5] := 8;
    Burbu(datos, false)
end.
