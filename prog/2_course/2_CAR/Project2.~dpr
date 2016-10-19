program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas';

var
f,d,hs:real;
TestVar: TCar;
TestVar2: Truck;

begin
TestVar := TCar.init('TestCar No1', 10,1,20,0);
writeln('Model: ', TestVar.get_model);
writeln('Tank: ', TestVar.get_tank:2:2);
writeln('Consuption: ', TestVar.get_consuption:2:2);
writeln('Km: ', TestVar.get_km:2:2);
writeln('Reserve: ', TestVar.get_reserve:2:2);
writeln;

f := TestVar.refuel(15);
writeln('overfuel: ', f:2:2);
writeln;

writeln('Km: ', TestVar.get_km:2:2);
writeln('Reserve: ', TestVar.get_reserve:2:2);
writeln;

d := TestVar.drive(10);
writeln('Drive: ', d:2:2);

hs := TestVar.drive(2,5);
writeln('Drive_hs: ', hs:2:2);
writeln;

writeln('Km: ', TestVar.get_km:2:2);
writeln('Reserve: ', TestVar.get_reserve:2:2);
writeln;

writeln('====================================');
writeln;

TestVar2 := Truck.init('TestTruck No1', 100,5,1000,0,100);
writeln('Model: ', TestVar2.get_model);
writeln('Tank: ', TestVar2.get_tank:2:2);
writeln('Consuption: ', TestVar2.get_consuption:2:2);
writeln('Storage: ', TestVar2.get_storage:2:2);
writeln('Km: ', TestVar2.get_km:2:2);
writeln('Reserve: ', TestVar2.get_reserve:2:2);
writeln;

d := TestVar2.drive(10,4);
writeln('Drive: ', d:2:2);
writeln;

writeln('Km: ', TestVar2.get_km:2:2);
writeln('Reserve: ', TestVar2.get_reserve:2:2);
writeln;


readln;
end.
