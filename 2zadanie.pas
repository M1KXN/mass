//feature-02 change
// Sorting of array
const n = 9;
var
    m : array[0..n] of integer;
    i,j, buf, c: integer;
begin
    for i:=0 to n do
        begin
            m[i] := Random(10) + 1;
            writeln('m [', i, '] = ', m[i]);
        end;
    for i:= 0 to n do
        begin
            buf := i;
            for j := i+1 to n do
                if m[j] < m[buf] then
                    buf := j;
            if buf <> i then
                begin
                    c := m[buf];
                    m[buf] := m[i];
                    m[i] := c;
                end;
        end;

    writeln;
    for i:= 0 to 9 do
        writeln('m [', i, '] = ', m[i]);
end.