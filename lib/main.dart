import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mylapp/pages/card_detail_page.dart';
import 'package:mylapp/pages/cards_page.dart';
import 'package:mylapp/pages/information_page.dart';
import 'package:mylapp/pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mylapp/preferences/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  UserPreferences prefs = UserPreferences();
  await prefs.initPrefs();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyL App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      theme: ThemeData(
          backgroundColor: const Color.fromRGBO(106, 137, 118, 1),
          appBarTheme: const AppBarTheme(color: Colors.black12),
          primaryColor: const Color.fromRGBO(41, 60, 67, 1),
          cardColor: const Color.fromRGBO(0, 0, 0, 0.12),
          secondaryHeaderColor: const Color.fromRGBO(221, 164, 133, 1)),
      routes: {
        'main': (BuildContext context) => const MainPage(),
        'cards': (BuildContext context) =>
            const CardsPage(editionId: '', title: '', total: 0),
        'card': (BuildContext context) => CardDetailPage(card: null),
        'info': (BuildContext context) => const Information(),
      },
    );
  }
}
