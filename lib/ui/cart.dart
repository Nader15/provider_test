import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("cart"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  // height: screenHeight / 2,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics:  NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            width: screenWidth,
                            // height: screenHeight / 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Container(
                                    // height: 100,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  title: Text("Product Name"),
                                  subtitle: Text("Pasta"),
                                  trailing: Text(
                                    "200 LE",
                                    style: TextStyle(
                                      color: Colors.indigoAccent,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey.shade400,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.indigoAccent,
                                    ),
                                  ),
                                  title: Text("Remove",style: TextStyle(color: Colors.indigoAccent,fontSize: 13),),
                                  trailing: Container(
                                    width: screenWidth / 3.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            icon: Icon(
                                              Icons.remove_circle,
                                              color: Colors.indigoAccent,
                                            ),
                                            onPressed: () {}),
                                        Text("1"),
                                        IconButton(
                                            icon: Icon(
                                              Icons.remove_circle,
                                              color: Colors.indigoAccent,
                                            ),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
              SizedBox(height: 50,),
              Card(
                elevation: 10,
                child: Container(
                  height: screenHeight / 3,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text("Cost Order"),
                        trailing: Text("200 LE"),
                      ),
                      ListTile(
                        leading: Text("Cost Delivery"),
                        trailing: Text("20 LE"),
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      ListTile(
                        leading: Text("Final Total"),
                        trailing: Text("220 LE"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: RaisedButton(
                          color: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: screenWidth,
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
