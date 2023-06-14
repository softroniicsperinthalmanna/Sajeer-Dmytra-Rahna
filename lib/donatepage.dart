import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class donatepage extends StatefulWidget {
  const donatepage({Key? key}) : super(key: key);

  @override
  State<donatepage> createState() => _donatepageState();
}

class _donatepageState extends State<donatepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
            SizedBox(height: 20),
            Container(
              color:  Color(0xff28565d),
              height: MediaQuery.of(context).size.height,
              width:  MediaQuery.of(context).size.width,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: [
                  Card(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
