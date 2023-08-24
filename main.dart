import 'dart:io';
import 'dart:math';

enum Move { Rock, Sissor, Paper }

void main() {
  var randobj = Random();
  while (true) {
    stdout.write(
        "type r for rock, p for paper , s for sissor and q for quitting the game : ");
    var userInput = stdin.readLineSync();

    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var PlayerMove;
      if (userInput == 'r') {
        PlayerMove = Move.Rock;
      } else if (PlayerMove == 'p') {
        PlayerMove = Move.Paper;
      } else {
        PlayerMove = Move.Sissor;
      }
      final RandomNumber = randobj.nextInt(3);
      var ComputerMove = Move.values[RandomNumber];
      print("you Entered ${PlayerMove}");
      print("Computer Entered ${ComputerMove}");
      //when both moves are same then it's a draw
      if (PlayerMove == ComputerMove) {
        print("it a Draw");
      } else if (PlayerMove == Move.Rock && ComputerMove == Move.Sissor ||
          PlayerMove == Move.Paper && ComputerMove == Move.Rock ||
          PlayerMove == Move.Sissor && ComputerMove == Move.Paper) {
        print("Congrats you Win ");
      } else {
        print("Computer Wins");
      }
    } else if (userInput == 'q') {
      print("quitting the game");
      break;
    } else {
      print("invalid input");
    }
  }
}
