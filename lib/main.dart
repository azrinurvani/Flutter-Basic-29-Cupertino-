import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

/*
cupertino adalah standart tampilan pada IOS
material UI adalah standart tampilan pada Android
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Platform.isAndroid
                  ? showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(199),
                      lastDate: DateTime(2050),
                    )
                  : showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          color: Colors.white,
                          child: CupertinoDatePicker(
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (dateTime) {
                              print(dateTime);
                            },
                          ),
                        );
                      },
                    );
            },
            child: Text("Show Date Picker")),
      ),
    );
  }
}



//show alert dialog ios and android
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cupertino"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (context) {
//                   return Platform.isIOS
//                       ? CupertinoAlertDialog(
//                           title: Text("Delete Item"),
//                           content: Text("Are you sure to delete this item ?"),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text("No"),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text("Yes"),
//                             ),
//                           ],
//                         )
//                       : AlertDialog(
//                           title: Text("Delete Item"),
//                           content: Text("Are you sure to delete this item ?"),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text("No"),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text("Yes"),
//                             ),
//                           ],
//                         );
//                 });
//           },
//           child: Text("Alert Dialog"),
//         ),
//       ),
//     );
//   }
// }
