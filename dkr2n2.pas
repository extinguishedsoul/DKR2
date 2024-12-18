program dkr2n2;
const MAX_WORDS = 100;
var inputStr: string; words: array[1..MAX_WORDS] of string; count: array[1..MAX_WORDS] of Integer; n, i, j, maxCount, maxIndex: Integer; currentWord: string;
begin
  n := 0;
  maxCount := 0;
  maxIndex := -1;
  Write('Введите строку: ');
  ReadLn(inputStr);
  inputStr := inputStr + ' ';
  currentWord := '';
  for i := 1 to Length(inputStr) do
  begin
    if not (inputStr[i] in [' ', ',', '.']) then
      currentWord := currentWord + inputStr[i]
    else if currentWord <> '' then
    begin
      for j := 1 to n do
      begin
        if words[j] = currentWord then
        begin
          Inc(count[j]);
          currentWord := '';
          Break;
        end;
      end;
      if currentWord <> '' then
      begin
        Inc(n);
        words[n] := currentWord;
        count[n] := 1;
        currentWord := '';
      end;
    end;
  end;
  for i := 1 to n do
    if count[i] > maxCount then
    begin
      maxCount := count[i];
      maxIndex := i;
    end;
  if maxIndex <> -1 then
    WriteLn('Слово "', words[maxIndex], '" встречается ', maxCount, ' раз.')
  else
    WriteLn('В строке нет слов.');
end.
