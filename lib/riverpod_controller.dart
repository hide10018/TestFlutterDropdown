import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'riverpod_controller.freezed.dart';

@freezed
class DropdownButtonPageState with _$DropdownButtonPageState {//immutableなクラスを生成
  const factory DropdownButtonPageState({
    @Default('abc') String selectValue,//初期値を入れたプロパティを生成
  }) = _DropdownButtonPageState;
}

final dropdownButtonPageProvider = StateNotifierProvider.autoDispose<//dropdownの変更を通知するProviderを作る
    DropdownButtonPageController, DropdownButtonPageState>((ref) {
  return DropdownButtonPageController();
});

class DropdownButtonPageController
    extends StateNotifier<DropdownButtonPageState> {
  DropdownButtonPageController() : super(const DropdownButtonPageState());

  void selectedValue(String selectValue) {//この関数を呼んで状態を更新する
    state = state.copyWith(selectValue: selectValue);
  }
}