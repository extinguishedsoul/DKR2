program dkr2n1;
const  MAX = 10;
type TArray = array[1..MAX] of Integer;
var arr: TArray; n, i, j: Integer; count: array[1..MAX] of Integer; visited: array[1..MAX] of Boolean;
begin
  n:=10;
  WriteLn('Введите элементы массива:');
  for i := 1 to n do
    Readln(arr[i]);
  for i := 1 to n do
  begin
    visited[i] := False;
    count[i] := 0;
  end;
  for i := 1 to n do
  begin
    if not visited[i] then
    begin
      count[i] := 1;
      for j := i + 1 to n do
      begin
        if arr[i] = arr[j] then
        begin
          count[i] := count[i] + 1;
          visited[j] := True;
        end;
      end;
      WriteLn('Элемент ', arr[i], ' встречается ', count[i], ' раз');
    end;
  end;
end.
