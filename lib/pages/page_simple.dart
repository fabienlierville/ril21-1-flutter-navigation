import 'package:flutter/material.dart';

class PageSimple extends StatefulWidget {
  const PageSimple({Key? key}) : super(key: key);

  @override
  _PageSimpleState createState() => _PageSimpleState();
}

class _PageSimpleState extends State<PageSimple> {

  String choixTransport = "Acucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIMPLE"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: callSimple,
              child: Text("SIMPLE !")
          ),
          Text("Transport = ${choixTransport}")
        ],
      ) ,
    );
  }

  Future<void> callSimple() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (contextDialog){
          return SimpleDialog(
            title: Text("Erreur veuille confirmer"),
            children: [
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.directions_car),
                    Text("Voiture")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    choixTransport = "Voiture";
                  });
                },
              )
            ],
          );
        }
    );
  }


}
