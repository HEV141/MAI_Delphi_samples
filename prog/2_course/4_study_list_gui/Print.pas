unit Unit4;

interface
uses Unit1, Unit2, Unit3;

type TWrite = class
public
 procedure print(Th: THuman); overload;
 procedure print(Ts: TStudent); overload;
 procedure print(Tt: TTutor); overload;
end;

implementation

procedure TWrite.print(Th: THuman) overload;
 begin
 writeln('=================');
 writeln('Name: ', Th.get_name);
 writeln('Age: ', Th.get_age);
 writeln('=================');
 writeln;
 end;

procedure TWrite.print(Ts: TStudent) overload;
 begin
 writeln('=================');
 writeln('Name: ', Ts.get_name);
 writeln('Age: ', Ts.get_age);
 writeln('Group: ', Ts.get_group);
 writeln('Mark: ', Ts.get_mark:2:2);
 writeln('=================');
 writeln;
 end;

procedure TWrite.print(Tt: TTutor) overload;
 begin
 writeln('=================');
 writeln('Name: ', Tt.get_name);
 writeln('Age: ', Tt.get_age);
 writeln('Subject: ', Tt.get_subj);
 writeln('Hours: ', Tt.get_hour);
 writeln('=================');
 writeln;
 end;

end.
