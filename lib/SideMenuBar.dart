import 'package:flutter/material.dart';
import 'package:google_keep_notes/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: bgColor,),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25,vertical: 16),
                child: Text("Google Keep",
                  style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),

              Divider(color: white.withOpacity(0.4),),

              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.orangeAccent.withOpacity(0.3)
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                      ),),
                    ),
                  ),
                  onPressed: (){

                  },
                  child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outlined,color: white.withOpacity(0.7),size: 30,),
                      SizedBox(width: 25,),
                      Text("Notes",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                    ],
                  ),
                )
                ),
              ),
              SizedBox(height: 7,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.orangeAccent.withOpacity(0.3)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                        ),),
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(Icons.add_alert,color: white.withOpacity(0.7),size: 30,),
                          SizedBox(width: 25,),
                          Text("Reminders",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 7,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.orangeAccent.withOpacity(0.3)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                        ),),
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(Icons.label,color: white.withOpacity(0.7),size: 30,),
                          SizedBox(width: 25,),
                          Text("Edit labels",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 7,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.orangeAccent.withOpacity(0.3)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                        ),),
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(Icons.archive_outlined,color: white.withOpacity(0.7),size: 30,),
                          SizedBox(width: 25,),
                          Text("Archive",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 7,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.orangeAccent.withOpacity(0.3)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                        ),),
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(Icons.delete_outline,color: white.withOpacity(0.7),size: 30,),
                          SizedBox(width: 25,),
                          Text("Trash",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 7,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.orangeAccent.withOpacity(0.3)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),bottomRight: Radius.circular(50)
                        ),),
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(Icons.settings,color: white.withOpacity(0.7),size: 30,),
                          SizedBox(width: 25,),
                          Text("Settings",style: TextStyle(color: white.withOpacity(0.7),fontSize: 25,),),
                        ],
                      ),
                    )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
