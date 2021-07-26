import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:git_api/app/controller_views/user_page_controller_back.dart';
import 'package:git_api/app/model/user_model.dart';

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
                  if (!future.hasData) {
                    print(_back.userName);
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (user.id == null) {
                    return Container();
                  } else {
                    UserModel user = future.data as UserModel;
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: SafeArea(
                        child: Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                leading: circleAvatar(user.avatarUrl),
                                title: Text(
                                  user.name,
                                  style: TextStyle(fontSize: 26),
                                ),
                                subtitle:
                                    Text('Repositorios: ${user.publicRepos}'),
                                    
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                })));
  }
}

CircleAvatar circleAvatar(String url) {
  return CircleAvatar(
    radius: 25,
    backgroundImage: NetworkImage(url),
  );
}

Widget container(String url) {
  return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
      ));
}
