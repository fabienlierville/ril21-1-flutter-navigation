import 'package:flutter/material.dart';

class PageAlert extends StatefulWidget {
  const PageAlert({Key? key}) : super(key: key);

  @override
  _PageAlertState createState() => _PageAlertState();
}

class _PageAlertState extends State<PageAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALERT"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: callAlert,
              child: Text("ALERT !")
          )
        ],
      ) ,
    );
  }

  Future<void> callAlert() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (contextDialog){
          return AlertDialog(
            title: Text("Erreur veuille confirmer"),
            content: Text("donne le détail de l'erreur"),
            actions: [
              TextButton(
                  onPressed: (){
                    print("ici le code en fonction");
                    Navigator.pop(contextDialog);
                  },
                  child: Text("Annuler")
              )
            ],
          );
        }
    );
  }


}
