import 'package:flutter/material.dart';
import 'package:flutter_fb/global_keys.dart';
import 'package:flutter_fb/provider/common.dart';
import 'package:flutter_fb/provider/loader.dart';
import 'package:flutter_fb/routes/index.dart';
import 'package:flutter_fb/screens/home/index.dart';
import 'package:flutter_fb/screens/login.dart';
import 'package:flutter_fb/themes/dark.dart';
import 'package:flutter_fb/themes/light.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? image;

  @override
  void initState() {
    super.initState();
    initLocalStorage();
  }

  void initLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      image = prefs.getString("userProfile");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoaderProvider()),
        ChangeNotifierProvider(create: (_) => CommonProvider()),
      ],
      child: Consumer<CommonProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            title: 'Facebook',
            routes: routes,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: provider.themeMode,
            navigatorKey: GlobalKeys.navigatorKey,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
