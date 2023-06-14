import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class shoppingpage extends StatefulWidget {
  const shoppingpage({Key? key}) : super(key: key);

  @override
  State<shoppingpage> createState() => _shoppingpageState();
}

class _shoppingpageState extends State<shoppingpage>  with TickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync:this );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                Text("Shopping",style: TextStyle(fontSize: 20)),
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
          TabBar(
            tabs: [
              Tab(
                child: Text('Childrens',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                //text: 'Buds School',
              ),

              Padding(
                padding: const EdgeInsets.only(left:80),
                child: Tab(
                  child: Text('Buds School',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                ),
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable:true ,
          ),
          Expanded(
            child:
            TabBarView(controller:_tabController ,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:30),
                            child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,backgroundColor: Colors.white,
                                    backgroundImage: AssetImage("assets/imgs/allicn.jpg"),
                                  ),
                                  Text("All")
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:60),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28,backgroundColor: Colors.white,
                                  backgroundImage: AssetImage("assets/imgs/craft.jpg"),
                                ),
                                Text("Crafting")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:70),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28,backgroundColor: Colors.white,
                                  backgroundImage: AssetImage("assets/imgs/painting.jpg"),
                                ),
                                Text("Painting")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                  // ListView.builder(
                  //   itemCount: 2,
                  //   scrollDirection: Axis.horizontal,
                  //   itemBuilder: (context,index)=>
                  //        Container(height: 150,
                  //          child: Card (
                  //               child: Row(
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.only(left:18.0),
                  //                     child: Column(
                  //                       children: [
                  //                         CircleAvatar(
                  //                           radius: 36,backgroundColor: Colors.white,
                  //                           backgroundImage: AssetImage("assets/imgs/accpic.jpg"),
                  //                         ),
                  //                         Text("Phoebe")
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //           ),
                  //        ),
                  // ),
                ]),
          )
        ],
      ),
    );
  }
}
