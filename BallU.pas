unit BallU;

interface
uses SysUtils, SphereU;

Type
  Colored = (RED, GREEN, BLUE, YELLOW, WHITE, BLACK);
  Ball = class (Sphere)
    private
    theName: String;
    c: Colored;
    public
    constructor Creat(initR: Real; const initName: String; initColor: Colored);
    procedure SetName(newName: String);
    procedure SetColor(newColor: Colored);
    function GetName: String;
    function GetColor: Colored;
    function GetColorName: String;
    procedure ResetBall(newRadius: Real; newName: String; newColor: Colored);
  end;

implementation
constructor Ball.Creat(initR: Real; const initName: String; initColor: Colored);
begin
  inherited SetRadius(initR);
  theName := initName;
  c := initColor;
end;

Procedure Ball.SetName(newName: String);
Begin
  theName := NewName;
End;
Procedure Ball.SetColor (NewColor: Colored);
Begin
  c:= NewColor;
End;
Function Ball.GetName: String;
Begin
 Result := theName;
End;
Function Ball.GetColor: Colored;
Begin
 Result := c;
End;
Function Ball.GetColorName: String;
Var ColorName: String;
Begin
case c of
 RED : ColorName := 'RED';
 GREEN : ColorName := 'GREEN';
 BLUE : ColorName := 'BLUE';
 YELLOW: ColorName := 'YELLOW';
 WHITE : ColorName := 'WHITE';
 BLACK : ColorName := 'BLACK';
End;
Result := ColorName;
End;
Procedure Ball.resetBall (newRadius: Real; newName: String; newColor: Colored);
Begin
 SetRadius(NewRadius);
 SetName (newName);
 SetColor (newColor);
End;
End.
