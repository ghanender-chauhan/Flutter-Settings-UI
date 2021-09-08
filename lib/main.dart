import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = ThemeData.dark();
    final darkButtonTheme =
    
    dark.buttonTheme.copyWith(buttonColor: Colors.grey[700]);
    
    final darkFABTheme = dark.floatingActionButtonTheme;
    final themeCollection = ThemeCollection(
      themes: {
    
    AppThemes.LightBlue: ThemeData(primarySwatch: Colors.blue),
   
    AppThemes.LightRed: ThemeData(primarySwatch: Colors.red),
   
    AppThemes.DarkBlue: 
    dark.copyWith(
          accentColor: Colors.blue,
          buttonTheme: darkButtonTheme,
          
          floatingActionButtonTheme:
              darkFABTheme.copyWith(
                backgroundColor: Colors.blue)),
    
    AppThemes.DarkRed: ThemeData.from(
          colorScheme:
              ColorScheme.dark(primary: Colors.red, secondary: Colors.red)),
    });
    
    return DynamicTheme(
        themeCollection: themeCollection,
        defaultThemeId: AppThemes.LightBlue,
        builder: (context, theme) {
          return MaterialApp(
            title: 'dynamic_themes example',
            theme: theme,
            home: HomePage(title: 'Settings'),
          );
        });
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dropdownValue = 0;
  var primaryColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    dropdownValue = DynamicTheme.of(context)!.themeId;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(children: [
          Container(
              height: 100.0,
              
              color: Colors.white,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color:Colors.white,
                    child: ElevatedButton(
                      onPressed: (){
                        
                        setState(() {
                          primaryColor = Colors.red;
                           
                        });
                      }, 
                      child: Text("R",
                      textAlign: TextAlign.justify,),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      textStyle: TextStyle(
                      fontWeight: FontWeight.bold)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 10.0),
                      width: 45.0,),

                      Container(
                    color:Colors.white,
                    child: ElevatedButton(
                      onPressed: (){
                        
                        setState(() {
                          primaryColor = Colors.pink;
                           
                        });
                      }, 
                      child: Text("P",
                      textAlign: TextAlign.justify,),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      textStyle: TextStyle(
                      fontWeight: FontWeight.bold)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 10.0),
                      width: 45.0,),


                      Container(
                    color:Colors.white,
                    child: ElevatedButton(
                      onPressed: (){
                        
                        setState(() {
                          primaryColor = Colors.brown;
                           
                        });
                      }, 
                      child: Text("B",
                      textAlign: TextAlign.justify,),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      textStyle: TextStyle(
                      fontWeight: FontWeight.bold)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 10.0),
                      width: 45.0,),


                      Container(
                    color:Colors.white,
                    child: ElevatedButton(
                      onPressed: (){
                        
                        setState(() {
                          primaryColor = Colors.teal;
                           
                        });
                      }, 
                      child: Text("T",
                      textAlign: TextAlign.justify,),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      textStyle: TextStyle(
                      fontWeight: FontWeight.bold)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 10.0),
                      width: 45.0,),



                      Container(
                    color:Colors.white,
                    child: ElevatedButton(
                      onPressed: (){
                        
                        setState(() {
                          primaryColor = Colors.grey;
                           
                        });
                      }, 
                      child: Text("G",
                      textAlign: TextAlign.justify,),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      textStyle: TextStyle(
                      fontWeight: FontWeight.bold)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 10.0),
                      width: 45.0,),
                ],
              ),
              ),

              Container(
                child: Row(
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
        ]
        )
        )
        );
  }
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
         
class AppThemes {
  static const int LightBlue = 0;
  static const int LightRed = 1;
  static const int DarkBlue = 2;
  static const int DarkRed = 3;


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





         
         
     



                      
                      
                
              
                      
                  
                 
                 



