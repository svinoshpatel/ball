unit SphereU;

interface
Uses SysUtils;
Const Pi = 3.14159;
Type
  Sphere = class (TObject)
  Private
    R: Real;
  Public
    constructor Create;
    constructor Creat(x: Real);
    procedure SetRadius(newRadius: Real);
    function GetRadius : Real;
    function GetDiameter: Real;
    Function GetLKola: Real;
    Function GetArea: Real;
    Function GetVolume: Real;
    Procedure DisplayStatistics;
end;

implementation
Constructor Sphere.Create;
begin
  R := 1.0;
end;

Constructor Sphere.Creat(x: Real);
begin
  R := x;
end;

Procedure Sphere.SetRadius(newRadius: Real);
begin
  if R > 0 then
    R := newRadius
  else
    R := 1.0;
end;

Function Sphere.GetRadius: Real;
begin
  GetRadius := R;
end;

Function Sphere.GetDiameter: Real;
begin
  GetDiameter := 2.0 * R;
end;

Function Sphere.GetLKola: Real;
begin
  GetLKola := Pi * GetDiameter;
end;

Function Sphere.GetArea: Real;
begin
  GetArea := 4.0 * Pi * R * R;
end;

Function Sphere.GetVolume: Real;
var radiusCubed: Real;
begin
  radiusCubed := R * R * R;
  GetVolume := (4.0 * Pi * radiusCubed) / 3.0;
end;

Procedure Sphere.DisplayStatistics;
begin
  writeln('Radius = ', GetRadius);
  writeln('Diameter = ', GetDiameter);
  writeln('LKola = ', GetLKola:10:5);
  writeln('Area = ', GetArea:10:5);
  writeln('Volume = ', GetVolume:10:5);
end;
end.
