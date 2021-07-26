import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_api/app/model/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final Widget container;

  const UserCard({Key key, this.user, this.container}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          width: double.infinity,
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              
              children: [
                container,
                SizedBox(width: 5,),
                
              Column(
                children: [
                  
                  Text(user.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('${user.publicRepos}', style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                Text(' repositórios', style: TextStyle(fontSize: 12,),),
                SizedBox(width: 12,),
                Text('${user.followers}', style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                Text(' seguidores', style: TextStyle(fontSize: 12,),),
                SizedBox(width: 12,),
                Text('${user.following}', style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                Text(' seguindo', style: TextStyle(fontSize: 12,),),
          
              ],),  
                ],
                
              )
            ],),
          ),
        )
      );
    
      
    
  }
}