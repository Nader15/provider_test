import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Category"),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              child: Container(
                  width: screenWidth,
                  height: screenHeight / 3,
                  child: GridView.builder(
                    itemCount: 12,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.2,
                      // mainAxisSpacing: .5,
                      // crossAxisSpacing: 1,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         CircleAvatar(),
                          Text("Pasta")
                        ],
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
