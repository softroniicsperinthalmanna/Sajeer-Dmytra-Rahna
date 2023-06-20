import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class paymentmethod extends StatefulWidget {
  const paymentmethod({super.key});

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                Text("Payment Methods",style: TextStyle(fontSize: 20)),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              ],
            ),
          ),
          Stack(
            children:[
              Container(
                height: 100,width: double.infinity,
                decoration:
                BoxDecoration(color: Colors.cyan,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:105,top:15),
                  child: Text('Select Payment Method',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(top:48.0),
                    child: Container(
                      height: 400,width: double.infinity,
                      decoration:
                      BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                 child:
                  ListView(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top:10,left:25,right:25),
                        child:
                        Column(
                          children: [
                            Container(
                              height: 90,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                color: Color(0xffDCE1E4),
                                child:
                                  Row(
                                    children: [
                                      Image(image:AssetImage("assets/imgs/gpay.jpg")),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15,left:15),
                                        child: Column(
                                          children: [
                                            Text('*********************',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                            InkWell(
                                              onTap: () {},
                                              child: Text('jhon123@gmail.com', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Container(height: 90,
                              child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                  color: Color(0xffDCE1E4),
                                  child:
                                  Row(
                                    children: [
                                      Image(image:AssetImage("assets/imgs/pytm.jpg")),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15,left:15),
                                        child: Column(
                                          children: [
                                            Text('*********************',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                            InkWell(
                                              onTap: () {},
                                              child: Text('jhon123@gmail.com', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Container(height: 90,
                              child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                  color: Color(0xffDCE1E4),
                                  child:
                                  Row(
                                    children: [
                                      Image(image:AssetImage("assets/imgs/visa.jpg")),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15,left:15),
                                        child: Column(
                                          children: [
                                            Text('*********************',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                            // InkWell(
                                            //   onTap: () {},
                                            //   child: Text('jhon123@gmail.com', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                                            //   ),
                                            // )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Container(height: 90,
                              child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                   color: Color(0xffDCE1E4),
                                  child:
                                  Row(
                                    children: [
                                      Image(image:AssetImage("assets/imgs/phonepay.jpg")),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15,left:15),
                                        child: Column(
                                          children: [
                                            Text('*********************',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                            // InkWell(
                                            //   onTap: () {},
                                            //   child: Text('jhon123@gmail.com', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                                            //   ),
                                            // )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                  ),
                  ),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(top:25),
          child: Container(height: 50,width: 300,
            color:Color(0xff3A9AAE),
            child: ElevatedButton(
                onPressed: (){},
                child: Text('ADD PAYMENT METHOD',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)),
          ),
        )
        ],
      ),
    );
  }
}
