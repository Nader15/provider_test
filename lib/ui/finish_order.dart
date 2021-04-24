import 'package:flutter/material.dart';

class FinishOrder extends StatefulWidget {
  @override
  _FinishOrderState createState() => _FinishOrderState();
}

class _FinishOrderState extends State<FinishOrder> {


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Order"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.indigoAccent
              ),
              child: Text("Personal Details",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                focusColor: Colors.red,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                ),
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                prefixIcon: Icon(Icons.person,color: Colors.indigo,),
                hintText: "Name",
                hintStyle: TextStyle(fontSize: 15,color: Colors.indigoAccent.withOpacity(0.6)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                focusColor: Colors.red,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                ),
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                prefixIcon: Icon(Icons.phone,color: Colors.indigo,),
                hintText: "Phone",
                hintStyle: TextStyle(fontSize: 15,color: Colors.indigoAccent.withOpacity(0.6)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                focusColor: Colors.red,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                ),
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                prefixIcon: Icon(Icons.home_work_outlined,color: Colors.indigo,),
                hintText: "Address",
                hintStyle: TextStyle(fontSize: 15,color: Colors.indigoAccent.withOpacity(0.6)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigoAccent
              ),
              child: Text("Payment Methods",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                new Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                Text("Cash",style: TextStyle(color: Colors.indigo),)
              ],
            ),
            Row(
              children: [
                new Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                Text("Credit Card",style: TextStyle(color: Colors.indigo),)
              ],
            ),

          ],
        ),
      ),
    );
  }
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
}
