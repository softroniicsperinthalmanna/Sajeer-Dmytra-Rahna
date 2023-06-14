import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class entertainment extends StatefulWidget {
  const entertainment({Key? key}) : super(key: key);
  @override
  State<entertainment> createState() => _entertainmentState();
}
class _entertainmentState extends State<entertainment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                Text("Entertainment",style: TextStyle(fontSize: 20)),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: SizedBox(
              width: 270,height: 40,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Color(0xfffdf3e3),
                    hintText:'Search here',
                    prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
              width:300,
              // color: Colors.black,
              child:Card(elevation: 10,shadowColor: Colors.black,
                child:ListTile(
                  leading: Image(image:AssetImage("assets/imgs/yoga.jpg") ,),
                  title: Text('Yoga meditation at morning',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Awarness Class',style: TextStyle(color: Colors.black),),

                  isThreeLine: true,
                ),
              )
          ),
          SizedBox(height: 30,),
          Container(
              width:300,height: 80,
              // color: Colors.black,
              child:Card(elevation: 10,shadowColor: Colors.black,
                child:ListTile(
                  leading: Image(image:AssetImage("assets/imgs/enter1.jpg") ,),
                  title: Text('Skill improving pogram',style: TextStyle(fontWeight: FontWeight.bold),),
                  // subtitle: Text('Awarness Class',style: TextStyle(color: Colors.black),),
                  // isThreeLine: true,
                ),
              )
          ),
        ],
      ),
    );
  }
}
