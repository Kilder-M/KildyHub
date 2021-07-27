import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_api/app/model/user_model.dart';
import 'package:git_api/app/repositories/user.repository.dart';
import 'package:mobx/mobx.dart';

part 'user_page_controller_back.g.dart';

class UserPageControllerBack = _UserPageControllerBack with _$UserPageControllerBack;

abstract class _UserPageControllerBack with Store{

  var _repository = UserRepository();

  String userName;

  @observable
  ObservableFuture<Widget> widget;

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

  @action
  Future result() async {
   var count = 10;
   await Future.delayed(Duration(seconds: 4));
   count = 0;

   return (count != null) ? CircularProgressIndicator() :  Text('Usuário não encontrado');

  }
  
  



}