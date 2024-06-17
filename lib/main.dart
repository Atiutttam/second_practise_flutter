import 'package:flutter/material.dart';

import '11march_class/11march_splash_screen.dart';
import '13march_class/13march_product_list.dart';
import '18march_shared_pref/home_page_sf.dart';

// import 'package:second_practise/utils.dart';
//
// import '01march_listviewbuilder.dart';
// import '11march_splash_screen.dart';
//
// import 'second_page.dart';
// import 'list_tile.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePageSf (),
    );
  }
}


