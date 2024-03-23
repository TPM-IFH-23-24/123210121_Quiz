import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timothearuth_quiz/DetailPage.dart';
import 'package:timothearuth_quiz/game_store.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Homepage")
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index){
            return InkWell(
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(aspectRatio: 4/3,
                    child: Image.network(gameList[index].imageUrls[1], fit: BoxFit.cover
                    ),
                    ),
                    Text(gameList[index].name),
                    Text(gameList[index].price)
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailPage(index: index);
                }));
              },
            );
          })
    ));
  }
}
