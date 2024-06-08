// 
{var
    m : array[0..9] of integer;
    i,j, buf: integer;
begin
    for i:=0 to 9 do
    begin
        m[i] := Random(10) + 1;
        writeln('m [', i, '] = ', m[i]);
    end;
    for i:=0 to 9 do
    for j:=i+1 to 9 do
    if m[i] > m[j] then
    begin
    buf := m[i];
    m[i] := m[j];
    m[j] := buf;
    end;
    writeln;    
    for i:= 0 to 9 do
    writeln('m [', i, '] = ', m[i]);
end.}

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