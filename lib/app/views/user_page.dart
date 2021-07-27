import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:git_api/app/controller_views/user_page_controller_back.dart';
import 'package:git_api/app/model/user_model.dart';
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
                        children: [Loading()]);
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
