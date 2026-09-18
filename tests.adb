pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Maps_Constants_Demo; use Maps_Constants_Demo;
procedure Tests is
begin
   Assert (Only_Letters ("Ada"));
   Assert (not Only_Letters ("Ada2022"));
   Assert (To_Lower_ASCII ("ADA") = "ada");
   Put_Line ("PASS Maps.Constants Letter_Set / Lower_Case_Map");
   Put_Line ("All Strings.Maps.Constants topic tests passed.");
end Tests;
