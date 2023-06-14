import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class donatecloths extends StatefulWidget {
  const donatecloths({Key? key}) : super(key: key);
  @override
  State<donatecloths> createState() => _donateclothsState();
}
class _donateclothsState extends State<donatecloths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                  Text("Donate Clothe",style: TextStyle(fontSize: 20)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 160,width:312,
              decoration:BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage("assets/imgs/cloth.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60))
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Row(
                children: [
                  Text("Clothes Quantity",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: 395,height: 60,
              child: Padding(
                padding: const EdgeInsets.only(top:10,left:10,right: 35),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    // fillColor: Colors.grey.shade100,
                    hintText:'Clothes Quantity',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Row(
                children: [
                  Text("Provide Contact Detail's",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(width: 370,height: 55,
              child: Padding(
                padding: const EdgeInsets.only(top:10,right: 30),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                    // fillColor: Colors.grey.shade100,
                    hintText:'Contact Name',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(width: 370,height: 55,
              child: Padding(
                padding: const EdgeInsets.only(top:10,right: 30),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(35),),
                    // fillColor: Colors.cyan,
                    hintText:'Contact Number',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(width: 370,height: 55,
              child: Padding(
                padding: const EdgeInsets.only(top:10,right: 30),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(35),),
                    // fillColor: Colors.grey.shade100,
                    //Color(0xFF347E95)
                    hintText:'Address',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: 200,
              height: 37,
              child:  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff399D85),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)
                  ),
                ),
                onPressed: () { },
                child: Text('Send Request',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
