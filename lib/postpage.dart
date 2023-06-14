import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class postpage extends StatefulWidget {
  const postpage({Key? key}) : super(key: key);

  @override
  State<postpage> createState() => _postpageState();
}

class _postpageState extends State<postpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                Text("Post",style: TextStyle(fontSize: 20)),
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

        ],
      ),
    );
  }
}
