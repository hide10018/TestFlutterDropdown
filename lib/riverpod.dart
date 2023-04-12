import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hookstestproject/riverpod_controller.dart';
import 'package:hookstestproject/stateful.dart';

class TestRiverpod extends StatelessWidget {
  final _items = [
    'abc',
    '123',
  ]; //アイテム一覧

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RiverpodのDropdownButton'),
        ),
        body: Center(
          child: Consumer(//再描画したい部分のみをConsumerで囲む
              builder: (context, ref, _) {
            //controllerで作ったimmutableなクラスのselectedValueプロパティの変更を監視する
            final selectedValue = ref.watch(dropdownButtonPageProvider
                .select((state) => state.selectValue));
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 150,
                    height: 50,
                    child: DropdownButton(
                        isExpanded: true,
                        value: selectedValue,
                        items: _items.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ));
                        }).toList(),
                        onChanged: (String? value) {
                          //関数を実行してDropDownMenuItemのvalueに書き換える
                          ref
                              .read(dropdownButtonPageProvider.notifier)
                              .selectedValue(value!);
                          print(selectedValue);
                        })),
                Text(selectedValue),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestStateful()),
                    );
                  },
                  child: const Text('StateFulWidgetのDropDownへ'),
                )
              ],
            );
          }),
        ));
  }
}
