import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      title: "Stateful widget esempio",
      home: FavoriteCity(),
    )
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _FavoriteCityState();
  }

}

class _FavoriteCityState extends State<FavoriteCity>{

  //Definisco qui le proprietà che potrebbero cambiare in futuro
  String nameCity = "";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    debugPrint("Favorite city widget is created");

    return Scaffold(
      appBar: AppBar(
        title: Text("Esempio di app stateful"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() { //!!!! IMPORTANTE -> cambia il valore quando do "invio"
                  debugPrint("set State chiamata. Essa dice al framework di ridsegnare il widger FavoriteCity distruggendola vecchia versione del widget");
                  nameCity = userInput;  //ho variato lo stato del widget cambiando il testo
                });
              },
              /*onChanged: (String userInput){  //OPPURE onChanged --> cambia i valori ad ogni variazione (inserimento carattere)
                  debugPrint("set State chiamata. Essa dice al framework di ridsegnare il widger FavoriteCity distruggendola vecchia versione del widget");
                  nameCity = userInput;  //ho variato lo stato del widget cambiando il testo
              },
               */
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
                child: Text(
              "La tua città è $nameCity",
              style: TextStyle(
                fontSize: 20.0
              ),
            ))
          ],
        ),
      ),
    );
  }

}


