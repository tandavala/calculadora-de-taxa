import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de taxa',
      home: SIForm(),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent
      ),
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
  var _currentItemSelected = 'Kwanza';
  final double _minimumPadding = 5.0;

  TextEditingController principalControlled = TextEditingController();
  TextEditingController roiControlled = TextEditingController();
  TextEditingController termControlled = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Calculadora de taxa",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding),
        child: ListView(
          children: <Widget>[
            getHeadImage(),
            Padding(
              padding: EdgeInsets.all(_minimumPadding),
              child: TextField(
                style: textStyle,
                controller: principalControlled,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Principal',
                    labelStyle: textStyle,
                    hintText: 'Valor para calcular. ex: 12000',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(_minimumPadding),
              child: TextField(
                controller: roiControlled,
                style: textStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Taxa',
                  labelStyle: textStyle,
                  hintText: 'Informar o valor em %',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.all(_minimumPadding),
              child: Row(
                   
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: termControlled,
                        style: textStyle,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Termo',
                          labelStyle: textStyle,
                          hintText: 'tempo no ano',
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Container(width: _minimumPadding * 5,),
                  Expanded(
                    child: DropdownButton<String>(
                    items: _currincies.map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: _currentItemSelected,
                    onChanged: (String newValueSelected){
                      setState(() {
                        _currentItemSelected = newValueSelected;
                      });
                    },
                  ),
                  )
                  ],
                ),
            ),
            Padding(
              padding: EdgeInsets.all(_minimumPadding),
              child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        child: Text(
                          "Calcular",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                        onPressed: (){
                          //
                        },
                      ),
                    ),
                    Container(width: _minimumPadding * 5,),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text(
                          "Limpar",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                        onPressed: (){
                          //
                        },
                      ),
                    )
                  ],
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding * 5),
              child: Center(
                child: Text(
                "App todo",
                style: TextStyle(fontSize: 30.0),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getHeadImage(){
    AssetImage assetImage = AssetImage('images/head.png');
    Image image = Image(image: assetImage, width: 150.0, height: 150.0);
    return Container(
      margin: EdgeInsets.all(_minimumPadding * 7),
      child: Center(
        child: image,
      ) 
    );
  }

}