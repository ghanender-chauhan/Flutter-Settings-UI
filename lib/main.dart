import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "text",
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
        
          
         

      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text('Settings',
            style: TextStyle(fontSize: 25, 
            fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.person, 
                color: Colors.black),
                SizedBox(width: 15,),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,),
                ),
              ],
            ),
                
                

          Divider(height: 15,
          thickness: 2),
          SizedBox(height: 10,),
          buildAccountOptionRow(context, "Phone Number","Input Phone Number"),
          buildAccountOptionRow(context, "Email Address","Input Email Address"),
          buildAccountOptionRow(context,"Social","Facebook"),
          buildAccountOptionRow(context,"Language","English"),
          
          SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.volume_down_outlined, 
                color: Colors.black),
                SizedBox(width: 15,),
                Text(
                  "Notification",
                  style: TextStyle(fontSize: 18,
                   fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 45,),
                
              ],
            ),
                

          Divider(height: 15,
          thickness: 2),
          SizedBox(height: 10,),

          buildNotificationOptionRow("Group Notification",true),
          buildNotificationOptionRow("Personal Notification",true),
          buildNotificationOptionRow('Mute Notification',false),
            
          SizedBox(height: 50,),
            
          Center(
            child: OutlinedButton(
              
            onPressed: (){},
            
            child: Text("Log Out",
            style: TextStyle(fontSize: 15,
            letterSpacing: 2.2,
            color: Colors.black,
            
            
            ),
          ),
        ),
        )
      ],
            
      ),
      ),  
      
    ),
  );
}
              
                

  Row buildNotificationOptionRow(String title , bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
              style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
              
              

              ),
              ),
              SizedBox(height: 45,),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(value:isActive, 
                onChanged: (bool val){},),
              )
            ],
          );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title, String value) {
    return GestureDetector(
          onTap: (){
            showDialog(
              context: context,
              builder:(BuildContext context){
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Text(value),
                  
                ],
                ),
                actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.black // foreground
                      ),
                      onPressed: () { 
                        Navigator.of(context).pop();
                      },
                      child: Text('Confirm'),
                    )

                ],
              );
            
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
        
              ],
            ),
          ),
        );
  }

}

        
    
                
         


