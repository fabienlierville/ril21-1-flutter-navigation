import 'package:flutter/material.dart';

class PageBottom extends StatefulWidget {
  const PageBottom({Key? key}) : super(key: key);

  @override
  _PageBottomState createState() => _PageBottomState();
}

class _PageBottomState extends State<PageBottom> {

  String choixTransport = "Acucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: callBottom,
              child: Text("BOTTOM !")
          ),
          Text("Transport = ${choixTransport}")
        ],
      ) ,
    );
  }

  Future<void> callBottom() async{
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (contextDialog){
          return Column(
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
                  Navigator.pop(contextDialog);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text("Avion")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    choixTransport = "Avion";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.directions_bike),
                    Text("Bike")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    choixTransport = "Bike";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.directions_boat),
                    Text("Bateau")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    choixTransport = "Bateau";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
            ],
          );
        }
    );
  }


}
