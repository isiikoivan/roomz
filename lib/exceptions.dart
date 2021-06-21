import 'dart:io';

class depositException implements Exception{
  String depositerror(){
    String errdeposit = "THE NETWORK IS LAGGING TRY AGAIN LATER";
   return errdeposit;
  }
}
class withdrawException implements Exception{
  withdrawerror(){
    print("WITHDRAW CHANNEL IS CURRENTLY DOWN");
  }

  // withdrawChange(){
  //   stdout.write("WITHDRAW STARTS FR0M 5000 AND ABOVE");
  // }
}
 
class defaultException implements Exception {
  int deferror (){
    return 4000;
  }
}