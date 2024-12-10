```ada
function Check_Range(Value : Integer; Min, Max : Integer) return Boolean is
begin
  -- Incorrect check: should be Value >= Min and Value <= Max
  return Value > Min and Value < Max; 
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer := 5;
   Min_Val : Integer := 1;
   Max_Val : Integer := 10;
begin
  if Check_Range(Num, Min_Val, Max_Val) then
    Put_Line("Number is within range");
  else
    Put_Line("Number is out of range");
  end if;
end Main;
```