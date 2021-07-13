import 'package:flutter/material.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class OpenMessage extends StatefulWidget {  
  // final String message;
  const OpenMessage({Key? key}) : super(key: key);

  @override
  _OpenMessageState createState() => _OpenMessageState();
}

class _OpenMessageState extends State<OpenMessage> {
  @override
  Widget build(BuildContext context) {
    var args = ScreenArguments("","");
    if (ModalRoute.of(context)!.settings.arguments != null)
    {
      args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    }
    return Scaffold(
      body: Center(
        child: Container(          
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [            
            Text("Isi Message", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
            Text(args.message)
          ],),
        ),
      ),
    );
  }
}
