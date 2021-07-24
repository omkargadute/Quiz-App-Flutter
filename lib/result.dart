import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get ResultPhrase{
    String resultText = 'You did it!';
    if (resultScore <=8){
      resultText = 'You are ...strange?!';
    }else if(resultScore <=12){
      resultText = 'Prettu likeable';
    }else if(resultScore <=16){
      resultText = 'You are awesome and Innocent';
    }
    else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ResultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
