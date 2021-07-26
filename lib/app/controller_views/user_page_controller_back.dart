import 'package:flutter/cupertino.dart';
import 'package:git_api/app/model/user_model.dart';
import 'package:git_api/app/repositories/user.repository.dart';
import 'package:mobx/mobx.dart';

part 'user_page_controller_back.g.dart';

class UserPageControllerBack = _UserPageControllerBack with _$UserPageControllerBack;

abstract class _UserPageControllerBack with Store{

  var _repository = UserRepository();

  String userName;

 @observable
  ObservableFuture<UserModel> user;

  @action
   // ignore: missing_return
   Future getUser([dynamic value])  {
     user = ObservableFuture(_repository.getUser(userName)) ;
  }

  _UserPageControllerBack(BuildContext context){
    var parameter = ModalRoute.of(context).settings.arguments;
    userName = parameter;
    getUser();
  }

  
  



}