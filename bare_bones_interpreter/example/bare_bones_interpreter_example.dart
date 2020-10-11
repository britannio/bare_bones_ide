import 'package:bare_bones_interpreter/bare_bones_interpreter.dart';

void main() {
  final script = '''
clear X;
incr X;
incr X;
// comment
/*
multi
line
comment
*/
while X not 0 do;
  decr X;
end;
clear Y;

addToY() do;
  incr Y;
  incr Y;
  incr Y;
end;

addToY();
addToY();
  ''';

  final parser = Parser();
  final interpreter = Interpreter();

  final statements = parser.parse(script);
  interpreter.interpret(statements);
}
