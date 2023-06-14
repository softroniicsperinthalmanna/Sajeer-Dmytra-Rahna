import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class onlineclasspage extends StatefulWidget {
  const onlineclasspage({Key? key}) : super(key: key);

  @override
  State<onlineclasspage> createState() => _onlineclasspageState();
}

class _onlineclasspageState extends State<onlineclasspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                Text("Online Class",style: TextStyle(fontSize: 20)),
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
          SizedBox(height: 10),
          Container(
            height: 180,width:280,
            decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage("assets/imgs/online.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(40))
            ),
          ),
      SizedBox(height: 30,),
         Container(
          width:300,
           // color: Colors.black,
           child: Card(elevation: 10,shadowColor: Colors.black,
             child: ListTile(
               leading: Image(image:AssetImage("assets/imgs/notifi.jpg") ,),
               title: Text('Notification',style: TextStyle(fontWeight: FontWeight.bold),),
               subtitle: Text('Awarness Class',style: TextStyle(color: Colors.black),),
               trailing: Icon(CupertinoIcons.arrow_down),
               isThreeLine:true,
             ),
           )
         ),
        ],
      ),
    );
  }
}
