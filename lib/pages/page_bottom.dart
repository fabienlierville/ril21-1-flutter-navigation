import 'package:flutter/material.dart';
import 'package:navigation/pages/page_alert.dart';
import 'package:navigation/pages/page_simple.dart';
import 'package:navigation/pages/page_snack.dart';

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
          Text("Transport = ${choixTransport}"),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context){
                      return PageSimple();
                    })
                );
              },
              child: Text("Replacement SIMPLE")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/snack',
                      (route) => false
                );
              },
              child: Text("REMOVE")
          ),
        ],
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Simple"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Snack"),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              Navigator.pushNamed(context, "/alert");
              break;
            case 1:
              Navigator.pushNamed(context, "/simple");
              break;
            case 2:
              Navigator.pushNamed(context, "/snack");
              break;
          }
        },
      ),
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
