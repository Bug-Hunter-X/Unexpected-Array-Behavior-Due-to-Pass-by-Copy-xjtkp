```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   type My_Array_Access is access My_Array;
   A : My_Array_Access := new My_Array'(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array_Access := A;
begin
   A.all(1) := 100;
   for I in A.all'Range loop
      Put_Line(A.all(I)'Img);
   end loop;
   for I in B.all'Range loop
      Put_Line(B.all(I)'Img);
   end loop; 
   -- Clean up memory
   A := null; 
   B := null;   
end Example;
```