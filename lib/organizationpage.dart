import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orgModel.dart';

class organization extends StatefulWidget {
  const organization({Key? key}) : super(key: key);
  @override
  State<organization> createState() => _organizationState();
}
class _organizationState extends State<organization> with TickerProviderStateMixin{
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
                Text("Organization",style: TextStyle(fontSize: 20)),
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
            unselectedLabelColor: Colors.black,
            labelColor: Colors.red,
            tabs: [
              Tab(
                child: Text('Buds School',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                //text: 'Buds School',
              ),

              Padding(
                padding: const EdgeInsets.only(left:80),
                child: Tab(
                  child: Text('Orphanage',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
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
                  ListView.builder(
                    itemCount: budsschool.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index)=>
                        Container( margin: EdgeInsets.all(12),
                          child: Card (
                            child: Container(
                              height: 100,
                              child: Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 85),
                                    child: Text(budsschool[index]['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    children: [
                                      SizedBox(width: 15,),
                                      TextButton(onPressed:(){}, child: Text(budsschool[index]['bt1'])),
                                      SizedBox(width: 10,),
                                      TextButton(onPressed:(){}, child: Text(budsschool[index]['bt2'])),
                                      SizedBox(width: 10,),
                                      TextButton(onPressed:(){}, child: Text(budsschool[index]['bt3'])),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  ),
                  ListView.builder(
                    itemCount: orhanage.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index)=>
                        Container( margin: EdgeInsets.all(12),
                          child: Card (
                            child: Container(
                              height: 100,
                              child: Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 85),
                                    child: Text(orhanage[index]['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    children: [
                                      SizedBox(width: 15,),
                                      TextButton(onPressed:(){}, child: Text(orhanage[index]['bt1'])),
                                      SizedBox(width: 10,),
                                      TextButton(onPressed:(){}, child: Text(orhanage[index]['bt2'])),
                                      SizedBox(width: 10,),
                                      TextButton(onPressed:(){}, child: Text(orhanage[index]['bt3'])),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  ),

            ]),
          )
        ],
      ),
    );
  }
}
