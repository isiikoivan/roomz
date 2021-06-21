import 'dart:core';

import 'dart:io';
import 'exceptions.dart';
int accountBalance = 10000; // To be update with withdraw and deposit function
//int ?newbalance;
String ?name;
String ?emailAddress;
String ?gender;
String ?country;
String ?favoriteFood;
String ?hobby;
String ?friend;
String ?favoriteCar;
int ?age;

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

    updateUserAccountBalance();

    printResults();

    exit(0);
  }
}

String getUserResponse(String question) {
  stdout.write('$question: \n');
  //returns string 
  return stdin.readLineSync().toString();
}

/// returns a list of foods from a string of foods separated by space
List<String> getFavoriteFoods(String favoriteFoodString) {
  return favoriteFoodString.split(' ');
}

var retries = 3;
int getUserAge() {
  stdout.write('Enter your age: \n');
  //coverting response into string  
  var response = stdin.readLineSync().toString();
  int age;
  try 
  {
    //parse or change response from string to int
    age = int.parse(response);
    return age;
  }
   catch (e) 
  {
    if (retries > 0) {
      retries -= 1;
      print('Invalid age, you have $retries retries left');
      return getUserAge();
    } else {
      print('Invalid, you have used all your retries, your age wont be captured');
     //entries are done then function returns option null  
      return age=null??0;
    }
  }
}

void printResults() {
  print('\n');
  print('**********Results*************');
  print('Your name is $name');
  print('Your email address is $emailAddress');
  print('Your gender is $gender');
  print('Your country is $country');
  print('Your favorite Food is $favoriteFood');
  print('Your hobby is $hobby');
  print('Your friend is $friend');
  print('Your favorite Car is $favoriteCar');
  print('Your age is $age');
  print('Your account balance is $accountBalance');
  print('*********Results**************');
  print('');
}

void updateUserAccountBalance() {
  var response = getUserResponse('Do you want to use your account(Yes/No)?');
  if (response != null) {
    if (response.toLowerCase() == 'yes') {
      var answer1 = getUserResponse(
          'Do you want to deposit or withdraw from your account(deposit/withdraw)?');
      if (answer1 != null && answer1.toLowerCase() == 'deposit') {
        //TODO finish implementing deposit function provided below  so that a use can deposit money
        deposit();
      } else if (answer1 != null && answer1.toLowerCase() == 'withdraw') {
        //TODO finish implementing withdraw function provided below so that a use can deposit money
        withdraw();
      } else {
        print('$answer1 is not one of the options');
      }
    } else {
      print('You decided not to use your account');
    }
  } else {
    print('You did not input anything');
  }
}

void deposit() {
  var depositAmount = getUserResponse('How much do you want to deposit?');
  //TODO increase accountBalance by depositAmount
  // Make sure depositAmount is a valid integer
  // print new balance after depositing
  int depositMoney = int.parse(depositAmount);
  if (depositMoney != null && depositMoney > 0){
      try{
   //newbalance=accountBalance+depositMoney;
    accountBalance=accountBalance+depositMoney;
    print("successfully deposited :");
   // stdout.write("Your new balance is $newbalance");
    stdout.write("Your new balance is $accountBalance");

      }
      // catch(e)
      on depositException{
        
      }
     
  }
}

void withdraw() {
  //TODO get the amount that the user wants to withdraw
  // store the amount in a variable called withdrawAmount
  // make sure withdrawAmount is a valid integer
  // make sure a user does not withdraw more than their accountBalance
  // print new balance
  //case 1
  // var amountWithdrawtdout;
  // stdout.write("Enter Amount For Withdraw");
  // amountWithdrawtdout=stdin.readLineSync();
  // case 2
 
  var withdrawAmount = getUserResponse("How much do want to Withdraw");
  if (withdrawAmount.isNotEmpty){
    try{
              int withdraw = int.parse(withdrawAmount);
         if(withdraw > 0 && withdraw <= accountBalance){
          //  newbalance=accountBalance-withdraw;
          accountBalance=accountBalance-withdraw;
          //  print("Your Have Successfull Withdrew $withdraw and have a balance of $newbalance");
          print(
          "Your Have Successfull Withdrew $withdraw and have a balance of $accountBalance"
               );

          }
          else
          {
          print("INSUFFICIENT FUNDS");
          throw new withdrawException();
          }

    }catch(e){
      withdrawException();

    }

   }
  else
  {
    stdout.write("invalid input amount");
  }
  
}

//     void set newbal1(int withdraw){
//             newbalance = (accountBalance-withdraw);
//           }
  
// int get newbal1{
//   return newbalance;
//   }
//   void set newbal(int depositMoney){
//             newbalance = (accountBalance+depositMoney);
//           }
  
// int get newbal{
//   return newbalance;
//   }
 