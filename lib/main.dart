import 'package:flutter/material.dart';
import 'package:my_souq/componnents/declarations.dart';
import 'App/Screens/homepage.dart';


main() {

  runApp (const MySouq());
}

class MySouq extends StatelessWidget {
  const MySouq({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: declarations.backgroundColor,
        colorScheme: ColorScheme.light(
          primary: declarations.secondaryColor
        ),
       appBarTheme:AppBarTheme(
         elevation: 0,
         iconTheme: IconThemeData(
           color: Colors.black
         )
       )
      ),
      routes: {
        "homepage" :(_)=> homepage(),
      },
      initialRoute:"homepage",
    );
  }
}