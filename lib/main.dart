import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de taxa',
      home: SIForm(),
    )
  );
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _SIFormState();
  }

}

class _SIFormState extends State<SIForm> {
  var _currincies = ['Kwanza', 'Dollars','Euro'];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de taxa",
          style: TextStyle(fontSize: 40.0),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }

}