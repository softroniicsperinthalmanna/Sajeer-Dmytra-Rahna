import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class listpage extends StatefulWidget {
  const listpage({Key? key}) : super(key: key);

  @override
  State<listpage> createState() => _listpageState();
}

class _listpageState extends State<listpage> {

  GlobalKey<ScaffoldState>globelkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globelkey,
      drawer: Drawer(width:200 ,backgroundColor: Color(0xffCADCE0),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
              CircleAvatar(foregroundImage: AssetImage('assets/imgs/accpic.jpg'),),
              accountName: Text('Jhon'),
              accountEmail: Text('jhon123@gmail.com'),
            ),
            ListTile(leading: Image(image: AssetImage('assets/imgs/dnticn.jpg')),title:Text('Donate')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/adpsticn.jpg')),title:Text('Add Post')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/shpngicn.jpg')),title:Text('Shopping')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/onlinclsicn.jpg')),title:Text('Online Class')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/prflicn.jpg')),title:Text('Profile')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/abuticn.jpg')),title:Text('About us')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/stngsicn.jpg')),title:Text('Settings')),
            ListTile(leading: Image(image: AssetImage('assets/imgs/lgouticn.jpg')),title:Text('Logout')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.white,height: 50,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    globelkey.currentState?.openDrawer();
                  },
                   icon:Icon(Icons.list)),
                  Padding(
                    padding:  EdgeInsets.only(left:10),
                    child: IconButton(onPressed: (){}, icon:Icon(Icons.search)),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 300,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,index)=>
                            Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15),
                          child: Card (
                            child:Container(
                              decoration:BoxDecoration(
                                color: Colors.grey,
                                image:DecorationImage(
                                  image:AssetImage('assets/imgs/disable.jpg'),
                                  fit: BoxFit.fill,
                                ),
                               borderRadius: BorderRadius.all(Radius.circular(50.0),),
                              ),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:100),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          color: Colors.white54,
                                          width:260,height: 100,
                                          child: Padding(
                                            padding:  EdgeInsets.only(left:100),
                                            child: Text('Text',style: TextStyle(fontSize: 18,color: Colors.black,decoration: TextDecoration.underline ),),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

            ),

          ],
        ),
      ),
    );
  }
}
