import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourites",
          style: TextStyle(decorationStyle: TextDecorationStyle.wavy),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 5,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 60,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ))),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Product Name",
                        style: TextStyle(fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "100 LE",
                            style: TextStyle(fontSize: 10, height: 2),
                          ),
                          Text(
                            "120 LE",
                            style: TextStyle(
                              fontSize: 10,
                              height: 2,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              );
            },
          )),
    );
  }
}
