import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';
import 'suits.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.grey,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
  addSuitsP1();
  deckListShuffleP1();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown),
      ),
      home: const MyHomePage(title: 'Card Game'),
      debugShowCheckedModeBanner: false,
      color: Colors.brown,
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}