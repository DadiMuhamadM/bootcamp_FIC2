import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_form/dialog_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/aspectRatio_Widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/center_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/column_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/expanded_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/gridview_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/listview_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/padding_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/row_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/sizebox_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_layout/wrap_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_widget/button_widget.dart';
import 'package:fic2_flutter_basic/Tugas/ch4topic2/basic_widget/image_widget.dart';
import 'package:flutter/material.dart';

import 'Tugas/ch4topic1/stateless_statefull_widged.dart';
import 'Tugas/ch4topic2/basic_layout/stack_widget.dart';
import 'Tugas/ch4topic2/basic_widget/circle_avatar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ImageWidget(),
    );
  }
}
