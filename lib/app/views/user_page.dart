import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:git_api/app/controller_views/user_page_controller_back.dart';
import 'package:git_api/app/model/user_model.dart';
import 'package:git_api/app/views/my_app.dart';
import 'package:git_api/app/widgets/list_repositories.dart';
import 'package:git_api/app/widgets/loading_widget.dart';
import 'package:git_api/app/widgets/user_card.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _back = UserPageControllerBack(context);
    return Scaffold(
        body: Observer(
            builder: (_) => FutureBuilder(
                future: _back.user,
                builder: (context, future) {
                  UserModel user = future.data;
                  if (user == null) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Loading()
                          
                          ]);
                  } else if (user.id == null) {
                    return Container();
                  } else {
                    UserModel user = future.data as UserModel;
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: SafeArea(
                        child: Column(
                          children: [
                            UserCard(
                              user: user,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RepositoryList(
                              user: user,
                            )
                          ],
                        ),
                      ),
                    );
                  }
                })));
  }
}

Widget loading(BuildContext context) {
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
                        duration: Duration(seconds: 4),
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
                  
                  Navigator.of(context).pushReplacementNamed(MyApp.HOME);
                },
                icon: Icon(Icons.arrow_back, color: Colors.cyanAccent[400])),
          )
        ],
      ),
    ),
  );
}
