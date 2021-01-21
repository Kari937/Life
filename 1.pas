uses crt;
var
a:array[1..22,1..22]of integer;
b:array[1..20,1..20]of string;
i,j,k,ch:integer;
begin
for i:=2 to 21 do begin
for j:=2 to 21 do begin
a[i,j]:=random(2);
if a[i,j]=0 then b[i-1,j-1]:='0'
else b[i-1,j-1]:='*';
write(b[i-1,j-1]:2);
end;
writeln;
end;
writeln;
for i:=2 to 21 do begin
a[i,1]:=a[i,21];
a[i,22]:=a[i,2];
a[1,i]:=a[21,i];
a[22,i]:=a[2,i];
end;
a[1,1]:=a[21,21];
a[1,22]:=a[21,2];
a[22,1]:=a[2,21];
a[22,22]:=a[2,2];
for k:=1 to 100 do begin
clrscr;
for i:=2 to 21 do begin
for j:=2 to 21 do begin
ch:=0;
if a[i+1,j-1]=1 then ch:=ch+1;
if a[i+1,j]=1 then ch:=ch+1;
if a[i+1,j+1]=1 then ch:=ch+1;
if a[i,j-1]=1 then ch:=ch+1;
if a[i,j+1]=1 then ch:=ch+1;
if a[i-1,j-1]=1 then ch:=ch+1;
if a[i-1,j]=1 then ch:=ch+1;
if a[i-1,j+1]=1 then ch:=ch+1;
if (a[i,j]=0) and (ch=3) then b[i-1,j-1]:='*'
else if (a[i,j]=1) and (ch<2) then b[i-1,j-1]:='0'
else if (a[i,j]=1) and (ch>3) then b[i-1,j-1]:='0';
write(b[i-1,j-1]:2);
end;
writeln;
end;
for i:=2 to 21 do begin
for j:=2 to 21 do begin
if b[i-1,j-1]='0' then a[i,j]:=0
else a[i,j]:=1;
end;
end;
for i:=2 to 21 do begin
a[i,1]:=a[i,21];
a[i,22]:=a[i,2];
a[1,i]:=a[21,i];
a[22,i]:=a[2,i];
end;
a[1,1]:=a[21,21];
a[1,22]:=a[21,2];
a[22,1]:=a[2,21];
a[22,22]:=a[2,2];
readkey;
end;
readln;
end.
