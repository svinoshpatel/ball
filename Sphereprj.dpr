program Sphereprj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  SphereU in 'SphereU.pas',
  BallU in 'BallU.pas';

var
  MySphere: Sphere;
  nSphere: Sphere;
  MyBall: Ball;
  nBall: Ball;
  newRadius: Real;
  S: String;

begin
  newRadius := 20.0;
MySphere:= Sphere.Create;
nSphere := Sphere.Creat(6.0);
MySphere.SetRadius(newRadius);
Writeln (' === Statystyka nSphere ===');
nSphere.DisplayStatistics;
Writeln(' N_LKola = ', 2.0 * Pi * MySphere.GetRadius);
// Створення об'єкта MyBall класу Ball
MyBall := Ball.Create;
MyBall.SetRadius(newRadius);
Writeln;
Writeln (' === Statystyka myBall ===');
MyBall.DisplayStatistics;
Writeln (' -------------------- ');
// Створення ще одного об'єкта nBall класу Ball
nBall:= Ball.Creat(100, 'Kulka', GREEN);
Writeln (' Ball_Name= ', nBall.GetName);
nBall.SetName ('Sharyk'); // зміна імені об'єкта nBall
Writeln (' Ball_Name = ', nBall.GetName);
S:= nBall.GetColorName;
Writeln (' Ball_Color = ', s);
Writeln (' Ball_LKola = ', 2 * Pi * nBall.GetRadius:12:4);
Writeln (' *************** ');
// Зміна радіусу, імені та кольору nBall
nBall.ResetBall(10,' PingPong',Blue);
Writeln (' Ball_New_Name = ', nBall.GetName);
S:= nBall.GetColorName;
Writeln (' Ball_New_Color = ', s);
Writeln (' Ball_New_Lkola =', 2 * Pi * nBall.GetRadius:12:4);
Readln;
End.
