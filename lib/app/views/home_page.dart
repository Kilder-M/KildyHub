import 'package:flutter/material.dart';
import 'package:git_api/app/controller_views/home_controller_back.dart';

class HomePage extends StatelessWidget {
  final _back = HomeControllerBack();
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _form,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/imagens/logo1.png'),
                fieldUserName(_back),
                SizedBox(
                  height: 10,
                ),
                searchButtom(() {
                  _form.currentState.save();
                  var aux = _form.currentState.validate();
                  if (aux) {
                    _back.goToUserPage(context, _back.userName);
                  }
                })
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Widget fieldUserName(HomeControllerBack back) {
  return TextFormField(
    // ignore: missing_return
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Usuário não digitado.';
      }
      return null;
    },
    onSaved: (value) => back.userName = value,
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: 'Nome: ',
        hintText: 'Nome do usuário'),
  );
}

Widget searchButtom(Function onPressed) {
  return Container(
    height: 40,
    width: 90,
    decoration: BoxDecoration(
        color: Colors.grey[800],
        border: Border.all(color: Colors.cyanAccent[400]),
        borderRadius: BorderRadius.circular(25)),
    child: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.search_rounded, color: Colors.cyanAccent[400])),
  );
}
