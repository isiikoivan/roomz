import 'dart:core';

import 'dart:io';

void getUserInformation() {
  String name;
  String emailAddress;
  String gender;
  String country;
  String favoriteFood;
  String hobby;
  String friend;
  String favoriteCar;
  while (true) {
    stdout.write('Enter your name : \n');
    name = stdin.readLineSync();

    stdout.write('Enter your email address : \n');
    emailAddress = stdin.readLineSync();

    stdout.write('Enter your gender : \n');
    gender = stdin.readLineSync();

    stdout.write('Enter your country : \n');
    country = stdin.readLineSync();

    stdout.write('Enter your favorite food : \n');
    favoriteFood = stdin.readLineSync();

    stdout.write('Enter your hobby : \n');
    hobby = stdin.readLineSync();

    stdout.write("Enter your friend's name : \n");
    friend = stdin.readLineSync();

    stdout.write('What is your favorite car : \n');
    favoriteCar = stdin.readLineSync();

    print('My name is $name');
    print('My email address is $emailAddress');
    print('My gender is $gender');
    print('My country is $country');
    print('My favorite Food is $favoriteFood');
    print('My hobby is $hobby');
    print('My friend is $friend');
    print('My favorite Car is $favoriteCar');

    exit(0);
  }
}
