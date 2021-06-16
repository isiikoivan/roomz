import 'package:args/args.dart';
import 'package:rooms/rooms.dart' as rooms;

void main(List<String> arguments) {
  var parser = ArgParser();
  parser.addOption('name', abbr: 'n');

  var results = parser.parse(arguments);

  if (results['name'] != null) {
    var message = rooms.addRoom(results['name']);
    print(message);

    if (results.rest.isNotEmpty) {
      for (var name in results.rest) {
        rooms.addRoom(name);
      }
    }
  }

  print('rooms are ${rooms.rooms}');
}
