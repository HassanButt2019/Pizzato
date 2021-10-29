import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizzato/view/homeScreen/components/headers.dart';
import 'package:pizzato/view/homeScreen/components/middle_components.dart';
import 'package:pizzato/view/splashScreen/splash_view.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: Headers()),
       ChangeNotifierProvider.value(value: MiddleComponents()),
    ] ,
    child: MaterialApp(
      title: 'Pizza Lo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
        primaryColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const SplashView() ,
    ),
    
    );
  }
}

