import 'package:flutter/material.dart';

class PageSnack extends StatefulWidget {
  const PageSnack({Key? key}) : super(key: key);

  @override
  _PageSnackState createState() => _PageSnackState();
}

class _PageSnackState extends State<PageSnack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SNACKBAR"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: callSnack,
              child: Text("SNACK !")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("RETOUR !")
          ),
        ],
      ) ,
    );
  }

  void callSnack(){
    SnackBar snackBar = SnackBar(
        content: Text("Enregistrement OK"),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.black38,
      action: SnackBarAction(
        label: "Annuler",
        onPressed: (){
          print("Annuler");
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
