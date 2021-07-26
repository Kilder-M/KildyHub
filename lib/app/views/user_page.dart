import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:git_api/app/controller_views/user_page_controller_back.dart';
import 'package:git_api/app/model/user_model.dart';
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
                  if (!future.hasData) {
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
                            UserCard(container: container(user.avatarUrl),user: user,)
                          ],
                        ),
                      ),
                    );
                  }
                })));
  }
}


Widget container(String url) {
  return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
      ));
}
