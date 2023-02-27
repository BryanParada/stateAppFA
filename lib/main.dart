import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/pages/page1_page.dart';
import 'package:state_app/pages/page2_page.dart';
import 'package:state_app/services/user_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UserService(),) //lazy: false, 
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'page1',
        routes: {
          'page1': (_) => Page1Page(),
          'page2': (_) => Page2Page(),
        }
      ),
    );
     
  }
}