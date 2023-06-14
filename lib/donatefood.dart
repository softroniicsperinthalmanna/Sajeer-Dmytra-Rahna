import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class donatefood extends StatefulWidget {
  const donatefood({Key? key}) : super(key: key);

  @override
  State<donatefood> createState() => _donatefoodState();
}
 enum Food { veg,NonVeg }

class _donatefoodState extends State<donatefood> {
  Food? _food = Food.veg;
  DateTime setDate = DateTime.now();
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
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
                  Text("Donate Food",style: TextStyle(fontSize: 20)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,width:312,
              decoration:BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage("assets/imgs/food.jpg"),
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
                  Text("Food Description",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                        Text('Veg',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(width: 35),
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                        Text('Non Veg',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ]
              ),
            ) ,
            // Container(
            //   child: ListTile(
            //     title:  Text('Veg'),
            //     leading: Radio<Food>(
            //       value: Food.veg,
            //       groupValue: _food,
            //       onChanged: (Food? value) {
            //         setState(() {
            //           _food = value;
            //         });
            //       },
            //     ),
            //   ),
            //     ListTile(
            //       title: const Text('Banana'),
            //       leading: Radio<Food>(
            //         value: Food.NonVeg,
            //         groupValue: _food,
            //         onChanged: (Food? value) {
            //           setState(() {
            //             _food = value;
            //           });
            //         },
            //       ),
            //     ),
            //    ),
            SizedBox(width: 395,height: 60,
              child: Padding(
                padding: const EdgeInsets.only(top:10,left:10,right: 35),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:Colors.cyan,width: 1, ),
                  ),
                    hintText:'Driscription Your Donation',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Row(
                children: [
                  Text("Pickup Date",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: 370,height: 55,
              child: Padding(
                padding: const EdgeInsets.only(top:10,right: 30),
                child: TextField(
                  controller: dateinput,
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                    // fillColor: Colors.grey.shade100,
                    suffixIcon: GestureDetector(
                        child: Icon(Icons.calendar_month_outlined,color: Colors.black,size: 30),
                      onTap:  () async{
                        DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101)
                        );
                        if(pickedDate != null ){
                          print(pickedDate);
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate);
                          setState(() {
                            dateinput.text = formattedDate;
                          });
                        }
                      },
                    ),
                    hintText:'Date',
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
            SizedBox(height: 15,),
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
