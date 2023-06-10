import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecFav extends StatefulWidget {
  const RecFav({Key? key}) : super(key: key);

  @override
  _RecFavState createState() => _RecFavState();
}

class _RecFavState extends State<RecFav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white,),
                ),
                Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.grey,
                    ),
                    child: Icon(FontAwesomeIcons.heart, size: 20, color: Colors.white)
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Recent favourites', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 20),
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16
                ),
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    // color: Colors.white54,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 13,
                          child: Container(
                            height: 120,
                            width: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://images5.alphacoders.com/432/432885.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120),
                          child: ListTile(
                            title: Text('Bright Hits', style: TextStyle(color: Colors.white),),
                            subtitle: Text('Always there', style: TextStyle(color: Colors.grey[400], fontSize: 10),),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          )
        ],
      ),
    );
  }
}
