import 'package:flutter/cupertino.dart';
import 'package:git_api/app/exceptions/user_model_exception.dart';
import 'package:git_api/app/model/user_model.dart';
import 'package:git_api/app/repositories/user.repository.dart';
import 'package:git_api/app/views/my_app.dart';
import 'package:mobx/mobx.dart';

part 'home_controller_back.g.dart';

class HomeControllerBack = _HomeControllerBack with _$HomeControllerBack;

abstract class _HomeControllerBack with Store {
  var _controller = UserRepository();

  String userName;
  bool _nameIsValid;

  bool get isValid => _nameIsValid;


  String getUserName([dynamic value]){
    return userName;
  }

 
  goToUserPage(BuildContext context, [String userName]){
    Navigator.of(context).pushNamed(MyApp.USER_PAGE,arguments: userName).then(getUserName);

  }

}
