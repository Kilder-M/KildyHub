import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading  extends StatelessWidget {
  const Loading ({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 1,
          ),
          Container(
              width: double.infinity,
              height: 350,
              child: Image.asset('assets/imagens/carregando.png')),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 80,
              child: LinearProgressIndicator(
                color: Colors.cyanAccent[400],
              )),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                border: Border.all(color: Colors.cyanAccent[400]),
                borderRadius: BorderRadius.circular(25)),
            child: IconButton(
                onPressed: () {
                  
                     ScaffoldMessenger.of(context).showSnackBar(
                       
                       SnackBar(

                         
                       backgroundColor: Colors.grey[800],
                        duration: Duration(seconds: 6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        content: ListTile(
                          trailing:  Text(
                            ';(',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.cyanAccent[400]),),
                          title: Text(
                            'Usuário não encontrado.',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.cyanAccent[400]),),
                        )));
                  
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Colors.cyanAccent[400])),
          )
        ],
      ),
    ),
  );
  }
}