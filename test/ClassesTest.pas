unit ClassesTest;

interface

type

  TPerson = class
    private
    FName: String;
    FAge: Integer;
    FWeight: double;
    FIsSuperHero: Boolean;
    FBirthday: TDate;
    procedure SetAge(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetIsSuperHero(const Value: Boolean);
    procedure SetWeight(const Value: double);
    procedure SetBirthday(const Value: TDate);
    public
      constructor create(Name: String; Age: Integer);
    published
      property Name: String read FName write SetName;
      property Age: Integer read FAge write SetAge;
      property IsSuperHero: Boolean read FIsSuperHero write SetIsSuperHero;
      property Weight: double read FWeight write SetWeight;
      property Birthday: TDate read FBirthday write SetBirthday;
  end;

implementation

{ TPerson }

constructor TPerson.create(Name: String; Age: Integer);
begin
  Self.FName := Name;
  Self.FAge := Age;
end;

procedure TPerson.SetAge(const Value: Integer);
begin
  FAge := Value;
end;

procedure TPerson.SetBirthday(const Value: TDate);
begin
  FBirthday := Value;
end;

procedure TPerson.SetIsSuperHero(const Value: Boolean);
begin
  FIsSuperHero := Value;
end;

procedure TPerson.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TPerson.SetWeight(const Value: double);
begin
  FWeight := Value;
end;

end.
