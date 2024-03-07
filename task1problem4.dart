import 'dart:io';
import 'dart:math';
main(){
  int num;
  stdout.write("Enter your number");
  num=int.parse(stdin.readLineSync()!);
  int squre = pow(num,2).toInt();
  print(squre);
}