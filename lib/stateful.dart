import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hooks.dart';

class TestStateful extends StatefulWidget {
  const TestStateful({Key? key}) : super(key: key);

  @override
  State<TestStateful> createState() => _TestStateful();
}

class _TestStateful extends State<TestStateful> {
  //2
  final _items = ['abc', '123',];//アイテム一覧
  var selectValue = 'abc';//初期アイテム

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stateFulWidgetのDropdownButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 50,
              child: DropdownButton(
                  isExpanded: true,
                  value: selectValue,
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
                    setState(() {
                      selectValue = value!;
                    });
                    print(selectValue);
                  }),
            ),
            Text(selectValue),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestHooks()),
              );
            }, child: const Text('HooksのDropDownへ'))
          ],
        ),
      ),
    );
  }
}