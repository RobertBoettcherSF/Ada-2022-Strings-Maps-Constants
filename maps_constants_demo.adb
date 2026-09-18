pragma Ada_2022;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Strings.Maps.Constants;
package body Maps_Constants_Demo is
   package C renames Ada.Strings.Maps.Constants;
   function Only_Letters (S : String) return Boolean is
   begin
      if S'Length = 0 then
         return False;
      end if;
      for Ch of S loop
         if not Ada.Strings.Maps.Is_In (Ch, C.Letter_Set) then
            return False;
         end if;
      end loop;
      return True;
   end Only_Letters;
   function To_Lower_ASCII (S : String) return String is
   begin
      return Ada.Strings.Fixed.Translate (S, C.Lower_Case_Map);
   end To_Lower_ASCII;
end Maps_Constants_Demo;
