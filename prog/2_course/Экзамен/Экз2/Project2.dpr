program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas';

var
TestVar: TCartrige;
TestVar2: TBuckshot;

begin
TestVar := TCartrige.init(0.410, 50 , 'Metal');
writeln('Cal: ', TestVar.get_cal:0:3);
writeln('Charge: ', TestVar.get_charge, '%');
writeln('Shell: ', TestVar.get_shell);
writeln;

TestVar.ChargeSet(80);
writeln('Cal: ', TestVar.get_cal:0:3);
writeln('Charge: ', TestVar.get_charge, '%');
writeln('Shell: ', TestVar.get_shell);
writeln;

TestVar.ChageShell(1);
writeln('Cal: ', TestVar.get_cal:0:3);
writeln('Charge: ', TestVar.get_charge, '%');
writeln('Shell: ', TestVar.get_shell);
writeln;

writeln('====================================');
writeln;

TestVar2 := TBuckshot.init(12, 100 , 'Plastic', '000 Buckshot');
writeln('Cal: ', TestVar2.get_cal:0:3);
writeln('Charge: ', TestVar2.get_charge, '%');
writeln('Shell: ', TestVar2.get_shell);
writeln('Type of Ammo: ', TestVar2.get_AmmoType);
writeln;

TestVar2.ChageShell(2);
writeln('Cal: ', TestVar2.get_cal:0:3);
writeln('Charge: ', TestVar2.get_charge, '%');
writeln('Shell: ', TestVar2.get_shell);
writeln('Type of Ammo: ', TestVar2.get_AmmoType);
writeln;

TestVar2.ChangeType(3);
writeln('Cal: ', TestVar2.get_cal:0:3);
writeln('Charge: ', TestVar2.get_charge, '%');
writeln('Shell: ', TestVar2.get_shell);
writeln('Type of Ammo: ', TestVar2.get_AmmoType);
writeln;

readln;
end.
