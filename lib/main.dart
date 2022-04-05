import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),));
}


class MyApp extends StatelessWidget {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  ValueNotifier<int> sum = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {
            int n1 = int.parse(t1.text);
            int n2 = int.parse(t2.text);
            sum.value = n1 + n2;
          }, child: Text("Sum")),
          
          ValueListenableBuilder(valueListenable: sum, builder: (context, value, child) {
            return Text("Sum = $value");
          },)
        ],
      ),
    );
  }
}
