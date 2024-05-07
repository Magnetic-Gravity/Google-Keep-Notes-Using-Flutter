import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_keep_notes/SideMenuBar.dart';
import 'package:google_keep_notes/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  String note = "THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS "
      "A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A "
      "NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE"
      "THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE THIS IS A NOTE ";
  String note1 = "THIS IS MY NOTE1 THIS IS MY NOTE1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: _drawerKey,
      drawer: SideMenu(),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.3),spreadRadius: 1,blurRadius: 3
                    )],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                _drawerKey.currentState!.openDrawer();
                              },icon: Icon(Icons.menu,color: white,)
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 55,
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Search Your Notes",style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white.withOpacity(0.5),
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                                child: TextButton(
                                    style: ButtonStyle(
                                        overlayColor: MaterialStateColor.resolveWith(
                                                (states) => white.withOpacity(0.2)
                                        ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:BorderRadius.circular(50.0),
                                            )
                                        ),
                                    ),
                                    onPressed: (){
                                      print("HELLO");
                                    }, child: Icon(Icons.grid_view,color: white,),
                                ),
                            ),
                            SizedBox(width: 8,),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
        
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  child: Column(
                    children: [
                      Text("All",
                        style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(

                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: SingleChildScrollView(
                    child: AlignedGridView.count(
                      shrinkWrap: true,
                      itemCount: 10,
                      crossAxisCount: 2,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: white.withOpacity(0.6)),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("HEADING",
                              style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 23),
                            ),
                            SizedBox(height: 10,),
                            Text(index.isEven ? note : note1 ,
                              style: TextStyle(color: white,fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}