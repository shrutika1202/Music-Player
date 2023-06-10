import 'package:flutter/material.dart';
import 'package:my_music/home.dart';
import 'package:my_music/recentFavourites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var pages = [Home(), RecFav()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: pages[index],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            height: 75,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(24))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    child: Icon(Icons.home_outlined, color: index==0 ? Colors.white : Colors.grey[400], size: 30,),
                  onTap: (){
                      setState(() {
                        index = 0;
                      });
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.search, color: index==1 ? Colors.white : Colors.grey[400], size: 30,),
                  onTap: (){
                    setState(() {
                      index = 1;
                    });
                  },
                ),
                Icon(Icons.music_note, color: index==2 ? Colors.white : Colors.grey[400], size: 30,),
                Icon(Icons.person_outline, color: index==3 ? Colors.white : Colors.grey[400], size: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
