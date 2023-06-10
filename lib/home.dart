import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        body: Stack(
          children: [
            Positioned(
              top: 70,
              left: 20,
              child: Container(
                height: 60,
                width: 370,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.menu, color: Colors.white70,),
                        ),
                        flex: 1,
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 60,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: Colors.grey,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 6),
                                child: Icon(Icons.search, color: Colors.white54,),
                              ),
                              Text('Search', style: TextStyle(color: Colors.white54,),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
            Positioned(
              top: 160,
              left: 20,
              child: Text(
                  'Trending right now',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 20,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 250,
                      height: 210,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.5Zc3Okto40gCpmxAzT9QuwHaEo&pid=Api&P=0&h=180"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            right: 30,
                            child: Icon(Icons.more_horiz),
                          ),
                          Positioned(
                            bottom: 25,
                            left: 25,
                            child: Container(
                              height: 70,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: Text('The Dark Side', style: TextStyle(fontSize: 13, color: Colors.white),),
                                      subtitle: Row(
                                        children: [
                                          Icon(Icons.music_note, size: 13,color: Colors.white,),
                                          Expanded(child: Text('Muse - Samtoen Theory', style: TextStyle(fontSize: 9, color: Colors.grey[200]),)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(Icons.play_arrow, color: Colors.black87, size: 28,),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
            Positioned(
            top: 380,
            left: 20,
            right: 20,
            child: Container(
              height: 200,
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 20.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), // Creates border
                            color: Colors.blue.withOpacity(0.8)),
                        isScrollable: true,
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.black26,
                        labelColor: Colors.black,
                        labelPadding: EdgeInsets.symmetric(horizontal: 30),
                        tabs: [
                          Tab(child: Text('Trending right now',),),
                          Tab(child: Text('Rock',),),
                          Tab(child: Text('Hip Hop',),),
                          Tab(child: Text('Electro',),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          //   menu horizontal -> quiz app
            Positioned(
              top: 520,
              left: 20,
              child: Container(
                width: width - 50,
                height: height * 0.48 - 50,
                child: TabBarView(
                  children: [
                    Container(
                      height: 300,
                      width: 350,
                      // color: Colors.blueAccent,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/originals/16/c3/76/16c3766892135064af70cf1b077f2dc9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('I\'m Good (Blue)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('David Quetta', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/736x/0a/72/f3/0a72f3efb5939d21bb89fdedad54a31b--album-cover-templates.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Under the Influence', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Chris Brown', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://wallpapercave.com/wp/wp3709081.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Forget Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Lewis Capalch', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 350,
                      // color: Colors.blueAccent,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/originals/16/c3/76/16c3766892135064af70cf1b077f2dc9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('I\'m Good (Blue)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('David Quetta', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/736x/0a/72/f3/0a72f3efb5939d21bb89fdedad54a31b--album-cover-templates.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Under the Influence', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Chris Brown', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://wallpapercave.com/wp/wp3709081.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Forget Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Lewis Capalch', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 350,
                      // color: Colors.blueAccent,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/originals/16/c3/76/16c3766892135064af70cf1b077f2dc9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('I\'m Good (Blue)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('David Quetta', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/736x/0a/72/f3/0a72f3efb5939d21bb89fdedad54a31b--album-cover-templates.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Under the Influence', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Chris Brown', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://wallpapercave.com/wp/wp3709081.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Forget Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Lewis Capalch', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 350,
                      // color: Colors.blueAccent,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/originals/16/c3/76/16c3766892135064af70cf1b077f2dc9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('I\'m Good (Blue)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('David Quetta', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/736x/0a/72/f3/0a72f3efb5939d21bb89fdedad54a31b--album-cover-templates.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Under the Influence', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Chris Brown', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                          ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://wallpapercave.com/wp/wp3709081.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Forget Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person, size: 14,color: Colors.grey[400]),
                                  SizedBox(width: 8,),
                                  Text('Lewis Capalch', style: TextStyle(fontSize: 14, color: Colors.grey[400]),)
                                ],
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.heart, size: 26, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
