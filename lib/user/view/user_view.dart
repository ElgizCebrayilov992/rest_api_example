import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rest_api_example/user/viewmodel/user_view_model.dart';

final UserModelView _modelView = UserModelView();

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (_modelView.context == null) {
      _modelView.setContex(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: buildObserverAppBar(),
      ),
      body: buildObserverBody(),
    );
  }

  Observer buildObserverBody() {
    return Observer(builder: (_) {
      
      return ListView.builder(
        itemCount: _modelView.dataList.length,
        itemBuilder: (context, index) {
         
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(_modelView.dataList[index].picture!),),
              title: Text(_modelView.dataList[index].firstName??""),
              subtitle: Text(_modelView.dataList[index].title??""),
            ),
          );
        },
      );
    });
  }

  Observer buildObserverAppBar() {
    return Observer(builder: (_) {
        return Visibility(
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
          visible: _modelView.lifeState == LifeState.LOADING,
        );
      });
  }
}
