import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var quantidade = 0;

  incrementar() {
    setState(() {
      quantidade++;
    });
  }

  decrementar() {
    setState(() {
      if (quantidade <= 0)
        return;
      else
        quantidade--;
      /* quantidade--; */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Quantidade", style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),),
                ),
                Text('$quantidade', style: TextStyle(fontSize: 40)),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('Incrementar', style: TextStyle(fontSize: 20)),
                      onPressed: incrementar,
                    ),
                     FlatButton(
                      child: Text('Decrementar', style: TextStyle(fontSize: 20)),
                      onPressed: decrementar,
                    )
                  ]
                )
              ]
            ),
          )
        ]
      ),
    );
  }
}