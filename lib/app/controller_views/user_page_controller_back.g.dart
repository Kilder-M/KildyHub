// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_page_controller_back.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserPageControllerBack on _UserPageControllerBack, Store {
  final _$widgetAtom = Atom(name: '_UserPageControllerBack.widget');

  @override
  ObservableFuture<Widget> get widget {
    _$widgetAtom.reportRead();
    return super.widget;
  }

  @override
  set widget(ObservableFuture<Widget> value) {
    _$widgetAtom.reportWrite(value, super.widget, () {
      super.widget = value;
    });
  }

  final _$userAtom = Atom(name: '_UserPageControllerBack.user');

  @override
  ObservableFuture<UserModel> get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(ObservableFuture<UserModel> value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$resultAsyncAction = AsyncAction('_UserPageControllerBack.result');

  @override
  Future<dynamic> result() {
    return _$resultAsyncAction.run(() => super.result());
  }

  final _$_UserPageControllerBackActionController =
      ActionController(name: '_UserPageControllerBack');

  @override
  Future<dynamic> getUser([dynamic value]) {
    final _$actionInfo = _$_UserPageControllerBackActionController.startAction(
        name: '_UserPageControllerBack.getUser');
    try {
      return super.getUser(value);
    } finally {
      _$_UserPageControllerBackActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
widget: ${widget},
user: ${user}
    ''';
  }
}
