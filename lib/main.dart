import 'package:book_station/view/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green

      ),
      home:const Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appheight=MediaQuery.of(context).size.height;
    var appwidth=MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize:Size(appwidth,appheight),
        builder: (context,child){
          return Material(
            child: child,
          );

        },
        child: Mainpages(),
    );
  }
}


