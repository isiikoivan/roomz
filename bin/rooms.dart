import 'dart:io';

import 'package:args/args.dart';
import 'package:rooms/rooms.dart' as rooms;

void main(List<String> arguments) {
  // var parser = ArgParser();
  // parser.addOption('name', abbr: 'n');

  // var results = parser.parse(arguments);

  // if (results['name'] != null) {
  //   var message = rooms.addRoom(results['name']);
  //   print(message);

  //   if (results.rest.isNotEmpty) {
  //     for (var name in results.rest) {
  //       rooms.addRoom(name);
  //     }
  //   }
  // }
  String name, age, gender;
  while (true) {
    stdout.write('Enter your name : \n');
    name = stdin.readLineSync();
    stdout.write('Enter your gender : \n');
    gender = stdin.readLineSync();
    stdout.write('Enter your Age : \n');
    age = stdin.readLineSync();

    print(name);
    print(gender);
    print(age);

    exit(0);
    // if (n == 3) {
    //   exit(0);
    // }
  }

  // print('rooms are ${rooms.rooms}');
}
