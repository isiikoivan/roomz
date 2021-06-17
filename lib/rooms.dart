import 'dart:core';

import 'dart:io';

String name;
String emailAddress;
String gender;
String country;
String favoriteFood;
String hobby;
String friend;
String favoriteCar;
int age;

void getUserInformation() {
  while (true) {
    // get user's name
    name = getUserResponse('Enter your name');

    // get user's email address
    emailAddress = getUserResponse('Enter your email address');

    // get user gender
    gender = getUserResponse('Enter your gender');

    // get user's country
    country = getUserResponse('Enter your country');

    // get user's favorite food
    favoriteFood = getUserResponse('Enter your favorite food');

    // get user's hobby
    hobby = getUserResponse('Enter your hobby');

    // get user's friends
    friend = getUserResponse("Enter your friends' name");

    // get user's favorite car
    favoriteCar = getUserResponse('What is your favorite car');

    // get user's age
    age = getUserAge();

    printResults();

    exit(0);
  }
}

String getUserResponse(String question) {
  stdout.write('$question: \n');
  return stdin.readLineSync();
}

/// returns a list of foods from a string of foods separated by space
List<String> getFavoriteFoods(String favoriteFoodString) {
  return favoriteFoodString.split(' ');
}

var retries = 3;
int getUserAge() {
  stdout.write('Enter your age: \n');
  var response = stdin.readLineSync();
  int age;
  try {
    age = int.parse(response);
    return age;
  } catch (e) {
    if (retries > 0) {
      retries -= 1;
      print('Invalid age, you have $retries retries left');
      return getUserAge();
    } else {
      print(
          'Invalid, you have used all your retries, your age wont be captured');
      return null;
    }
  }
}

void printResults() {
  print('**********Results*************');
  print('My name is $name');
  print('My email address is $emailAddress');
  print('My gender is $gender');
  print('My country is $country');
  print('My favorite Food is $favoriteFood');
  print('My hobby is $hobby');
  print('My friend is $friend');
  print('My favorite Car is $favoriteCar');
  print('My age is $age');
  print('*********Results**************');
}
