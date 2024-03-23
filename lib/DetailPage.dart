import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timothearuth_quiz/game_store.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(gameList[index].name),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(gameList[index].imageUrls[0]),
            Image.network(gameList[index].imageUrls[1]),
            Image.network(gameList[index].imageUrls[2]),
            _cartbutton(context),
            Text(gameList[index].name),
            Text(gameList[index].about),
            // Text(gameList[index].tags as String),
            Text(gameList[index].releaseDate),
            Text(gameList[index].reviewAverage),
            _storebutton(context)
          ],
        ),
        ),
      ),
    ));
  }

  Widget _storebutton(context){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue
        ),
          onPressed: (){
            Text(gameList[index].linkStore);
          },
          child: Text("Store", style: TextStyle(color: Colors.white),)
      ),
    );
  }
}

Widget _cartbutton(context){
  return Container(
    child: ElevatedButton(
        onPressed: (){},
        child: Icon(Icons.shopping_cart, color: Colors.red)
    )
  );
}
