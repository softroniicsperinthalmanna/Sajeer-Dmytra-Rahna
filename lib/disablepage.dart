import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class disablepage extends StatefulWidget {
  const disablepage({Key? key}) : super(key: key);
  @override
  State<disablepage> createState() => _disablepageState();
}
class _disablepageState extends State<disablepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff38818B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.white,height: 50,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                  Text("Disable",style: TextStyle(fontSize: 20)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 20),
              child: SizedBox(
                width: 280,height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Color(0xfffdf3e3),
                      hintText:'Search....',
                      suffixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 130,width:280,
              decoration:BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage("assets/imgs/disable.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60))
              ),
            ),
            SizedBox(height: 20),
            Container(
              height:300,
              width: 175,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: [
                  Card(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                           height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Donate',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Shopping',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Online Class',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Entertainment',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Organaization',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/dpic.jpg'),
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Add Post',style: TextStyle(fontSize:12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // color: Colors.black,
              // child:
              // GridView.builder(
              //    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              //   itemCount: 4,
              //     itemBuilder: (context,int index) {
              //       Container(
              //         child:
              //         Card(
              //           margin: EdgeInsets.all(1),
              //           shadowColor: Colors.blueGrey,
              //           elevation: 40,
              //           child: Column(
              //             children: [
              //               Container(
              //                 height: 120,
              //                 // width: double.infinity,
              //                 decoration: BoxDecoration(
              //                   color: Colors.black,
              //                   image: DecorationImage(
              //                     image: AssetImage('assets/imgs/disable.jpg'),
              //                     fit: BoxFit.fill,
              //                   ),
              //                 ),
              //               ),
              //               Column(
              //                 children: [
              //                   Text('head'),
              //                   Text('sub'),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     }
              // ),

            ),
          ],
        ),
      ),
    );
  }
}
