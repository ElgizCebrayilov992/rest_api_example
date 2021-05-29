// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModelView on _UserModelViewBase, Store {
  final _$dataListAtom = Atom(name: '_UserModelViewBase.dataList');

  @override
  List<UserModel> get dataList {
    _$dataListAtom.reportRead();
    return super.dataList;
  }

  @override
  set dataList(List<UserModel> value) {
    _$dataListAtom.reportWrite(value, super.dataList, () {
      super.dataList = value;
    });
  }

  final _$lifeStateAtom = Atom(name: '_UserModelViewBase.lifeState');

  @override
  LifeState get lifeState {
    _$lifeStateAtom.reportRead();
    return super.lifeState;
  }

  @override
  set lifeState(LifeState value) {
    _$lifeStateAtom.reportWrite(value, super.lifeState, () {
      super.lifeState = value;
    });
  }

  final _$fetchItemsAsyncAction = AsyncAction('_UserModelViewBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
dataList: ${dataList},
lifeState: ${lifeState}
    ''';
  }
}
