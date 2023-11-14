procedure BubbleSort(var arr: n);
var
  i, j, temp: Integer;
begin
  for i := Length(arr) - 1 downto 0 do
  begin
    for j := 0 to i - 1 do
    begin
            if arr[j] < arr[j + 1] then
      begin
        // Swap elements
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
    end;
  end;
end;
procedure PrintArray(arr: n);
var
  i: Integer;
begin
  for i := 0 to Length(arr) - 1 do
  begin
    Write(arr[i], ' ');
  end;
  Writeln;
end;
var
  arr: n;
  n, i: Integer;
begin
  Write('Enter the number of elements in the array: ');
  Read(n);
  
  // Initialize the array
  SetLength(arr, n);
  
  // Read array elements from user
  for i := 0 to n - 1 do
  begin
    Write('Enter element ', i + 1, ': ');
    Readln(arr[i]);
  end;

  // Sort the array in descending order
  BubbleSort(arr);

  // Print the sorted array
  PrintArray(arr);
end.