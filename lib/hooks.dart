import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hookstestproject/riverpod.dart';

class TestHooks extends StatelessWidget {
  final _items = ['abc', '123',];//アイテム一覧

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter_HooksのDropdownButton'),
      ),
      body: HookBuilder(//
        builder: (context) {
          final dropDownValue = useState('abc');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: DropdownButton(
                      isExpanded: true,
                      value: dropDownValue.value,
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
                        dropDownValue.value = value!;//選択したDropDownMenuItemのvalueに書き換える
                        print(dropDownValue.value);
                      }),
                ),
                Text(dropDownValue.value),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestRiverpod()),
                  );
                }, child: const Text('riverpodのDropDownへ'),)
                  ],
            ),
          );
        }
      ),
    );
  }
}